package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.TextTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class TextTooltipMaker implements ITooltipMaker
   {
       
      
      public function TextTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/baseWithBackground.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new TextTooltipBlock(data as String,param).block);
         return tooltip;
      }
   }
}
