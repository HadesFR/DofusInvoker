package com.ankama.haapi.client.model
{
   public class GameActionsGems
   {
       
      
      public var gem1:Number = 0;
      
      public var gem2:Number = 0;
      
      public var gem3:Number = 0;
      
      public function GameActionsGems()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "GameActionsGems: ";
         str = str + (" (gem1: " + this.gem1 + ")");
         str = str + (" (gem2: " + this.gem2 + ")");
         str = str + (" (gem3: " + this.gem3 + ")");
         return str;
      }
   }
}
