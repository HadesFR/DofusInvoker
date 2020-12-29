package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeVirtualGift
   {
       
      
      public var image:String = null;
      
      public var description:String = null;
      
      public var name:String = null;
      
      public var id:Number = 0;
      
      public function ShopReferenceTypeVirtualGift()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeVirtualGift: ";
         str = str + (" (image: " + this.image + ")");
         str = str + (" (description: " + this.description + ")");
         str = str + (" (name: " + this.name + ")");
         str = str + (" (id: " + this.id + ")");
         return str;
      }
   }
}
