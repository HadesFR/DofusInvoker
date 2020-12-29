package Ankama_Tooltips.blocks
{
   import Ankama_Tooltips.Api;
   import com.ankamagames.dofus.internalDatacenter.fight.EnumChallengeResult;
   
   public class ChallengeResultBlock
   {
       
      
      private const CHUNCK_DATA_KEY:String = "challengeResult";
      
      private var _result:uint;
      
      private var _content:String;
      
      private var _block:Object;
      
      public function ChallengeResultBlock(challenge:Object)
      {
         super();
         this._result = challenge.result;
         this._block = Api.tooltip.createTooltipBlock(this.onAllChunkLoaded,this.getContent);
         this._block.initChunk([Api.tooltip.createChunkData(this.CHUNCK_DATA_KEY,"chunks/challenge/result.txt")]);
      }
      
      public function onAllChunkLoaded() : void
      {
         var resultLabel:String = null;
         var cssClass:String = null;
         switch(this._result)
         {
            case EnumChallengeResult.IN_PROGRESS:
               resultLabel = Api.ui.getText("ui.fight.challenge.inProgress");
               cssClass = "p";
               break;
            case EnumChallengeResult.COMPLETED:
               resultLabel = Api.ui.getText("ui.fight.challenge.complete");
               cssClass = "bonus";
               break;
            case EnumChallengeResult.FAILED:
               resultLabel = Api.ui.getText("ui.fight.challenge.failed");
               cssClass = "malus";
         }
         this._content = this._block.getChunk(this.CHUNCK_DATA_KEY).processContent({
            "resultLabel":resultLabel,
            "cssClass":cssClass
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
