package Ankama_Web.ui
{
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.components.Input;
   import com.ankamagames.berilia.components.Label;
   import com.ankamagames.berilia.types.graphic.ButtonContainer;
   import com.ankamagames.berilia.utils.ComponentHookList;
   import com.ankamagames.dofus.logic.game.common.actions.externalGame.ShopOneClickSendCodeRequestAction;
   import com.ankamagames.dofus.logic.game.common.actions.externalGame.ShopOneClickValidateOrderRequestAction;
   import com.ankamagames.dofus.misc.lists.ExternalGameHookList;
   import com.ankamagames.dofus.misc.lists.HookList;
   import com.ankamagames.dofus.uiApi.DataApi;
   import com.ankamagames.dofus.uiApi.SystemApi;
   
   public class ShopPopupOneClickCode
   {
       
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      [Api(name="DataApi")]
      public var dataApi:DataApi;
      
      public var btn_close_ctr_popupWindow:ButtonContainer;
      
      public var btn_valid:ButtonContainer;
      
      public var btn_resend:ButtonContainer;
      
      public var btn_manage:ButtonContainer;
      
      public var lbl_title:Label;
      
      public var lbl_error:Label;
      
      public var lbl_sms:Label;
      
      public var lbl_managePayment:Label;
      
      public var lbl_title_ctr_popupWindow:Label;
      
      public var input_code:Input;
      
      private var _orderId:Number;
      
      private var _params:Object;
      
      public function ShopPopupOneClickCode()
      {
         super();
      }
      
      public function main(params:Object = null) : void
      {
         this.sysApi.addHook(ExternalGameHookList.DofusShopOneInvalidCode,this.onInvalidCode);
         this.sysApi.addHook(ExternalGameHookList.DofusShopBuySuccess,this.onBuySuccess);
         this.uiApi.addComponentHook(this.btn_resend,ComponentHookList.ON_RELEASE);
         this.uiApi.addComponentHook(this.btn_manage,ComponentHookList.ON_RELEASE);
         this.uiApi.addShortcutHook("closeUi",this.onShortcut);
         this.lbl_title_ctr_popupWindow.forceUppercase = true;
         this.lbl_error.visible = false;
         if(params.codeMethod == "MAIL")
         {
            this.lbl_sms.text = this.uiApi.getText("ui.shop.oneClickMail",params.codeMethodValue);
         }
         else
         {
            this.lbl_sms.text = this.uiApi.getText("ui.shop.oneClickSMS",params.codeMethodValue);
         }
         this.lbl_managePayment.fullWidth(0,10);
         this._orderId = params.order_id;
         this._params = params;
      }
      
      public function unload() : void
      {
         this.sysApi.dispatchHook(HookList.ClosePopup);
      }
      
      private function onInvalidCode() : void
      {
         this.lbl_error.text = this.uiApi.getText("ui.shop.oneClickInvalidCode");
         this.lbl_error.cssClass = "redcenter";
      }
      
      private function onBuySuccess(isOneClick:Boolean) : void
      {
         this.uiApi.unloadUi(this.uiApi.me().name);
      }
      
      public function onRelease(target:Object) : void
      {
         switch(target)
         {
            case this.btn_close_ctr_popupWindow:
               this.uiApi.unloadUi(this.uiApi.me().name);
               break;
            case this.btn_valid:
               this.lbl_error.visible = true;
               this.lbl_error.text = this.uiApi.getText("ui.shop.oneClickWaitingValidation");
               this.lbl_error.cssClass = "center";
               this.sysApi.dispatchHook(ExternalGameHookList.DofusShopValidCode,this._params.article.article,false);
               this.sysApi.sendAction(new ShopOneClickValidateOrderRequestAction([this._orderId,this.input_code.text]));
               break;
            case this.btn_resend:
               this.lbl_error.visible = false;
               this.sysApi.sendAction(new ShopOneClickSendCodeRequestAction([this._orderId]));
               break;
            case this.btn_manage:
               this.sysApi.goToUrl(this.sysApi.getConfigEntry("config.shopManagePaymentUrl"));
         }
      }
      
      public function onShortcut(s:String) : Boolean
      {
         if(s == "closeUi")
         {
            this.uiApi.unloadUi(this.uiApi.me().name);
            return true;
         }
         return false;
      }
   }
}
