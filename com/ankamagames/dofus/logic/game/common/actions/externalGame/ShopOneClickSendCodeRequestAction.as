package com.ankamagames.dofus.logic.game.common.actions.externalGame
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class ShopOneClickSendCodeRequestAction extends AbstractAction implements Action
   {
       
      
      public var orderId:Number;
      
      public function ShopOneClickSendCodeRequestAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(orderId:Number) : ShopOneClickSendCodeRequestAction
      {
         var action:ShopOneClickSendCodeRequestAction = new ShopOneClickSendCodeRequestAction(arguments);
         action.orderId = orderId;
         return action;
      }
   }
}
