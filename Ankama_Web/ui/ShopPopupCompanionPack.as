package Ankama_Web.ui
{
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.components.Grid;
   import com.ankamagames.berilia.components.Label;
   import com.ankamagames.berilia.components.Texture;
   import com.ankamagames.berilia.enums.StrataEnum;
   import com.ankamagames.berilia.types.graphic.ButtonContainer;
   import com.ankamagames.berilia.types.graphic.GraphicContainer;
   import com.ankamagames.berilia.utils.ComponentHookList;
   import com.ankamagames.dofus.datacenter.monsters.Companion;
   import com.ankamagames.dofus.datacenter.monsters.CompanionCharacteristic;
   import com.ankamagames.dofus.datacenter.monsters.CompanionSpell;
   import com.ankamagames.dofus.datacenter.spells.SpellLevel;
   import com.ankamagames.dofus.internalDatacenter.items.ItemWrapper;
   import com.ankamagames.dofus.internalDatacenter.spells.SpellWrapper;
   import com.ankamagames.dofus.logic.game.common.actions.externalGame.ShopBuyRequestAction;
   import com.ankamagames.dofus.misc.lists.ExternalGameHookList;
   import com.ankamagames.dofus.misc.lists.HookList;
   import com.ankamagames.dofus.types.enums.DofusShopEnum;
   import com.ankamagames.dofus.uiApi.DataApi;
   import com.ankamagames.dofus.uiApi.PlayedCharacterApi;
   import com.ankamagames.dofus.uiApi.SystemApi;
   
   public class ShopPopupCompanionPack
   {
       
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      [Api(name="DataApi")]
      public var dataApi:DataApi;
      
      [Api(name="PlayedCharacterApi")]
      public var playerApi:PlayedCharacterApi;
      
      public var btn_close:ButtonContainer;
      
      public var btn_statsTab:ButtonContainer;
      
      public var btn_spellsTab:ButtonContainer;
      
      public var btn_buy:ButtonContainer;
      
      public var btn_getForFree:ButtonContainer;
      
      public var ctr_stats:GraphicContainer;
      
      public var ctr_spells:GraphicContainer;
      
      public var gd_spells:Grid;
      
      public var gd_stats:Grid;
      
      public var gd_companions:Grid;
      
      public var lbl_name:Label;
      
      public var lbl_level:Label;
      
      public var lbl_spellName:Label;
      
      public var lbl_spellInitial:Label;
      
      public var lbl_description:Label;
      
      public var btn_lbl_btn_buy:Label;
      
      public var lbl_title:Label;
      
      public var tx_spellIcon:Texture;
      
      public var tx_illu:Texture;
      
      public var btn_buyOneClick:ButtonContainer;
      
      public var tx_ogrineButton:Texture;
      
      public var btn_lbl_btn_buyOneClick:Label;
      
      private var _selectedSpell:SpellWrapper;
      
      private var _initialSpellId:uint;
      
      private var _shownTooltipId:uint;
      
      private var _companions:Array;
      
      private var _companion:Companion;
      
      private var _illusUri:String;
      
      private var _myLevel:int;
      
      private var _params:Object;
      
      public function ShopPopupCompanionPack()
      {
         this._companions = new Array();
         super();
      }
      
      public function main(params:Object = null) : void
      {
         var iw:ItemWrapper = null;
         var i:int = 0;
         var hasOgrinePrice:Boolean = false;
         var hasOneClickPrice:Boolean = false;
         this.uiApi.addShortcutHook("closeUi",this.onShortcut);
         this._params = params;
         this.uiApi.addComponentHook(this.btn_close,ComponentHookList.ON_RELEASE);
         this.uiApi.addComponentHook(this.btn_statsTab,ComponentHookList.ON_RELEASE);
         this.uiApi.addComponentHook(this.btn_spellsTab,ComponentHookList.ON_RELEASE);
         this.lbl_title.text = params.article.article.name;
         this._illusUri = this.uiApi.me().getConstant("illus");
         this._myLevel = this.playerApi.getPlayedCharacterInfo().level;
         for each(iw in params.article.items)
         {
            this._companions.push(this.dataApi.getCompanion(iw.possibleEffects[0]["value"]));
         }
         this.gd_companions.dataProvider = this._companions;
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
                  this.btn_buy.x = 175;
               }
            }
            else
            {
               this.btn_buy.visible = false;
               this.tx_ogrineButton.visible = false;
               if(hasOneClickPrice)
               {
                  this.btn_buyOneClick.x = 175;
               }
               else
               {
                  this.btn_buyOneClick.visible = false;
               }
            }
         }
      }
      
      private function displayCompanion() : void
      {
         var compCarac:CompanionCharacteristic = null;
         var value:int = 0;
         var caracId:int = 0;
         var spells:Array = null;
         var compSpell:CompanionSpell = null;
         var sw:SpellWrapper = null;
         var grade:uint = 0;
         var gradeByLevel:Array = null;
         var compSpellId:int = 0;
         var spellLevel:SpellLevel = null;
         var i:int = 0;
         this.lbl_name.text = this._companion.name;
         this.lbl_level.text = this.uiApi.getText("ui.common.level") + " " + this._myLevel;
         this.tx_illu.uri = this.uiApi.createUri(this._illusUri + "big_" + this._companion.assetId + ".jpg");
         var caracs:Array = new Array();
         for each(caracId in this._companion.characteristics)
         {
            compCarac = this.dataApi.getCompanionCharacteristic(caracId);
            value = this.getStatValue(compCarac.statPerLevelRange,this._myLevel);
            caracs.push({
               "text":compCarac.name + this.uiApi.getText("ui.common.colon") + value,
               "order":compCarac.order
            });
         }
         caracs.sortOn("order",Array.NUMERIC);
         this.gd_stats.dataProvider = caracs;
         this.lbl_description.text = this._companion.description;
         spells = new Array();
         grade = 1;
         this._initialSpellId = 0;
         if(this._companion.startingSpellLevelId != 0)
         {
            spellLevel = this.dataApi.getSpellLevel(this._companion.startingSpellLevelId);
            if(spellLevel)
            {
               sw = this.dataApi.getSpellWrapper(spellLevel.spellId,spellLevel.grade);
               spells.push(sw);
               this._initialSpellId = sw.id;
            }
         }
         for each(compSpellId in this._companion.spells)
         {
            compSpell = this.dataApi.getCompanionSpell(compSpellId);
            gradeByLevel = compSpell.gradeByLevel.split(",");
            for(i = 0; i < gradeByLevel.length; i = i + 2)
            {
               if(gradeByLevel[i + 1] <= this._myLevel)
               {
                  grade = gradeByLevel[i];
               }
            }
            sw = this.dataApi.getSpellWrapper(compSpell.spellId,grade);
            spells.push(sw);
         }
         this.gd_spells.dataProvider = spells;
         this.gd_spells.selectedIndex = 0;
         if(this.ctr_stats.visible)
         {
            this.onStatsTab();
         }
         else
         {
            this.onSpellsTab();
         }
      }
      
      public function updateLine(data:*, componentsRef:*, selected:Boolean) : void
      {
         if(data)
         {
            componentsRef.tx_selected.visible = selected;
            componentsRef.tx_bg.visible = true;
            componentsRef.tx_look.uri = this.uiApi.createUri(this._illusUri + "small_" + data.assetId + ".jpg");
         }
         else
         {
            componentsRef.tx_selected.visible = false;
            componentsRef.tx_bg.visible = false;
            componentsRef.tx_look.uri = null;
         }
      }
      
      public function unload() : void
      {
         this.sysApi.dispatchHook(HookList.ClosePopup);
      }
      
      public function updateStatsLine(data:*, componentsRef:*, selected:Boolean) : void
      {
         if(data)
         {
            componentsRef.lbl_stats.text = data.text;
         }
         else
         {
            componentsRef.lbl_stats.text = "";
         }
      }
      
      public function updateSpellsLine(data:*, componentsRef:*, selected:Boolean) : void
      {
         if(data)
         {
            componentsRef.btn_spell.selected = selected;
            componentsRef.btn_spell.softDisabled = false;
            componentsRef.lbl_spellName.text = data.name;
            componentsRef.slot_icon.allowDrag = false;
            componentsRef.slot_icon.data = data;
            componentsRef.slot_icon.selected = false;
         }
         else
         {
            componentsRef.btn_spell.selected = false;
            componentsRef.lbl_spellName.text = "";
            componentsRef.slot_icon.data = null;
            componentsRef.btn_spell.softDisabled = true;
            componentsRef.btn_spell.reset();
         }
      }
      
      public function onSelectItem(target:Object, selectMethod:uint, isNewSelection:Boolean) : void
      {
         switch(target)
         {
            case this.gd_spells:
               this._selectedSpell = this.gd_spells.dataProvider[target.selectedIndex];
               if(this._selectedSpell == null)
               {
                  return;
               }
               this.updateSpellDisplay();
               break;
            case this.gd_companions:
               this._companion = this.gd_companions.dataProvider[this.gd_companions.selectedIndex];
               this.displayCompanion();
         }
      }
      
      private function onSpellsTab() : void
      {
         this.ctr_stats.visible = false;
         this.ctr_spells.visible = true;
      }
      
      private function onStatsTab() : void
      {
         this.ctr_stats.visible = true;
         this.ctr_spells.visible = false;
      }
      
      private function getStatValue(pStatPerLevelRange:Object, pLevel:int) : int
      {
         var value:Number = 0;
         var numValues:int = pStatPerLevelRange.length;
         var i:int = 0;
         var j:int = 0;
         for(var levelDone:int = pStatPerLevelRange[i][0] !== 1?1:0; i < numValues; )
         {
            for(j = levelDone; j < pStatPerLevelRange[i][0]; j++)
            {
               if(j < pLevel)
               {
                  value = value + pStatPerLevelRange[i][1];
               }
            }
            levelDone = pStatPerLevelRange[i][0];
            i++;
         }
         return Math.floor(value);
      }
      
      private function updateSpellDisplay() : void
      {
         this.lbl_spellName.text = this._selectedSpell.spell.name;
         this.tx_spellIcon.uri = this._selectedSpell.fullSizeIconUri;
         if(this._initialSpellId == this._selectedSpell.id)
         {
            this.lbl_spellInitial.visible = true;
         }
         else
         {
            this.lbl_spellInitial.visible = false;
         }
         this.showSpellTooltip(this._selectedSpell);
      }
      
      private function showSpellTooltip(spellItem:SpellWrapper) : void
      {
         if(this._shownTooltipId == spellItem.spellId)
         {
            return;
         }
         this._shownTooltipId = spellItem.spellId;
         this.uiApi.showTooltip(spellItem,null,false,"tooltipShopSpellTab",0,2,3,null,null,{
            "smallSpell":false,
            "description":true,
            "effects":true,
            "contextual":true,
            "noBg":true,
            "currentCC_EC":false,
            "baseCC_EC":true,
            "spellTab":true
         },null,true);
      }
      
      public function onRelease(target:Object) : void
      {
         switch(target)
         {
            case this.btn_close:
               this.uiApi.unloadUi(this.uiApi.me().name);
               break;
            case this.btn_spellsTab:
               this.onSpellsTab();
               break;
            case this.btn_statsTab:
               this.onStatsTab();
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
