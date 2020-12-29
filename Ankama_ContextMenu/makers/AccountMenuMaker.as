package Ankama_ContextMenu.makers
{
   import Ankama_ContextMenu.Api;
   import Ankama_ContextMenu.ContextMenu;
   import com.ankamagames.berilia.interfaces.IMenuMaker;
   import com.ankamagames.dofus.logic.game.common.actions.social.RemoveFriendAction;
   import com.ankamagames.dofus.misc.lists.ChatHookList;
   import com.ankamagames.jerakine.enum.SocialCharacterCategoryEnum;
   
   public class AccountMenuMaker implements IMenuMaker
   {
      
      public static var disabled:Boolean = false;
       
      
      protected var _accountId:String;
      
      public function AccountMenuMaker()
      {
         super();
      }
      
      protected function onWhisperMessage(accountName:String) : void
      {
         Api.system.dispatchHook(ChatHookList.ChatFocusInterGame,accountName);
      }
      
      protected function onRemoveContact(accountName:String, accountId:String) : void
      {
         this._accountId = accountId;
         Api.modCommon.openPopup(Api.ui.getText("ui.popup.warning"),Api.ui.getText("ui.social.doUDeleteContact",accountName),[Api.ui.getText("ui.common.yes"),Api.ui.getText("ui.common.no")],[this.onAcceptRemoveContact],this.onAcceptRemoveContact);
      }
      
      protected function onAcceptRemoveContact() : void
      {
         Api.system.sendAction(new RemoveFriendAction([parseInt(this._accountId)]));
      }
      
      protected function onRemoveFriends(accountName:String, accountId:String) : void
      {
         this._accountId = accountId;
         Api.modCommon.openPopup(Api.ui.getText("ui.popup.warning"),Api.ui.getText("ui.social.doUDeleteFriend",accountName),[Api.ui.getText("ui.common.yes"),Api.ui.getText("ui.common.no")],[this.onAcceptRemoveFriends],this.onAcceptRemoveFriends);
      }
      
      protected function onAcceptRemoveFriends() : void
      {
         Api.chatServiceApi.service.deleteUserFriend(this._accountId);
      }
      
      public function createMenu(data:*, param:Object) : Array
      {
         var menu:Array = [];
         if(data.category == SocialCharacterCategoryEnum.CATEGORY_FRIEND_ANKAMA)
         {
            menu.push(ContextMenu.static_createContextMenuItemObject(Api.ui.getText("ui.common.wisperMessage"),this.onWhisperMessage,[data.name],disabled));
         }
         if(data.category)
         {
            menu.push(ContextMenu.static_createContextMenuSeparatorObject());
            if(data.category == SocialCharacterCategoryEnum.CATEGORY_FRIEND_ANKAMA)
            {
               menu.push(ContextMenu.static_createContextMenuItemObject(Api.ui.getText("ui.social.removeFromAnkamaFriends"),this.onRemoveFriends,[data.name,data.id],disabled));
            }
            if(data.category == SocialCharacterCategoryEnum.CATEGORY_CONTACT || data.category == SocialCharacterCategoryEnum.CATEGORY_FRIEND)
            {
               menu.push(ContextMenu.static_createContextMenuItemObject(Api.ui.getText("ui.social.removeFromContacts"),this.onRemoveContact,[data.name,data.id],disabled));
            }
         }
         return menu;
      }
   }
}
