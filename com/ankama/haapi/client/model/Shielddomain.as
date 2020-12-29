package com.ankama.haapi.client.model
{
   public class Shielddomain
   {
       
      
      public var domain:String = null;
      
      public function Shielddomain()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "Shielddomain: ";
         str = str + (" (domain: " + this.domain + ")");
         return str;
      }
   }
}
