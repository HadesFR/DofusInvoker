package damageCalculation.fighterManagement
{
   public interface IFighterData
   {
       
      
      function useSummonSlot() : Boolean;
      
      function resolveDodge() : int;
      
      function isSummon() : Boolean;
      
      function isInvisible() : Boolean;
      
      function getUsedPM() : int;
      
      function getTurnBeginPosition() : int;
      
      function getSummonerId() : Number;
      
      function getStartedPositionCell() : int;
      
      function getPreviousPosition() : int;
      
      function getItemSpellDamageModification(param1:int) : int;
      
      function getItemSpellBaseDamageModification(param1:int) : int;
      
      function getBaseCharacteristicValue(param1:String) : int;
      
      function canBreedUsePortals() : Boolean;
      
      function canBreedSwitchPosOnTarget() : Boolean;
      
      function canBreedSwitchPos() : Boolean;
      
      function canBreedBePushed() : Boolean;
      
      function canBreedBeCarried() : Boolean;
   }
}
