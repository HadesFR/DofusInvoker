package Ankama_Web.ui
{
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.components.Label;
   import com.ankamagames.berilia.types.graphic.ButtonContainer;
   import com.ankamagames.berilia.utils.ComponentHookList;
   import com.ankamagames.dofus.misc.lists.ExternalGameHookList;
   import com.ankamagames.dofus.misc.lists.HookList;
   import com.ankamagames.dofus.uiApi.DataApi;
   import com.ankamagames.dofus.uiApi.SystemApi;
   
   public class ShopPopupOneClickRegister
   {
       
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      [Api(name="DataApi")]
      public var dataApi:DataApi;
      
      public var btn_close_ctr_popupWindow:ButtonContainer;
      
      public var btn_webLink:ButtonContainer;
      
      public var lbl_title:Label;
      
      public var btn_lbl_btn_webLink:Label;
      
      private var _params:Object;
      
      public function ShopPopupOneClickRegister()
      {
         super();
      }
      
      public function main(params:Object = null) : void
      {
         this.uiApi.addShortcutHook("closeUi",this.onShortcut);
         this.uiApi.addComponentHook(this.btn_webLink,ComponentHookList.ON_RELEASE);
         this._params = params;
         this.btn_lbl_btn_webLink.width = 185;
      }
      
      public function unload() : void
      {
         this.sysApi.dispatchHook(HookList.ClosePopup);
      }
      
      public function onRelease(target:Object) : void
      {
         switch(target)
         {
            case this.btn_webLink:
               this.sysApi.dispatchHook(ExternalGameHookList.DofusShopWebRedirect,this._params.article.article,false);
               this.sysApi.goToUrl(this.sysApi.getConfigEntry("config.shopArticleUrl") + "?nickname=" + this.sysApi.getNickname() + "&articles[0][article_id]=" + this._params.article.article.id + "&articles[0][quantity]=1");
               this.uiApi.unloadUi(this.uiApi.me().name);
               break;
            case this.btn_close_ctr_popupWindow:
               this.uiApi.unloadUi(this.uiApi.me().name);
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
