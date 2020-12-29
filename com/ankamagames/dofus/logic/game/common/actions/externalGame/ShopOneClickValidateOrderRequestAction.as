package com.ankamagames.dofus.logic.game.common.actions.externalGame
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class ShopOneClickValidateOrderRequestAction extends AbstractAction implements Action
   {
       
      
      public var orderId:Number;
      
      public var code:String;
      
      public function ShopOneClickValidateOrderRequestAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(orderId:Number, code:String) : ShopOneClickValidateOrderRequestAction
      {
         var action:ShopOneClickValidateOrderRequestAction = new ShopOneClickValidateOrderRequestAction(arguments);
         action.orderId = orderId;
         action.code = code;
         return action;
      }
   }
}
