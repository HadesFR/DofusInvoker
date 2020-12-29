package com.ankama.haapi.client.model
{
   public class KardKardProba
   {
       
      
      public var kard:KardKard = null;
      
      public var probability:Number = 0.0;
      
      public var rarity:String = null;
      
      public function KardKardProba()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "KardKardProba: ";
         str = str + (" (kard: " + this.kard + ")");
         str = str + (" (probability: " + this.probability + ")");
         str = str + (" (rarity: " + this.rarity + ")");
         return str;
      }
   }
}
