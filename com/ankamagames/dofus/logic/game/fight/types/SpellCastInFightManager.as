package com.ankamagames.dofus.logic.game.fight.types
{
   import com.ankamagames.dofus.datacenter.spells.SpellLevel;
   import com.ankamagames.dofus.internalDatacenter.spells.SpellWrapper;
   import com.ankamagames.dofus.kernel.Kernel;
   import com.ankamagames.dofus.logic.game.common.frames.SpellInventoryManagementFrame;
   import com.ankamagames.dofus.logic.game.common.managers.PlayedCharacterManager;
   import com.ankamagames.dofus.logic.game.common.misc.SpellModificator;
   import com.ankamagames.dofus.logic.game.fight.managers.CurrentPlayedFighterManager;
   import com.ankamagames.dofus.logic.game.fight.types.castSpellManager.SpellManager;
   import com.ankamagames.dofus.network.enums.CharacterSpellModificationTypeEnum;
   import com.ankamagames.dofus.network.types.game.character.characteristic.CharacterCharacteristicsInformations;
   import com.ankamagames.dofus.network.types.game.character.characteristic.CharacterSpellModification;
   import com.ankamagames.dofus.network.types.game.context.fight.GameFightSpellCooldown;
   import com.ankamagames.jerakine.logger.Log;
   import com.ankamagames.jerakine.logger.Logger;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class SpellCastInFightManager
   {
      
      protected static const _log:Logger = Log.getLogger(getQualifiedClassName(SpellCastInFightManager));
       
      
      private var _spells:Dictionary;
      
      private var skipFirstTurn:Boolean = true;
      
      private var _storedSpellCooldowns:Vector.<GameFightSpellCooldown>;
      
      public var currentTurn:int = 0;
      
      public var entityId:Number;
      
      public var needCooldownUpdate:Boolean = false;
      
      public function SpellCastInFightManager(entityId:Number)
      {
         this._spells = new Dictionary();
         super();
         this.entityId = entityId;
      }
      
      public function nextTurn() : void
      {
         var spell:SpellManager = null;
         this.currentTurn++;
         for each(spell in this._spells)
         {
            spell.newTurn();
         }
      }
      
      public function resetInitialCooldown(hasBeenSummoned:Boolean = false) : void
      {
         var s:SpellWrapper = null;
         var spim:SpellInventoryManagementFrame = Kernel.getWorker().getFrame(SpellInventoryManagementFrame) as SpellInventoryManagementFrame;
         var spellList:Array = spim.getFullSpellListByOwnerId(this.entityId);
         for each(s in spellList)
         {
            this.initializeSpellInitialCooldown(s,hasBeenSummoned);
         }
      }
      
      public function resetSpellInitialCooldown(spellId:int, hasBeenSummoned:Boolean = false) : void
      {
         var spellWrapper:SpellWrapper = null;
         var spellInventoryManagementFrame:SpellInventoryManagementFrame = Kernel.getWorker().getFrame(SpellInventoryManagementFrame) as SpellInventoryManagementFrame;
         var spellList:Array = spellInventoryManagementFrame.getFullSpellListByOwnerId(this.entityId);
         for each(spellWrapper in spellList)
         {
            if(spellWrapper.spellId !== spellId)
            {
               continue;
            }
            this.initializeSpellInitialCooldown(spellWrapper,hasBeenSummoned);
            break;
         }
      }
      
      public function updateCooldowns(spellCooldowns:Vector.<GameFightSpellCooldown> = null) : void
      {
         var spellCooldown:GameFightSpellCooldown = null;
         var spellW:SpellWrapper = null;
         var spellLevel:SpellLevel = null;
         var spellCastManager:SpellCastInFightManager = null;
         var interval:int = 0;
         var spellModifs:SpellModificator = null;
         var characteristics:CharacterCharacteristicsInformations = null;
         var spellModification:CharacterSpellModification = null;
         if(this.needCooldownUpdate && !spellCooldowns)
         {
            spellCooldowns = this._storedSpellCooldowns;
         }
         var playedFighterManager:CurrentPlayedFighterManager = CurrentPlayedFighterManager.getInstance();
         var numCoolDown:int = spellCooldowns.length;
         for(var k:int = 0; k < numCoolDown; k++)
         {
            spellCooldown = spellCooldowns[k];
            spellW = SpellWrapper.getSpellWrapperById(spellCooldown.spellId,this.entityId);
            if(!spellW)
            {
               this.needCooldownUpdate = true;
               this._storedSpellCooldowns = spellCooldowns;
               return;
            }
            if(spellW && spellW.spellLevel > 0)
            {
               spellLevel = spellW.spell.getSpellLevel(spellW.spellLevel);
               spellCastManager = playedFighterManager.getSpellCastManagerById(this.entityId);
               spellCastManager.castSpell(spellW.id,spellW.spellLevel,[],false);
               interval = spellLevel.minCastInterval;
               if(spellCooldown.cooldown != 63)
               {
                  spellModifs = new SpellModificator();
                  characteristics = PlayedCharacterManager.getInstance().characteristics;
                  for each(spellModification in characteristics.spellModifications)
                  {
                     if(spellModification.spellId == spellCooldown.spellId)
                     {
                        switch(spellModification.modificationType)
                        {
                           case CharacterSpellModificationTypeEnum.CAST_INTERVAL:
                              spellModifs.castInterval = spellModification.value;
                              continue;
                           case CharacterSpellModificationTypeEnum.CAST_INTERVAL_SET:
                              spellModifs.castIntervalSet = spellModification.value;
                              continue;
                           default:
                              continue;
                        }
                     }
                     else
                     {
                        continue;
                     }
                  }
                  if(spellModifs.getTotalBonus(spellModifs.castIntervalSet))
                  {
                     interval = -spellModifs.getTotalBonus(spellModifs.castInterval) + spellModifs.getTotalBonus(spellModifs.castIntervalSet);
                  }
                  else
                  {
                     interval = interval - spellModifs.getTotalBonus(spellModifs.castInterval);
                  }
               }
               spellCastManager.getSpellManagerBySpellId(spellW.id).forceLastCastTurn(this.currentTurn + spellCooldown.cooldown - interval);
            }
         }
         this.needCooldownUpdate = false;
      }
      
      public function castSpell(pSpellId:uint, pSpellLevel:uint, pTargets:Array, pCountForCooldown:Boolean = true) : void
      {
         if(this._spells[pSpellId] == null)
         {
            this._spells[pSpellId] = new SpellManager(this,pSpellId,pSpellLevel);
         }
         (this._spells[pSpellId] as SpellManager).cast(this.currentTurn,pTargets,pCountForCooldown);
      }
      
      public function getSpellManagerBySpellId(pSpellId:uint, isForceNewInstance:Boolean = false, pSpellLevelId:int = -1) : SpellManager
      {
         var spellManager:SpellManager = this._spells[pSpellId] as SpellManager;
         if(spellManager === null && isForceNewInstance && pSpellLevelId !== -1)
         {
            spellManager = this._spells[pSpellId] = new SpellManager(this,pSpellId,pSpellLevelId);
         }
         return spellManager;
      }
      
      private function initializeSpellInitialCooldown(spellWrapper:SpellWrapper, hasBeenSummoned:Boolean) : void
      {
         var spellManager:SpellManager = null;
         if(spellWrapper.spellLevelInfos.initialCooldown !== 0)
         {
            if(hasBeenSummoned && spellWrapper.actualCooldown > spellWrapper.spellLevelInfos.initialCooldown)
            {
               return;
            }
            if(this._spells[spellWrapper.spellId] == null)
            {
               this._spells[spellWrapper.spellId] = new SpellManager(this,spellWrapper.spellId,spellWrapper.spellLevel);
            }
            spellManager = this._spells[spellWrapper.spellId];
            spellManager.resetInitialCooldown(this.currentTurn);
         }
      }
   }
}
