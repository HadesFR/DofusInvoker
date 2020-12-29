package com.ankama.haapi.client.model
{
   public class ShopBuyError
   {
      
      public static const ReasonEnum_NOPRICE:String = "NOPRICE";
      
      public static const ReasonEnum_STOCKMISSING:String = "STOCKMISSING";
      
      public static const ReasonEnum_PAIDFAILED:String = "PAIDFAILED";
      
      public static const ReasonEnum_CANCELFAILED:String = "CANCELFAILED";
      
      public static const ReasonEnum_CREATEFAILED:String = "CREATEFAILED";
      
      public static const ReasonEnum_MISSINGMONEY:String = "MISSINGMONEY";
      
      public static const ReasonEnum_PARTNER_ERROR:String = "PARTNER_ERROR";
      
      public static const ReasonEnum_PARTNER_MISSING:String = "PARTNER_MISSING";
      
      public static const ReasonEnum_PARTNER_NOORDER:String = "PARTNER_NOORDER";
      
      public static const ReasonEnum_RECEIPT_ALREADY_VALIDATED:String = "RECEIPT_ALREADY_VALIDATED";
      
      public static const ReasonEnum_STEAM_NOT_TRUSTED_USER:String = "STEAM_NOT_TRUSTED_USER";
      
      public static const ReasonEnum_PAYMENT_CODE_NOT_SENT:String = "PAYMENT_CODE_NOT_SENT";
      
      public static const ReasonEnum_ACCOUNT_ALREADY_HAS_CHALLENGED_ORDER:String = "ACCOUNT_ALREADY_HAS_CHALLENGED_ORDER";
      
      public static const ReasonEnum_CONDITIONFAILED:String = "CONDITIONFAILED";
      
      public static const ReasonEnum_INVALID_AMOUNT:String = "INVALID_AMOUNT";
      
      public static const ReasonEnum_BADTOKEN:String = "BADTOKEN";
      
      public static const ReasonEnum_DELETEDTOKEN:String = "DELETEDTOKEN";
      
      public static const ReasonEnum_BADTOKENACCOUNT:String = "BADTOKENACCOUNT";
      
      public static const ReasonEnum_BADTOKENCODE:String = "BADTOKENCODE";
      
      public static const ReasonEnum_BADORDER:String = "BADORDER";
      
      public static const ReasonEnum_INVALID_ARTICLE_ID:String = "INVALID_ARTICLE_ID";
      
      public static const ReasonEnum_SHOP_NOT_FOUND:String = "SHOP_NOT_FOUND";
      
      public static const ReasonEnum_ARTICLE_CONDITION_NOT_MET:String = "ARTICLE_CONDITION_NOT_MET";
      
      public static const ReasonEnum_FAIL_ADD_ARTICLE_TO_ORDER:String = "FAIL_ADD_ARTICLE_TO_ORDER";
       
      
      public var reason:String = null;
      
      public var order_id:Number = 0;
      
      public function ShopBuyError()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopBuyError: ";
         str = str + (" (reason: " + this.reason + ")");
         str = str + (" (order_id: " + this.order_id + ")");
         return str;
      }
   }
}
