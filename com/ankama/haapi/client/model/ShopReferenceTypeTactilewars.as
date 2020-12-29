package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeTactilewars
   {
       
      
      public var item:String = null;
      
      public var rarity:Number = 0;
      
      public function ShopReferenceTypeTactilewars()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeTactilewars: ";
         str = str + (" (item: " + this.item + ")");
         str = str + (" (rarity: " + this.rarity + ")");
         return str;
      }
   }
}
