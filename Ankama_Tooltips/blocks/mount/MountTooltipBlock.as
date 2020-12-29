package Ankama_Tooltips.blocks.mount
{
   import Ankama_Tooltips.Api;
   
   public class MountTooltipBlock
   {
       
      
      private var _content:String;
      
      private var _mount:Object;
      
      private var _block:Object;
      
      public function MountTooltipBlock(mount:Object)
      {
         super();
         this._mount = mount;
         this._block = Api.tooltip.createTooltipBlock(this.onAllChunkLoaded,this.getContent);
         this._block.initChunk(new Array(Api.tooltip.createChunkData("base","chunks/mount/base.txt")));
      }
      
      public function onAllChunkLoaded() : void
      {
         var uiApi:Object = Api.ui;
         this._content = this._block.getChunk("base").processContent(this._mount);
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
