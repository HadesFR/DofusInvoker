package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeVirtualSubscriptionLevel
   {
       
      
      public var server_id:String = null;
      
      public var level:Number = 0;
      
      public function ShopReferenceTypeVirtualSubscriptionLevel()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeVirtualSubscriptionLevel: ";
         str = str + (" (server_id: " + this.server_id + ")");
         str = str + (" (level: " + this.level + ")");
         return str;
      }
   }
}
