package com.ankama.haapi.client.model
{
   public class ShopPaymentHkCodeSendResult
   {
       
      
      public var success:Boolean = false;
      
      public function ShopPaymentHkCodeSendResult()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopPaymentHkCodeSendResult: ";
         str = str + (" (success: " + this.success + ")");
         return str;
      }
   }
}
