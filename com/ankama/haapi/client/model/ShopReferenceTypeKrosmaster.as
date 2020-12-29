package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeKrosmaster
   {
       
      
      public var pedestal:Number = 0;
      
      public var id:Number = 0;
      
      public function ShopReferenceTypeKrosmaster()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeKrosmaster: ";
         str = str + (" (pedestal: " + this.pedestal + ")");
         str = str + (" (id: " + this.id + ")");
         return str;
      }
   }
}
