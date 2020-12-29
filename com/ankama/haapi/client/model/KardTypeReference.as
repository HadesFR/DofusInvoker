package com.ankama.haapi.client.model
{
   public class KardTypeReference
   {
       
      
      public var id:Number = 0;
      
      public var name:String = null;
      
      public var description:String = null;
      
      public var quantity:Number = 0;
      
      public var type:String = null;
      
      public function KardTypeReference()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "KardTypeReference: ";
         str = str + (" (id: " + this.id + ")");
         str = str + (" (name: " + this.name + ")");
         str = str + (" (description: " + this.description + ")");
         str = str + (" (quantity: " + this.quantity + ")");
         str = str + (" (type: " + this.type + ")");
         return str;
      }
   }
}
