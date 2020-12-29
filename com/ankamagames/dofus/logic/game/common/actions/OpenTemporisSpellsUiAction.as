package com.ankamagames.dofus.logic.game.common.actions
{
   import com.ankamagames.dofus.misc.utils.AbstractAction;
   import com.ankamagames.jerakine.handlers.messages.Action;
   
   public class OpenTemporisSpellsUiAction extends AbstractAction implements Action
   {
       
      
      public var isSpellSetsUi:Boolean = false;
      
      public function OpenTemporisSpellsUiAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(isSpellSetsUi:Boolean = false) : OpenTemporisSpellsUiAction
      {
         var newOpenTemporisSpellsUiAction:OpenTemporisSpellsUiAction = new OpenTemporisSpellsUiAction(arguments);
         newOpenTemporisSpellsUiAction.isSpellSetsUi = isSpellSetsUi;
         return newOpenTemporisSpellsUiAction;
      }
   }
}
