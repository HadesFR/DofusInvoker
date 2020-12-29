package com.ankamagames.dofus.logic.game.fight.actions
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class TimelineEntityOutAction extends AbstractAction implements Action
   {
       
      
      public var targetId:Number;
      
      public function TimelineEntityOutAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(target:Number) : TimelineEntityOutAction
      {
         var a:TimelineEntityOutAction = new TimelineEntityOutAction(arguments);
         a.targetId = target;
         return a;
      }
   }
}
