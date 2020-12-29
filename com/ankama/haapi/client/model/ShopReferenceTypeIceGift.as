package com.ankama.haapi.client.model
{
   import flash.utils.Dictionary;
   
   public class ShopReferenceTypeIceGift
   {
       
      
      public var image:String = null;
      
      public var description:String = null;
      
      public var name:String = null;
      
      public var id:Number = 0;
      
      private var _metas_obj_class:Dictionary = null;
      
      public var metas:Vector.<String>;
      
      public function ShopReferenceTypeIceGift()
      {
         this.metas = new Vector.<String>();
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeIceGift: ";
         str = str + (" (image: " + this.image + ")");
         str = str + (" (description: " + this.description + ")");
         str = str + (" (name: " + this.name + ")");
         str = str + (" (id: " + this.id + ")");
         str = str + (" (metas: " + this.metas + ")");
         return str;
      }
   }
}
