package Ankama_TradeCenter
{
   import Ankama_TradeCenter.ui.AuctionHouse;
   import Ankama_TradeCenter.ui.AuctionHouseBuy;
   import Ankama_TradeCenter.ui.AuctionHouseBuyPopup;
   import Ankama_TradeCenter.ui.AuctionHouseModifyMultiplePopup;
   import Ankama_TradeCenter.ui.AuctionHousePutOnSellPopup;
   import Ankama_TradeCenter.ui.AuctionHouseSell;
   import Ankama_TradeCenter.ui.AuctionHouseWithdrawPopup;
   import Ankama_TradeCenter.ui.EstateAgency;
   import Ankama_TradeCenter.ui.EstateForm;
   import Ankama_TradeCenter.ui.ItemHumanVendor;
   import Ankama_TradeCenter.ui.ItemMyselfVendor;
   import Ankama_TradeCenter.ui.ItemNpcStore;
   import Ankama_TradeCenter.ui.StockHumanVendor;
   import Ankama_TradeCenter.ui.StockMyselfVendor;
   import Ankama_TradeCenter.ui.StockNpcStore;
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.enums.StrataEnum;
   import com.ankamagames.berilia.enums.UIEnum;
   import com.ankamagames.dofus.internalDatacenter.DataEnum;
   import com.ankamagames.dofus.logic.game.common.actions.OpenInventoryAction;
   import com.ankamagames.dofus.logic.game.common.actions.humanVendor.ExchangeOnHumanVendorRequestAction;
   import com.ankamagames.dofus.logic.game.common.actions.humanVendor.ExchangeStartAsVendorRequestAction;
   import com.ankamagames.dofus.misc.lists.ExchangeHookList;
   import com.ankamagames.dofus.misc.lists.RoleplayHookList;
   import com.ankamagames.dofus.uiApi.ExchangeApi;
   import com.ankamagames.dofus.uiApi.PlayedCharacterApi;
   import com.ankamagames.dofus.uiApi.SystemApi;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TradeCenter extends Sprite
   {
      
      public static var BID_HOUSE_BUY_MODE:Boolean;
      
      public static var SWITCH_MODE:Boolean = false;
      
      public static var SEARCH_MODE:Boolean = false;
      
      public static var SALES_PRICES:Dictionary = new Dictionary();
      
      public static var SALES_QUANTITIES:Dictionary = new Dictionary();
      
      public static var QUANTITIES:Array = new Array();
      
      public static const SELLING_RATIO:uint = 10;
      
      private static var _self:TradeCenter;
       
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Module(name="Ankama_Common")]
      public var modCommon:Object;
      
      [Api(name="PlayedCharacterApi")]
      public var playerApi:PlayedCharacterApi;
      
      [Api(name="ExchangeApi")]
      public var exchangeApi:ExchangeApi;
      
      private var include_EstateAgency:EstateAgency = null;
      
      private var include_EstateForm:EstateForm = null;
      
      private var include_StockMyselfVendor:StockMyselfVendor = null;
      
      private var include_StockHumanVendor:StockHumanVendor = null;
      
      private var include_ItemMyselfVendor:ItemMyselfVendor = null;
      
      private var include_ItemHumanVendor:ItemHumanVendor = null;
      
      private var _include_StockNpcStore:StockNpcStore = null;
      
      private var _include_ItemNpcStoreSell:ItemNpcStore = null;
      
      private var _include_auctionHouse:AuctionHouse = null;
      
      private var _include_auctionHouseBuy:AuctionHouseBuy = null;
      
      private var _include_auctionHouseSell:AuctionHouseSell = null;
      
      private var _include_auctionHouseWithdrawPopup:AuctionHouseWithdrawPopup = null;
      
      private var _include_auctionHousePutOnSellPopup:AuctionHousePutOnSellPopup = null;
      
      private var _include_auctionHouseModifyMultiple:AuctionHouseModifyMultiplePopup = null;
      
      private var _include_auctionHouseBuyPopup:AuctionHouseBuyPopup = null;
      
      private var _storedObjectsInfos:Object;
      
      private var _uiToOpen:Array;
      
      private var _sellerName:String;
      
      private var _merchantId:Number;
      
      private var _merchantCellId:int;
      
      private var _timeDelay:Number = 200;
      
      private var _timerDelay:Timer;
      
      public var filtersCache:Dictionary;
      
      public function TradeCenter()
      {
         super();
      }
      
      public static function getInstance() : TradeCenter
      {
         return _self;
      }
      
      public static function getAuctionId(sellerBuyerDescriptor:Object) : int
      {
         if(sellerBuyerDescriptor.types.indexOf(DataEnum.ITEM_TYPE_WING) != -1)
         {
            return 0;
         }
         if(sellerBuyerDescriptor.types.indexOf(DataEnum.ITEM_TYPE_DRINK) != -1)
         {
            return 1;
         }
         if(sellerBuyerDescriptor.types.indexOf(DataEnum.ITEM_TYPE_COLLAR) != -1)
         {
            return 2;
         }
         if(sellerBuyerDescriptor.types.indexOf(DataEnum.ITEM_TYPE_DRAGOTURKEY_CERTIFICATE) != -1)
         {
            return 3;
         }
         if(sellerBuyerDescriptor.types.indexOf(DataEnum.ITEM_TYPE_SMITHMAGIC_RUNE) != -1)
         {
            return 4;
         }
         if(sellerBuyerDescriptor.types.indexOf(DataEnum.ITEM_TYPE_EMPTY_SOULSTONE) != -1)
         {
            return 5;
         }
         return -1;
      }
      
      public function main() : void
      {
         this.sysApi.addHook(ExchangeHookList.ExchangeStartedBidSeller,this.onExchangeStartedBidSeller);
         this.sysApi.addHook(ExchangeHookList.ExchangeStartedBidBuyer,this.onExchangeStartedBidBuyer);
         this.sysApi.addHook(RoleplayHookList.EstateToSellList,this.onEstateList);
         this.sysApi.addHook(ExchangeHookList.ExchangeShopStockStarted,this.onExchangeShopStockStarted);
         this.sysApi.addHook(ExchangeHookList.ExchangeStartOkHumanVendor,this.onExchangeStartOkHumanVendor);
         this.sysApi.addHook(ExchangeHookList.ExchangeReplyTaxVendor,this.onExchangeReplyTaxVendor);
         this.sysApi.addHook(ExchangeHookList.ExchangeStartOkNpcShop,this.onExchangeStartOkNpcShop);
         this.sysApi.addHook(ExchangeHookList.CloseStore,this.onCloseStore);
         _self = this;
         this._uiToOpen = new Array();
         this.filtersCache = new Dictionary();
      }
      
      public function exchangeOnHumanVendorRequestWithDelay(vendorId:Number, vendorCellId:int) : void
      {
         this._merchantId = vendorId;
         this._merchantCellId = vendorCellId;
         if(this._timerDelay && this._timerDelay.running)
         {
            this._timerDelay.stop();
         }
         this._timerDelay = new Timer(this._timeDelay,1);
         this._timerDelay.addEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerExchange);
         this._timerDelay.start();
      }
      
      private function onTimerExchange(e:TimerEvent) : void
      {
         if(!this.uiApi.getUi(UIEnum.STORAGE_UI) && !this.uiApi.getUi(UIEnum.HUMAN_VENDOR_STOCK))
         {
            this._timerDelay.removeEventListener(TimerEvent.TIMER,this.onTimerExchange);
            this._timerDelay.stop();
            this._timerDelay = null;
            this.sysApi.sendAction(new ExchangeOnHumanVendorRequestAction([this._merchantId,this._merchantCellId]));
         }
         else
         {
            this._timerDelay.stop();
            this._timerDelay.reset();
            this._timerDelay.start();
         }
      }
      
      private function onExchangeStartedBidSeller(sellerBuyerDescriptor:Object, objectsInfos:Object) : void
      {
         var qty:int = 0;
         var auctionHouseUI:Object = null;
         SWITCH_MODE = false;
         BID_HOUSE_BUY_MODE = false;
         QUANTITIES = new Array();
         for each(qty in sellerBuyerDescriptor.quantities)
         {
            QUANTITIES.push(qty);
         }
         auctionHouseUI = this.uiApi.getUi(UIEnum.AUCTIONHOUSE);
         if(auctionHouseUI == null)
         {
            this.sysApi.startStats("auctionBeta",true,true,getAuctionId(sellerBuyerDescriptor));
         }
         if(auctionHouseUI == null)
         {
            this.uiApi.loadUi(UIEnum.AUCTIONHOUSE,UIEnum.AUCTIONHOUSE,{
               "visible":true,
               "sellerBuyerDescriptor":sellerBuyerDescriptor,
               "objectsInfos":objectsInfos
            });
         }
         else
         {
            auctionHouseUI.uiClass.openTab(UIEnum.AUCTIONHOUSE_SELL,{
               "visible":true,
               "sellerBuyerDescriptor":sellerBuyerDescriptor
            });
         }
      }
      
      private function onExchangeStartedBidBuyer(sellerBuyerDescriptor:Object) : void
      {
         SWITCH_MODE = false;
         BID_HOUSE_BUY_MODE = true;
         var auctionHouseUI:Object = this.uiApi.getUi(UIEnum.AUCTIONHOUSE);
         if(auctionHouseUI == null)
         {
            this.sysApi.startStats("auctionBeta",true,false,getAuctionId(sellerBuyerDescriptor));
         }
         if(auctionHouseUI == null)
         {
            this.uiApi.loadUi(UIEnum.AUCTIONHOUSE,UIEnum.AUCTIONHOUSE,{
               "visible":true,
               "sellerBuyerDescriptor":sellerBuyerDescriptor
            });
         }
         else
         {
            auctionHouseUI.uiClass.openTab(UIEnum.AUCTIONHOUSE_BUY,{
               "visible":true,
               "sellerBuyerDescriptor":sellerBuyerDescriptor
            });
         }
      }
      
      private function onEstateList(list:Object, pageIndex:uint, totalPage:uint, type:uint = 0) : void
      {
         if(this.uiApi.getUi("estateAgency") == null)
         {
            this.uiApi.loadUi("estateAgency","estateAgency",{
               "type":type,
               "list":list,
               "index":pageIndex,
               "total":totalPage
            });
         }
      }
      
      public function onExchangeStartOkNpcShop(pNCPSellerId:int, pObjects:Object, pLook:Object, tokenId:int) : void
      {
         this.uiApi.loadUi(UIEnum.NPC_STOCK,UIEnum.NPC_STOCK,{
            "npcSellerId":pNCPSellerId,
            "objects":pObjects,
            "look":pLook,
            "tokenId":tokenId
         });
         if(tokenId)
         {
            if(tokenId == DataEnum.ITEM_GID_NUGGET || tokenId == DataEnum.ITEM_GID_SANDS_ROSE)
            {
               this.sysApi.sendAction(new OpenInventoryAction(["tokenStoneShop"]));
            }
            else
            {
               this.sysApi.sendAction(new OpenInventoryAction(["tokenShop"]));
            }
         }
         else
         {
            this.sysApi.sendAction(new OpenInventoryAction(["shop"]));
         }
      }
      
      private function onCloseStore() : void
      {
         this.uiApi.unloadUi(UIEnum.NPC_STOCK);
         this.uiApi.unloadUi(UIEnum.MYSELF_VENDOR_STOCK);
         this.uiApi.unloadUi(UIEnum.HUMAN_VENDOR_STOCK);
      }
      
      private function onExchangeReplyTaxVendor(pTotalTaxValue:Number) : void
      {
         this.modCommon.openPopup(this.uiApi.getText("ui.humanVendor.poupTitleTaxMessage"),this.uiApi.getText("ui.humanVendor.taxPriceMessage",pTotalTaxValue),[this.uiApi.getText("ui.common.yes"),this.uiApi.getText("ui.common.no")],[this.onAcceptTax,this.onRefuseTax],this.onAcceptTax,this.onRefuseTax);
      }
      
      private function onExchangeStartOkHumanVendor(pSellerName:String, pItems:Object, pLook:Object) : void
      {
         this._storedObjectsInfos = pItems;
         this._uiToOpen = new Array(UIEnum.HUMAN_VENDOR_STOCK,UIEnum.HUMAN_VENDOR);
         this.sysApi.sendAction(new OpenInventoryAction(["humanVendor"]));
         this.openUi(pSellerName,pLook);
      }
      
      private function onExchangeShopStockStarted(pItems:Object) : void
      {
         this._storedObjectsInfos = pItems;
         this._uiToOpen = new Array(UIEnum.MYSELF_VENDOR_STOCK,UIEnum.MYSELF_VENDOR);
         this.sysApi.sendAction(new OpenInventoryAction(["myselfVendor"]));
         this.openUi();
      }
      
      private function onAcceptTax() : void
      {
         if(this.uiApi.getUi(UIEnum.MYSELF_VENDOR_STOCK))
         {
            this.uiApi.unloadUi(UIEnum.MYSELF_VENDOR_STOCK);
         }
         this.sysApi.sendAction(new ExchangeStartAsVendorRequestAction([]));
      }
      
      private function onRefuseTax() : void
      {
      }
      
      private function openUi(pSellerName:String = null, pLook:Object = null) : void
      {
         var uinterface:String = null;
         this._sellerName = pSellerName;
         for each(uinterface in this._uiToOpen)
         {
            switch(uinterface)
            {
               case UIEnum.HUMAN_VENDOR_STOCK:
                  this.uiApi.loadUi(uinterface,uinterface,{
                     "playerName":pSellerName,
                     "objects":this._storedObjectsInfos,
                     "look":pLook
                  });
                  continue;
               case UIEnum.MYSELF_VENDOR_STOCK:
                  this.uiApi.loadUi(uinterface,uinterface,{
                     "objects":this._storedObjectsInfos,
                     "look":null
                  });
                  continue;
               case UIEnum.MYSELF_VENDOR:
               case UIEnum.HUMAN_VENDOR:
                  this.uiApi.loadUi(uinterface,uinterface);
                  continue;
               default:
                  continue;
            }
         }
         this.sysApi.disableWorldInteraction();
      }
      
      public function openAuctionHouseWithdrawPopup(text:String, parent:AuctionHouseSell, withdrawAll:Boolean, itemList:Array, buttonCallback:Array, onEnterKey:Function, onCancel:Function) : String
      {
         var params:Object = new Object();
         params.text = text;
         params.parent = parent;
         params.withdrawAll = withdrawAll;
         params.itemList = itemList;
         params.buttonCallback = buttonCallback;
         params.onEnterKey = onEnterKey;
         params.onCancel = onCancel;
         this.uiApi.loadUi("auctionHouseWithdrawPopup",null,params,StrataEnum.STRATA_TOP,null,true);
         return "auctionHouseWithdrawPopup";
      }
      
      public function openAuctionHouseModifyMultiplePopup(text:String, parent:AuctionHouseSell, itemList:Array, price:Number, buttonCallback:Array, onEnterKey:Function, onCancel:Function) : String
      {
         var params:Object = new Object();
         params.text = text;
         params.parent = parent;
         params.itemList = itemList;
         params.price = price;
         params.buttonCallback = buttonCallback;
         params.onEnterKey = onEnterKey;
         params.onCancel = onCancel;
         this.uiApi.loadUi("auctionHouseModifyMultiplePopup",null,params,StrataEnum.STRATA_TOP,null,true);
         return "auctionHouseModifyMultiplePopup";
      }
      
      public function openAuctionHousePutOnSellPopup(text:String, itemInfo:Object, buttonCallback:Array, onEnterKey:Function, onCancel:Function) : String
      {
         var params:Object = new Object();
         params.text = text;
         params.itemInfo = itemInfo;
         params.buttonCallback = buttonCallback;
         params.onEnterKey = onEnterKey;
         params.onCancel = onCancel;
         this.uiApi.loadUi("auctionHousePutOnSellPopup",null,params,StrataEnum.STRATA_TOP,null,true);
         return "auctionHousePutOnSellPopup";
      }
      
      public function openAuctionHouseBuyPopup(text:String, itemInfo:Object, buttonCallback:Array, onEnterKey:Function, onCancel:Function, blocking:Boolean = true) : String
      {
         var params:Object = new Object();
         params.text = text;
         params.itemInfo = itemInfo;
         params.buttonCallback = buttonCallback;
         params.onEnterKey = onEnterKey;
         params.onCancel = onCancel;
         params.blocking = blocking;
         this.uiApi.loadUi("auctionHouseBuyPopup",null,params,StrataEnum.STRATA_TOP,null,true);
         return "auctionHouseBuyPopup";
      }
   }
}
