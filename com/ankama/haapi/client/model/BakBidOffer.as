package com.ankama.haapi.client.model
{
   public class BakBidOffer
   {
       
      
      public var ogrine:Number = 0;
      
      public var kama:Number = 0;
      
      public var rate:Number = 0;
      
      public var rate_text:String = null;
      
      public function BakBidOffer()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "BakBidOffer: ";
         str = str + (" (ogrine: " + this.ogrine + ")");
         str = str + (" (kama: " + this.kama + ")");
         str = str + (" (rate: " + this.rate + ")");
         str = str + (" (rate_text: " + this.rate_text + ")");
         return str;
      }
   }
}
