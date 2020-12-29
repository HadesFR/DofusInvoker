package com.ankamagames.dofus.logic.game.common.misc
{
   import com.ankamagames.dofus.network.types.game.character.characteristic.CharacterBaseCharacteristic;
   
   public final class SpellModificator
   {
       
      
      public var apCost:CharacterBaseCharacteristic;
      
      public var castInterval:CharacterBaseCharacteristic;
      
      public var castIntervalSet:CharacterBaseCharacteristic;
      
      public var maxCastPerTurn:CharacterBaseCharacteristic;
      
      public var maxCastPerTarget:CharacterBaseCharacteristic;
      
      public function SpellModificator()
      {
         this.apCost = new CharacterBaseCharacteristic();
         this.castInterval = new CharacterBaseCharacteristic();
         this.castIntervalSet = new CharacterBaseCharacteristic();
         this.maxCastPerTurn = new CharacterBaseCharacteristic();
         this.maxCastPerTarget = new CharacterBaseCharacteristic();
         super();
      }
      
      public function getTotalBonus(pCharac:CharacterBaseCharacteristic) : int
      {
         if(!pCharac)
         {
            return 0;
         }
         return pCharac.alignGiftBonus + pCharac.base + pCharac.additionnal + pCharac.contextModif + pCharac.objectsAndMountBonus;
      }
   }
}
