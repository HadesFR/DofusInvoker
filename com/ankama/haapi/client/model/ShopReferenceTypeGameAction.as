package com.ankama.haapi.client.model
{
   public class ShopReferenceTypeGameAction
   {
       
      
      public var definition:GameActionsDefinition = null;
      
      public function ShopReferenceTypeGameAction()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReferenceTypeGameAction: ";
         str = str + (" (definition: " + this.definition + ")");
         return str;
      }
   }
}
