package com.ankamagames.dofus.datacenter.items.criterion
{
   import com.ankamagames.dofus.datacenter.servers.ServerTemporisSeason;
   import com.ankamagames.jerakine.interfaces.IDataCenter;
   
   public class ServerSeasonTemporisCriterion extends ItemCriterion implements IDataCenter
   {
       
      
      public function ServerSeasonTemporisCriterion(pCriterion:String)
      {
         super(pCriterion);
      }
      
      override public function get isRespected() : Boolean
      {
         var serverSeason:ServerTemporisSeason = ServerTemporisSeason.getCurrentSeason();
         return serverSeason !== null && serverSeason.seasonNumber == _criterionValue;
      }
      
      override public function get text() : String
      {
         return "";
      }
      
      override public function clone() : IItemCriterion
      {
         var clonedCriterion:ServerSeasonTemporisCriterion = new ServerSeasonTemporisCriterion(this.basicText);
         return clonedCriterion;
      }
   }
}
