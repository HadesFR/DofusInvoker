package Ankama_Tooltips.blocks
{
   import Ankama_Tooltips.Api;
   
   public class ChallengeTooltipBlock
   {
       
      
      private var _challenge:Object;
      
      private var _content:String;
      
      private var _block:Object;
      
      public function ChallengeTooltipBlock(challenge:Object)
      {
         super();
         this._challenge = challenge;
         this._block = Api.tooltip.createTooltipBlock(this.onAllChunkLoaded,this.getContent);
         this._block.initChunk([Api.tooltip.createChunkData("header","chunks/challenge/header.txt")]);
      }
      
      public function onAllChunkLoaded() : void
      {
         var uiApi:Object = Api.ui;
         this._content = this._block.getChunk("header").processContent({
            "loot":uiApi.getText("ui.common.loot") + " +" + this._challenge.dropBonus + "%",
            "experience":uiApi.getText("ui.common.xp") + " +" + this._challenge.xpBonus + "%"
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
