package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.TextTooltipBlock;
   import Ankama_Tooltips.blocks.TitleTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class TextWithTitleTooltipMaker implements ITooltipMaker
   {
       
      
      private const chunkType:String = "htmlChunks";
      
      public function TextWithTitleTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip(this.chunkType + "/base/baseWithBackground.txt",this.chunkType + "/base/container.txt");
         tooltip.chunkType = this.chunkType;
         tooltip.addBlock(new TitleTooltipBlock(data.title).block);
         tooltip.addBlock(new TextTooltipBlock(data.text,null,this.chunkType).block);
         return tooltip;
      }
   }
}
