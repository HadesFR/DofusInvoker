package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.TextInfoTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class TextInfoTooltipMaker implements ITooltipMaker
   {
       
      
      public function TextInfoTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/simpleBaseWithBackground.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new TextInfoTooltipBlock().block);
         return tooltip;
      }
   }
}
