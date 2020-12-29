package com.ankama.haapi.client.model
{
   public class ShopPromo
   {
       
      
      public var name:String = null;
      
      public var description:String = null;
      
      public var image:String = null;
      
      public var start_date:Date = null;
      
      public var end_date:Date = null;
      
      private var _gifts_obj_class:Array = null;
      
      public var gifts:Vector.<ShopArticle#468>;
      
      public var flag:ShopFlag = null;
      
      private var _discounts_obj_class:Array = null;
      
      public var discounts:Vector.<ShopDiscount>;
      
      private var _conditions_obj_class:Array = null;
      
      public var conditions:Vector.<ShopCondition>;
      
      public var show_percent:Boolean = false;
      
      public var show_countdown:Boolean = false;
      
      public function ShopPromo()
      {
         this.gifts = new Vector.<ShopArticle#468>();
         this.discounts = new Vector.<ShopDiscount>();
         this.conditions = new Vector.<ShopCondition>();
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopPromo: ";
         str = str + (" (name: " + this.name + ")");
         str = str + (" (description: " + this.description + ")");
         str = str + (" (image: " + this.image + ")");
         str = str + (" (start_date: " + this.start_date + ")");
         str = str + (" (end_date: " + this.end_date + ")");
         str = str + (" (gifts: " + this.gifts + ")");
         str = str + (" (flag: " + this.flag + ")");
         str = str + (" (discounts: " + this.discounts + ")");
         str = str + (" (conditions: " + this.conditions + ")");
         str = str + (" (show_percent: " + this.show_percent + ")");
         str = str + (" (show_countdown: " + this.show_countdown + ")");
         return str;
      }
   }
}
