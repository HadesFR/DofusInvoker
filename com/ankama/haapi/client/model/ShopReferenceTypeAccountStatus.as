package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeAccountStatus
   {
       
      
      public var status:String = null;
      
      public var type:String = null;
      
      public var value:String = null;
      
      public function ShopReferenceTypeAccountStatus()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeAccountStatus: ";
         str = str + (" (status: " + this.status + ")");
         str = str + (" (type: " + this.type + ")");
         str = str + (" (value: " + this.value + ")");
         return str;
      }
   }
}
