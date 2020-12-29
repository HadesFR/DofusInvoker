package com.ankama.haapi.client.model
{
   public class ShopMetaGroup
   {
       
      
      public var id:Number = 0;
      
      public var key:String = null;
      
      public var name:String = null;
      
      private var _metas_obj_class:Array = null;
      
      public var metas:Vector.<ShopMeta>;
      
      public function ShopMetaGroup()
      {
         this.metas = new Vector.<ShopMeta>();
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopMetaGroup: ";
         str = str + (" (id: " + this.id + ")");
         str = str + (" (key: " + this.key + ")");
         str = str + (" (name: " + this.name + ")");
         str = str + (" (metas: " + this.metas + ")");
         return str;
      }
   }
}
