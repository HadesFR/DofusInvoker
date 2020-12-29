package com.ankama.haapi.client.model
{
   public class ShopMarketingDisplay
   {
       
      
      public var flag:ShopFlag = null;
      
      public var discount_percent:Number = 0;
      
      public var countdown:String = null;
      
      public function ShopMarketingDisplay()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopMarketingDisplay: ";
         str = str + (" (flag: " + this.flag + ")");
         str = str + (" (discount_percent: " + this.discount_percent + ")");
         str = str + (" (countdown: " + this.countdown + ")");
         return str;
      }
   }
}
