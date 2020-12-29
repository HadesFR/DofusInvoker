package Ankama_Tutorial.ui
{
   import Ankama_Grimoire.enum.EnumTab;
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.components.Label;
   import com.ankamagames.berilia.types.graphic.ButtonContainer;
   import com.ankamagames.berilia.types.graphic.GraphicContainer;
   import com.ankamagames.berilia.types.graphic.UiRootContainer;
   import com.ankamagames.berilia.utils.ComponentHookList;
   import com.ankamagames.dofus.uiApi.DataApi;
   import com.ankamagames.dofus.uiApi.SystemApi;
   import com.ankamagames.dofus.uiApi.UiTutoApi;
   import com.ankamagames.jerakine.types.enums.DataStoreEnum;
   
   public class Guidebook
   {
       
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      [Api(name="DataApi")]
      public var dataApi:DataApi;
      
      [Api(name="UiTutoApi")]
      public var hintsApi:UiTutoApi;
      
      public var uiCtr:GraphicContainer;
      
      public var btn_close:ButtonContainer;
      
      public var btn_help:ButtonContainer;
      
      public var btn_tabGameGuide:ButtonContainer;
      
      public var btn_tabGameProgress:ButtonContainer;
      
      public var lbl_btn_tabGameProgress:Label;
      
      public var lbl_btn_tabGameGuide:Label;
      
      private var _currentTabUi:String = "";
      
      public function Guidebook()
      {
         super();
      }
      
      public function main(params:Object) : void
      {
         this.uiApi.addComponentHook(this.btn_help,ComponentHookList.ON_RELEASE);
         this.uiApi.addComponentHook(this.btn_tabGameGuide,ComponentHookList.ON_RELEASE);
         this.uiApi.addComponentHook(this.btn_tabGameProgress,ComponentHookList.ON_RELEASE);
         this.uiApi.addShortcutHook("closeUi",this.onShortcut);
         this.lbl_btn_tabGameProgress.text = this.uiApi.getText("ui.guidebook.gameProgress");
         this.lbl_btn_tabGameGuide.text = this.uiApi.getText("ui.guidebook.gameGuide");
         this.btn_tabGameProgress.disabled = true;
         if(params is Array)
         {
            if(params.length == 1)
            {
               this.openTab(params[0],null);
            }
            else
            {
               this.openTab(params[0],params[1]);
            }
         }
      }
      
      public function openTab(tab:String = "", params:Array = null, restoreSnapshot:Boolean = true) : void
      {
         if(this._currentTabUi == tab || tab == EnumTab.GUIDEBOOK_GAME_PROGRESS)
         {
            return;
         }
         if(this._currentTabUi != "")
         {
            this.uiApi.unloadUi("subGuideUi");
         }
         this._currentTabUi = tab;
         this.uiCtr.getUi().restoreSnapshotAfterLoading = restoreSnapshot;
         this.uiApi.loadUiInside(this._currentTabUi,this.uiCtr,"subGuideUi",params) as UiRootContainer;
         this.uiApi.setRadioGroupSelectedItem("tabHGroup",this.getButtonByTab(this._currentTabUi),this.uiApi.me());
         this.getButtonByTab(this._currentTabUi).selected = true;
      }
      
      public function getCurrentTab() : String
      {
         return this._currentTabUi;
      }
      
      public function unload() : void
      {
         this.sysApi.setData("lastGuidebookTab",this._currentTabUi,DataStoreEnum.BIND_ACCOUNT);
         this.closeTab(this._currentTabUi);
      }
      
      private function closeTab(tab:String) : void
      {
         this.uiApi.unloadUi("subGuideUi");
      }
      
      private function closeGuideBook() : void
      {
         this.uiApi.unloadUi(this.uiApi.me().name);
      }
      
      private function getButtonByTab(tab:String) : ButtonContainer
      {
         var returnButton:ButtonContainer = null;
         switch(tab)
         {
            case EnumTab.GUIDEBOOK_GAME_GUIDE:
               returnButton = this.btn_tabGameGuide;
               break;
            case EnumTab.GUIDEBOOK_GAME_PROGRESS:
               returnButton = this.btn_tabGameProgress;
         }
         return returnButton;
      }
      
      public function onRelease(target:Object) : void
      {
         switch(target)
         {
            case this.btn_tabGameGuide:
               this.openTab(EnumTab.GUIDEBOOK_GAME_GUIDE);
               break;
            case this.btn_tabGameProgress:
               break;
            case this.btn_close:
               this.closeGuideBook();
               break;
            case this.btn_help:
               this.hintsApi.showSubHints(this._currentTabUi);
         }
      }
      
      public function onShortcut(s:String) : Boolean
      {
         switch(s)
         {
            case "closeUi":
               this.closeGuideBook();
               return true;
            default:
               return false;
         }
      }
   }
}
