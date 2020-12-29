package mx.messaging.errors
{
   public class MessagingError extends Error
   {
       
      
      public function MessagingError(msg:String)
      {
         super(msg);
      }
      
      public function toString() : String
      {
         var value:* = "[MessagingError";
         if(message != null)
         {
            value = value + (" message=\'" + message + "\']");
         }
         else
         {
            value = value + "]";
         }
         return value;
      }
   }
}
