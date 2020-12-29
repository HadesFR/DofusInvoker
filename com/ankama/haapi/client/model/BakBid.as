package com.ankama.haapi.client.model
{
   public class BakBid
   {
       
      
      public var id:Number = 0;
      
      public var heading_id:Number = 0;
      
      public var account_id:Number = 0;
      
      public var sale_article_id:Number = 0;
      
      public var sale_quantity:Number = 0;
      
      public var sale_remaining:Number = 0;
      
      public var exchange_article_id:Number = 0;
      
      public var exchange_quantity:Number = 0;
      
      public var rate:Number = 0;
      
      public var seller_params:String = null;
      
      public var added_date:String = null;
      
      public var added_ip:String = null;
      
      public var current_status:String = null;
      
      public var current_status_date:String = null;
      
      public var current_status_account_id:Number = 0;
      
      public function BakBid()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "BakBid: ";
         str = str + (" (id: " + this.id + ")");
         str = str + (" (heading_id: " + this.heading_id + ")");
         str = str + (" (account_id: " + this.account_id + ")");
         str = str + (" (sale_article_id: " + this.sale_article_id + ")");
         str = str + (" (sale_quantity: " + this.sale_quantity + ")");
         str = str + (" (sale_remaining: " + this.sale_remaining + ")");
         str = str + (" (exchange_article_id: " + this.exchange_article_id + ")");
         str = str + (" (exchange_quantity: " + this.exchange_quantity + ")");
         str = str + (" (rate: " + this.rate + ")");
         str = str + (" (seller_params: " + this.seller_params + ")");
         str = str + (" (added_date: " + this.added_date + ")");
         str = str + (" (added_ip: " + this.added_ip + ")");
         str = str + (" (current_status: " + this.current_status + ")");
         str = str + (" (current_status_date: " + this.current_status_date + ")");
         str = str + (" (current_status_account_id: " + this.current_status_account_id + ")");
         return str;
      }
   }
}
