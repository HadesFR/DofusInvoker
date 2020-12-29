package com.ankamagames.jerakine.utils.memory
{
   import flash.utils.Dictionary;
   
   public class WeakReference
   {
       
      
      private var dictionary:Dictionary;
      
      public function WeakReference(obj:*)
      {
         super();
         this.dictionary = new Dictionary(true);
         this.dictionary[obj] = null;
      }
      
      public function get object() : *
      {
         var n:* = undefined;
         for(n in this.dictionary)
         {
            return n;
         }
         return null;
      }
      
      public function destroy() : void
      {
         this.dictionary = null;
      }
   }
}
