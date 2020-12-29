package com.ankama.haapi.client.model
{
   public class ShopMeta
   {
       
      
      public var id:Number = 0;
      
      public var key:String = null;
      
      public var name:String = null;
      
      public function ShopMeta()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopMeta: ";
         str = str + (" (id: " + this.id + ")");
         str = str + (" (key: " + this.key + ")");
         str = str + (" (name: " + this.name + ")");
         return str;
      }
   }
}
