package com.ankamagames.dofus.logic.game.common.frames
{
   import com.ankamagames.berilia.Berilia;
   import com.ankamagames.berilia.managers.KernelEventsManager;
   import com.ankamagames.dofus.kernel.net.ConnectionsHandler;
   import com.ankamagames.dofus.logic.common.managers.NotificationManager;
   import com.ankamagames.dofus.logic.game.common.actions.ForgettableSpellClientAction;
   import com.ankamagames.dofus.logic.game.common.actions.OpenTemporisSpellsUiAction;
   import com.ankamagames.dofus.misc.lists.HookList;
   import com.ankamagames.dofus.network.messages.game.character.spell.forgettable.ForgettableSpellClientActionMessage;
   import com.ankamagames.jerakine.logger.Log;
   import com.ankamagames.jerakine.logger.Logger;
   import com.ankamagames.jerakine.messages.Frame;
   import com.ankamagames.jerakine.messages.Message;
   import com.ankamagames.jerakine.types.enums.Priority;
   import flash.utils.getQualifiedClassName;
   
   public class TemporisSpellsUiFrame implements Frame
   {
      
      private static const _log:Logger = Log.getLogger(getQualifiedClassName(TemporisSpellsUiFrame));
      
      private static const TEMPORIS_SPELLS_UI_NAME:String = "temporisSpellsUi";
      
      private static const STORAGE_UI_NAME:String = "storage";
      
      private static const EQUIPMENT_UI_NAME:String = "equipment";
      
      private static const BANK_UI_NAME:String = "bank";
      
      private static const INVENTORY_UI_NAME:String = "inventory";
       
      
      public function TemporisSpellsUiFrame()
      {
         super();
      }
      
      public function pushed() : Boolean
      {
         return true;
      }
      
      public function pulled() : Boolean
      {
         return true;
      }
      
      public function process(msg:Message) : Boolean
      {
         var action:OpenTemporisSpellsUiAction = null;
         var paramsObject:Object = null;
         var fscaaction:ForgettableSpellClientAction = null;
         var fpcamsg:ForgettableSpellClientActionMessage = null;
         switch(true)
         {
            case msg is OpenTemporisSpellsUiAction:
               if(Berilia.getInstance().getUi(STORAGE_UI_NAME) !== null || Berilia.getInstance().getUi(EQUIPMENT_UI_NAME) !== null || Berilia.getInstance().getUi(BANK_UI_NAME) !== null || Berilia.getInstance().getUi(INVENTORY_UI_NAME) !== null)
               {
                  return true;
               }
               action = msg as OpenTemporisSpellsUiAction;
               paramsObject = {};
               if(action.isSpellSetsUi)
               {
                  paramsObject["isSpellSetsUi"] = true;
               }
               NotificationManager.getInstance().closeNotification("FirstForgettableSpellNotif");
               if(Berilia.getInstance().getUi(TEMPORIS_SPELLS_UI_NAME) === null)
               {
                  KernelEventsManager.getInstance().processCallback(HookList.OpenBook,TEMPORIS_SPELLS_UI_NAME,paramsObject);
               }
               return true;
            case msg is ForgettableSpellClientAction:
               fscaaction = msg as ForgettableSpellClientAction;
               fpcamsg = new ForgettableSpellClientActionMessage();
               fpcamsg.initForgettableSpellClientActionMessage(fscaaction.spellId,fscaaction.action);
               ConnectionsHandler.getConnection().send(fpcamsg);
               return true;
            default:
               return false;
         }
      }
      
      public function get priority() : int
      {
         return Priority.HIGH;
      }
   }
}
