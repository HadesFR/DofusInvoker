package Ankama_Tooltips.blocks
{
   import Ankama_Tooltips.Api;
   
   public class TextInfoWithHorizontalSeparatorTooltipBlock
   {
       
      
      private var _content:String;
      
      private var _data:Object;
      
      private var _block:Object;
      
      public function TextInfoWithHorizontalSeparatorTooltipBlock(pData:Object)
      {
         super();
         this._data = pData;
         this._block = Api.tooltip.createTooltipBlock(this.onAllChunkLoaded,this.getContent);
         this._block.initChunk([Api.tooltip.createChunkData("content","chunks/textInfoWithSeparator/textInfoWithHorizontalSeparator.txt")]);
      }
      
      public function onAllChunkLoaded() : void
      {
         this._content = this._block.getChunk("content").content;
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
