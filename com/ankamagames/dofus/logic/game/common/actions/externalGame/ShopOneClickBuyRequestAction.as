package com.ankamagames.dofus.logic.game.common.actions.externalGame
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class ShopOneClickBuyRequestAction extends AbstractAction implements Action
   {
       
      
      public var data:String;
      
      public var currency:String;
      
      public var token:Number;
      
      public function ShopOneClickBuyRequestAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(data:String, currency:String, token:Number) : ShopOneClickBuyRequestAction
      {
         var action:ShopOneClickBuyRequestAction = new ShopOneClickBuyRequestAction(arguments);
         action.data = data;
         action.currency = currency;
         action.token = token;
         return action;
      }
   }
}
