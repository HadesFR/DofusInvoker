package Ankama_Tooltips.blocks
{
   import Ankama_Tooltips.Api;
   import com.ankamagames.dofus.datacenter.items.Item;
   import com.ankamagames.dofus.internalDatacenter.communication.DelayedActionItem;
   import com.ankamagames.dofus.network.enums.DelayedActionTypeEnum;
   
   public class DelayedActionTooltipBlock
   {
       
      
      private var _content:String;
      
      private var _block:Object;
      
      private var _iconUrl:String;
      
      private var _data:DelayedActionItem;
      
      public function DelayedActionTooltipBlock(data:DelayedActionItem)
      {
         var item:Item = null;
         super();
         this._data = data;
         switch(data.type)
         {
            case DelayedActionTypeEnum.DELAYED_ACTION_OBJECT_USE:
               item = Api.data.getItem(data.dataId);
               if(item)
               {
                  this._iconUrl = "[config.gfx.path.item.bitmap]" + item.iconId + ".png";
               }
         }
         this._block = Api.tooltip.createTooltipBlock(this.onAllChunkLoaded,this.getContent);
         this._block.initChunk([Api.tooltip.createChunkData("content","chunks/world/delayedAction.txt")]);
      }
      
      public function onAllChunkLoaded() : void
      {
         var uri:String = null;
         var backgroundName:String = null;
         switch(this._data.type)
         {
            case DelayedActionTypeEnum.DELAYED_ACTION_OBJECT_USE:
               backgroundName = "[local.assets]delayedItemUse";
         }
         this._content = this._block.getChunk("content").processContent({
            "uri":this._iconUrl,
            "backName":backgroundName
         });
      }
      
      public function getContent() : String
      {
         return this._content;
      }
      
      public function get block() : Object
      {
         return this._block;
      }
   }
}
