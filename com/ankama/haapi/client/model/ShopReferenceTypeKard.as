package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeKard
   {
       
      
      public var id:Number = 0;
      
      public var type:String = null;
      
      public var name:String = null;
      
      public var description:String = null;
      
      public var image:String = null;
      
      private var _kards_obj_class:Array = null;
      
      public var kards:Vector.<KardKardProba>;
      
      public function ShopReferenceTypeKard()
      {
         this.kards = new Vector.<KardKardProba>();
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeKard: ";
         str = str + (" (id: " + this.id + ")");
         str = str + (" (type: " + this.type + ")");
         str = str + (" (name: " + this.name + ")");
         str = str + (" (description: " + this.description + ")");
         str = str + (" (image: " + this.image + ")");
         str = str + (" (kards: " + this.kards + ")");
         return str;
      }
   }
}
