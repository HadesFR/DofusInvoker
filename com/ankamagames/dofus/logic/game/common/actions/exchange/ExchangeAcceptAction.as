package com.ankamagames.dofus.logic.game.common.actions.exchange
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class ExchangeAcceptAction extends AbstractAction implements Action
   {
       
      
      public function ExchangeAcceptAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create() : ExchangeAcceptAction
      {
         var a:ExchangeAcceptAction = new ExchangeAcceptAction(arguments);
         return a;
      }
   }
}
