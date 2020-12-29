package com.ankama.haapi.client.model
{
   public class ShopCondition
   {
       
      
      public var key:String = null;
      
      public var compare:String = null;
      
      private var _values_obj_class:Array = null;
      
      public var values:Vector.<String>;
      
      public function ShopCondition()
      {
         this.values = new Vector.<String>();
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopCondition: ";
         str = str + (" (key: " + this.key + ")");
         str = str + (" (compare: " + this.compare + ")");
         str = str + (" (values: " + this.values + ")");
         return str;
      }
   }
}
