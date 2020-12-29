package Ankama_Web.ui
{
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.components.Label;
   import com.ankamagames.berilia.components.Texture;
   import com.ankamagames.berilia.enums.StrataEnum;
   import com.ankamagames.berilia.types.graphic.ButtonContainer;
   import com.ankamagames.dofus.logic.game.common.actions.externalGame.ShopBuyRequestAction;
   import com.ankamagames.dofus.misc.lists.ExternalGameHookList;
   import com.ankamagames.dofus.misc.lists.HookList;
   import com.ankamagames.dofus.types.enums.DofusShopEnum;
   import com.ankamagames.dofus.uiApi.SystemApi;
   
   public class ShopPopupHavenBag
   {
       
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      public var btn_close:ButtonContainer;
      
      public var tx_picture:Texture;
      
      public var lbl_description:Label;
      
      public var btn_lbl_btn_buy:Label;
      
      public var btn_buy:ButtonContainer;
      
      public var lbl_title:Label;
      
      public var btn_buyOneClick:ButtonContainer;
      
      public var btn_getForFree:ButtonContainer;
      
      public var tx_ogrineButton:Texture;
      
      public var btn_lbl_btn_buyOneClick:Label;
      
      private var _params:Object;
      
      public function ShopPopupHavenBag()
      {
         super();
      }
      
      public function main(params:Object = null) : void
      {
         var med:Object = null;
         var i:int = 0;
         var hasOgrinePrice:Boolean = false;
         var hasOneClickPrice:Boolean = false;
         this.uiApi.addShortcutHook("closeUi",this.onShortcut);
         this._params = params;
         this.lbl_title.text = params.article.article.name;
         for each(med in params.article.article.media)
         {
            if(med.param == "GAME")
            {
               this.tx_picture.uri = this.uiApi.createUri(med.url);
            }
         }
         this.lbl_description.htmlText = params.article.article.description;
         if(this._params.article.article.isFree)
         {
            this.btn_getForFree.visible = this._params.article.article.availability != DofusShopEnum.SOON_AVAILABLE;
            this.tx_ogrineButton.visible = false;
            this.btn_buyOneClick.visible = false;
            this.btn_buy.visible = false;
         }
         else if(params.article.article.prices)
         {
            hasOgrinePrice = false;
            hasOneClickPrice = false;
            for(i = 0; i < params.article.article.prices.length; i++)
            {
               if(params.article.article.prices[i].currency == DofusShopEnum.CURRENCY_OGRINES)
               {
                  hasOgrinePrice = true;
                  this.btn_lbl_btn_buy.text = params.article.article.prices[i].price;
               }
               else if(params.article.article.prices[i].paymentmode == DofusShopEnum.PAYMENT_MODE_ONECLICK)
               {
                  hasOneClickPrice = true;
                  if(this.btn_lbl_btn_buyOneClick.text == "" || params.article.article.prices[i].country != "WD")
                  {
                     this.btn_lbl_btn_buyOneClick.text = params.article.article.prices[i].price + " " + params.article.article.prices[i].currency;
                  }
               }
            }
            if(hasOgrinePrice)
            {
               if(!hasOneClickPrice)
               {
                  this.btn_buyOneClick.visible = false;
                  this.btn_buy.x = 0;
               }
            }
            else
            {
               this.btn_buy.visible = false;
               this.tx_ogrineButton.visible = false;
               if(hasOneClickPrice)
               {
                  this.btn_buyOneClick.x = 0;
               }
               else
               {
                  this.btn_buyOneClick.visible = false;
               }
            }
         }
      }
      
      public function unload() : void
      {
         this.sysApi.dispatchHook(HookList.ClosePopup);
      }
      
      public function onRelease(target:Object) : void
      {
         switch(target)
         {
            case this.btn_close:
               this.uiApi.unloadUi(this.uiApi.me().name);
               break;
            case this.btn_buy:
               this.sysApi.dispatchHook(ExternalGameHookList.DofusShopIndirectBuyClick,this._params.article.article,true);
               this.uiApi.loadUi("shopPopupConfirmBuy","shopPopupConfirmBuy",this._params,StrataEnum.STRATA_TOP,null,true);
               this.uiApi.unloadUi(this.uiApi.me().name);
               break;
            case this.btn_buyOneClick:
               this.sysApi.dispatchHook(ExternalGameHookList.DofusShopIndirectBuyClick,this._params.article.article,false);
               if(this._params.tokens.length == 0)
               {
                  this.uiApi.loadUi("shopPopupOneClickRegister","shopPopupOneClickRegister",this._params,StrataEnum.STRATA_TOP,null,true);
               }
               else
               {
                  this.uiApi.loadUi("shopPopupOneClickPayment","shopPopupOneClickPayment",this._params,StrataEnum.STRATA_TOP,null,true);
               }
               this.uiApi.unloadUi(this.uiApi.me().name);
               break;
            case this.btn_getForFree:
               this.sysApi.dispatchHook(ExternalGameHookList.DofusShopCurrentArticle,this._params.article);
               this.sysApi.sendAction(new ShopBuyRequestAction([this._params.article.article.id,1,DofusShopEnum.CURRENCY_OGRINES,0]));
               this.uiApi.unloadUi(this.uiApi.me().name);
         }
      }
      
      private function onShortcut(s:String) : Boolean
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
