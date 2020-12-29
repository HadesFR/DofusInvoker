package com.ankamagames.dofus.logic.game.common.actions.social
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class AddFriendAction extends AbstractAction implements Action
   {
       
      
      public var name:String;
      
      public function AddFriendAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(name:String) : AddFriendAction
      {
         var a:AddFriendAction = new AddFriendAction(arguments);
         a.name = name;
         return a;
      }
   }
}
