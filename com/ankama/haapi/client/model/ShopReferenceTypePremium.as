package com.ankama.haapi.client.model
{
   public class ShopReferenceTypePremium
   {
       
      
      public var status:String = null;
      
      public function ShopReferenceTypePremium()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypePremium: ";
         str = str + (" (status: " + this.status + ")");
         return str;
      }
   }
}
