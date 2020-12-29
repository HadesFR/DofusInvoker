package com.ankamagames.dofus.logic.connection.actions
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class AcquaintanceSearchAction extends AbstractAction implements Action
   {
       
      
      public var friendName:String;
      
      public function AcquaintanceSearchAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(friendName:String) : AcquaintanceSearchAction
      {
         var a:AcquaintanceSearchAction = new AcquaintanceSearchAction(arguments);
         a.friendName = friendName;
         return a;
      }
   }
}
