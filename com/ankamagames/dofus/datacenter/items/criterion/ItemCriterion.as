package com.ankamagames.dofus.datacenter.items.criterion
{
   import com.ankamagames.dofus.logic.game.common.managers.PlayedCharacterManager;
   import com.ankamagames.dofus.network.types.game.character.characteristic.CharacterBaseCharacteristic;
   import com.ankamagames.jerakine.data.I18n;
   import com.ankamagames.jerakine.interfaces.IDataCenter;
   import com.ankamagames.jerakine.logger.Log;
   import com.ankamagames.jerakine.logger.Logger;
   import flash.utils.getQualifiedClassName;
   
   public class ItemCriterion implements IItemCriterion, IDataCenter
   {
      
      protected static const _log:Logger = Log.getLogger(getQualifiedClassName(ItemCriterion));
       
      
      protected var _serverCriterionForm:String;
      
      protected var _operator:ItemCriterionOperator;
      
      protected var _criterionRef:String;
      
      protected var _criterionValue:int;
      
      protected var _criterionValueText:String;
      
      public function ItemCriterion(pCriterion:String)
      {
         super();
         this._serverCriterionForm = pCriterion;
         this.getInfos();
      }
      
      public function get inlineCriteria() : Vector.<IItemCriterion>
      {
         var criteria:Vector.<IItemCriterion> = new Vector.<IItemCriterion>();
         criteria.push(this);
         return criteria;
      }
      
      public function get criterionValue() : Object
      {
         return this._criterionValue;
      }
      
      public function get operatorText() : String
      {
         return !!this._operator?this._operator.text:null;
      }
      
      public function get operator() : ItemCriterionOperator
      {
         return this._operator;
      }
      
      public function get isRespected() : Boolean
      {
         var player:PlayedCharacterManager = PlayedCharacterManager.getInstance();
         if(!player || !player.characteristics)
         {
            return true;
         }
         return this._operator.compare(this.getCriterion(),this._criterionValue);
      }
      
      public function get text() : String
      {
         return this.buildText(false);
      }
      
      public function get textForTooltip() : String
      {
         return this.buildText(true);
      }
      
      public function get basicText() : String
      {
         return this._serverCriterionForm;
      }
      
      public function clone() : IItemCriterion
      {
         var clonedCriterion:IItemCriterion = new ItemCriterion(this.basicText);
         return clonedCriterion;
      }
      
      private function buildText(forTooltip:Boolean = false) : String
      {
         var readableCriterionRef:String = null;
         var knownCriteriaList:Array = null;
         var index:int = 0;
         switch(this._criterionRef)
         {
            case "CM":
               readableCriterionRef = I18n.getUiText("ui.stats.movementPoints");
               break;
            case "CP":
               readableCriterionRef = I18n.getUiText("ui.stats.actionPoints");
               break;
            case "CH":
               readableCriterionRef = I18n.getUiText("ui.pvp.honourPoints");
               break;
            case "CD":
               readableCriterionRef = I18n.getUiText("ui.pvp.disgracePoints");
               break;
            case "CT":
               readableCriterionRef = I18n.getUiText("ui.stats.takleBlock");
               break;
            case "Ct":
               readableCriterionRef = I18n.getUiText("ui.stats.takleEvade");
               break;
            default:
               knownCriteriaList = ["CS","Cs","CV","Cv","CA","Ca","CI","Ci","CW","Cw","CC","Cc","PG","PJ","Pj","PM","PA","PN","PE","<NO>","PS","PR","PL","PK","Pg","Pr","Ps","Pa","PP","PZ","CM","Qa","CP","ca","cc","ci","cs","cv","cw","Pl"];
               index = knownCriteriaList.indexOf(this._criterionRef);
               if(index > -1)
               {
                  readableCriterionRef = I18n.getUiText("ui.item.characteristics").split(",")[index];
               }
               else
               {
                  _log.warn("Unknown criteria \'" + this._criterionRef + "\'");
               }
         }
         if(forTooltip)
         {
            return index > -1?readableCriterionRef + " " + "<span class=\'#valueCssClass\'>" + this._operator.text + " " + this._criterionValue + "</span>":null;
         }
         return readableCriterionRef + " " + this._operator.text + " " + this._criterionValue;
      }
      
      protected function getInfos() : void
      {
         var operator:String = null;
         for each(operator in ItemCriterionOperator.OPERATORS_LIST)
         {
            if(this._serverCriterionForm.indexOf(operator) == 2)
            {
               this._operator = new ItemCriterionOperator(operator);
               this._criterionRef = this._serverCriterionForm.split(operator)[0];
               this._criterionValue = this._serverCriterionForm.split(operator)[1];
               this._criterionValueText = this._serverCriterionForm.split(operator)[1];
               break;
            }
         }
      }
      
      protected function getCriterion() : int
      {
         var criterion:int = 0;
         var player:PlayedCharacterManager = PlayedCharacterManager.getInstance();
         switch(this._criterionRef)
         {
            case "Ca":
               criterion = player.characteristics.agility.base;
               break;
            case "CA":
               criterion = this.getTotalCharac(player.characteristics.agility);
               break;
            case "Cc":
               criterion = player.characteristics.chance.base;
               break;
            case "CC":
               criterion = this.getTotalCharac(player.characteristics.chance);
               break;
            case "Ce":
               criterion = player.characteristics.energyPoints;
               break;
            case "CE":
               criterion = player.characteristics.maxEnergyPoints;
               break;
            case "CH":
               criterion = player.characteristics.alignmentInfos.honor;
               break;
            case "Ci":
               criterion = player.characteristics.intelligence.base;
               break;
            case "CI":
               criterion = this.getTotalCharac(player.characteristics.intelligence);
               break;
            case "CL":
               criterion = player.characteristics.lifePoints;
               break;
            case "CM":
               criterion = this.getTotalCharac(player.characteristics.movementPoints);
               break;
            case "CP":
               criterion = this.getTotalCharac(player.characteristics.actionPoints);
               break;
            case "Cs":
               criterion = player.characteristics.strength.base;
               break;
            case "CS":
               criterion = this.getTotalCharac(player.characteristics.strength);
               break;
            case "Cv":
               criterion = player.characteristics.vitality.base;
               break;
            case "CV":
               criterion = this.getTotalCharac(player.characteristics.vitality);
               break;
            case "Cw":
               criterion = player.characteristics.wisdom.base;
               break;
            case "CW":
               criterion = this.getTotalCharac(player.characteristics.wisdom);
               break;
            case "Ct":
               criterion = this.getTotalCharac(player.characteristics.tackleEvade);
               break;
            case "CT":
               criterion = this.getTotalCharac(player.characteristics.tackleBlock);
               break;
            case "ca":
               criterion = player.characteristics.agility.additionnal;
               break;
            case "cc":
               criterion = player.characteristics.chance.additionnal;
               break;
            case "ci":
               criterion = player.characteristics.intelligence.additionnal;
               break;
            case "cs":
               criterion = player.characteristics.strength.additionnal;
               break;
            case "cv":
               criterion = player.characteristics.vitality.additionnal;
               break;
            case "cw":
               criterion = player.characteristics.wisdom.additionnal;
         }
         return criterion;
      }
      
      private function getTotalCharac(pCharac:CharacterBaseCharacteristic) : int
      {
         return pCharac.base + pCharac.additionnal + pCharac.alignGiftBonus + pCharac.contextModif + pCharac.objectsAndMountBonus;
      }
   }
}
