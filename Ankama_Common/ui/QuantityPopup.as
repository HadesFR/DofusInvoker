package Ankama_Common.ui
{
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.components.Input;
   import com.ankamagames.berilia.types.LocationEnum;
   import com.ankamagames.berilia.types.graphic.ButtonContainer;
   import com.ankamagames.berilia.types.graphic.GraphicContainer;
   import com.ankamagames.berilia.utils.BeriliaHookList;
   import com.ankamagames.dofus.kernel.sound.enum.SoundEnum;
   import com.ankamagames.dofus.kernel.sound.enum.SoundTypeEnum;
   import com.ankamagames.dofus.uiApi.SoundApi;
   import com.ankamagames.dofus.uiApi.SystemApi;
   import com.ankamagames.dofus.uiApi.UtilApi;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class QuantityPopup
   {
       
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      [Api(name="SoundApi")]
      public var soundApi:SoundApi;
      
      [Api(name="UtilApi")]
      public var utilApi:UtilApi;
      
      public var btnMin:ButtonContainer;
      
      public var btnMax:ButtonContainer;
      
      public var btnOk:ButtonContainer;
      
      public var inputQty:Input;
      
      private var _defaultValue:Number = 0;
      
      private var _validCallback:Function;
      
      private var _cancelCallback:Function;
      
      private var _max:Number;
      
      private var _min:Number;
      
      private var _lockMin:Boolean = false;
      
      private var _lockValue:Boolean = false;
      
      private var _timer:Timer;
      
      public function QuantityPopup()
      {
         super();
      }
      
      public function main(param:Object) : void
      {
         this._defaultValue = param.defaultValue;
         this._min = param.min;
         this._max = param.max;
         this._validCallback = param.validCallback;
         this._cancelCallback = param.cancelCallback;
         if(param.hasOwnProperty("lockMin"))
         {
            this._lockMin = param.lockMin;
         }
         if(param.hasOwnProperty("lockValue"))
         {
            this._lockValue = param.lockValue;
         }
         if(this._defaultValue > this._max)
         {
            this._defaultValue = this._max;
         }
         this.uiApi.me().visible = false;
         this.uiApi.addComponentHook(this.btnMax,"onRollOver");
         this.uiApi.addComponentHook(this.btnMax,"onRollOut");
         this._timer = new Timer(10,1);
         this._timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onInitialize);
         this._timer.start();
      }
      
      private function onInitialize(e:TimerEvent) : void
      {
         this.uiApi.me().visible = true;
         this._timer.removeEventListener(TimerEvent.TIMER,this.onInitialize);
         this.soundApi.playSound(SoundTypeEnum.OPEN_WINDOW);
         this.btnMin.soundId = SoundEnum.SCROLL_DOWN;
         this.btnMax.soundId = SoundEnum.SCROLL_UP;
         this.btnOk.soundId = SoundEnum.CHECKBOX_CHECKED;
         if(this._defaultValue == 0 && !this._lockValue)
         {
            this.inputQty.text = this.utilApi.kamasToString(1,"");
         }
         else
         {
            this.inputQty.text = this.utilApi.kamasToString(this._defaultValue,"");
         }
         this.inputQty.setSelection(0,this.inputQty.text.length);
         this.inputQty.focus();
         (this.inputQty.textfield as TextField).setSelection(0,(this.inputQty.textfield as TextField).length);
         if(this._max == 0)
         {
            this.btnMax.softDisabled = true;
         }
         this.sysApi.addHook(BeriliaHookList.MouseClick,this.onGenericMouseClick);
         this.sysApi.log(2,"addHook MouseClick");
         this.uiApi.addShortcutHook("validUi",this.onShortcut);
         this.uiApi.addShortcutHook("closeUi",this.onShortcut);
         this.uiApi.addComponentHook(this.inputQty,"onChange");
         this.uiApi.place(null,LocationEnum.POINT_TOPLEFT,LocationEnum.POINT_BOTTOM,2);
      }
      
      public function unload() : void
      {
         this._timer.stop();
         this.soundApi.playSound(SoundTypeEnum.CLOSE_WINDOW);
      }
      
      private function valid() : void
      {
         var value:Number = this.utilApi.stringToKamas(this.inputQty.text,"");
         if(value > this._max && this._max > 0)
         {
            value = this._max;
         }
         if((this._lockMin || value < 0) && value < this._min)
         {
            value = this._min;
         }
         this._validCallback.apply(null,[value]);
         this.uiApi.unloadUi(this.uiApi.me().name);
      }
      
      private function cancel() : void
      {
         if(this._cancelCallback != null)
         {
            this._cancelCallback.apply(null);
         }
         this.uiApi.unloadUi(this.uiApi.me().name);
      }
      
      public function onRelease(target:Object) : void
      {
         var kamasStr:String = null;
         switch(target)
         {
            case this.btnMin:
               this.inputQty.text = this.utilApi.kamasToString(this._min,"");
               break;
            case this.btnMax:
               kamasStr = this.utilApi.kamasToString(this._max,"");
               this.inputQty.text = kamasStr;
               break;
            case this.btnOk:
               this.valid();
         }
      }
      
      public function onRollOver(target:Object) : void
      {
         if(target == this.btnMax && this._max == 0)
         {
            this.uiApi.showTooltip(this.uiApi.textTooltipInfo(this.uiApi.getText("ui.error.contextProblem")),target,false,"standard",7,1,3,null,null,null,"TextInfo");
         }
      }
      
      public function onRollOut(target:Object) : void
      {
         this.uiApi.hideTooltip();
      }
      
      public function onChange(target:Object) : void
      {
         var value:Number = this.utilApi.stringToKamas(this.inputQty.text,"");
         var startValue:Number = value;
         if(value > this._max)
         {
            value = this._max;
         }
         if(this._lockMin && value < this._min)
         {
            value = this._min;
         }
         if(value == 0)
         {
            this.inputQty.text = "0";
         }
         if(value < 0)
         {
            value = 0;
         }
         if(startValue != value)
         {
            this.inputQty.text = this.utilApi.kamasToString(value,"");
         }
      }
      
      private function onGenericMouseClick(target:Object) : void
      {
         var t:Object = target;
         try
         {
            if(!(t is GraphicContainer))
            {
               t = t.parent;
            }
            if(!(t is GraphicContainer) || t.getUi() != this.uiApi.me())
            {
               this.cancel();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function onShortcut(s:String) : Boolean
      {
         switch(s)
         {
            case "closeUi":
               this.cancel();
               return true;
            case "validUi":
               this.valid();
               return true;
            default:
               return false;
         }
      }
   }
}
