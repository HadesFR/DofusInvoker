package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeRecurringVirtualSubscription
   {
       
      
      public var recurring_article:Number = 0;
      
      public var recurring_duration:String = null;
      
      public var recurring_missingday_article:Number = 0;
      
      public function ShopReferenceTypeRecurringVirtualSubscription()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeRecurringVirtualSubscription: ";
         str = str + (" (recurring_article: " + this.recurring_article + ")");
         str = str + (" (recurring_duration: " + this.recurring_duration + ")");
         str = str + (" (recurring_missingday_article: " + this.recurring_missingday_article + ")");
         return str;
      }
   }
}
