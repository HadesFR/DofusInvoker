package com.ankama.haapi.client.model
{
   public class CmsLoadingscreen
   {
       
      
      public var id:Number = 0;
      
      public var background:String = null;
      
      public var foreground:String = null;
      
      public var url:String = null;
      
      public var count:Number = 0;
      
      public var screen:Number = 0;
      
      public var begin:Date = null;
      
      public var end:Date = null;
      
      public function CmsLoadingscreen()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "CmsLoadingscreen: ";
         str = str + (" (id: " + this.id + ")");
         str = str + (" (background: " + this.background + ")");
         str = str + (" (foreground: " + this.foreground + ")");
         str = str + (" (url: " + this.url + ")");
         str = str + (" (count: " + this.count + ")");
         str = str + (" (screen: " + this.screen + ")");
         str = str + (" (begin: " + this.begin + ")");
         str = str + (" (end: " + this.end + ")");
         return str;
      }
   }
}
