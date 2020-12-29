package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.ThinkTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class ThinkTooltipMaker implements ITooltipMaker
   {
       
      
      public function ThinkTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new ThinkTooltipBlock(data.text as String).block);
         tooltip.strata = -1;
         return tooltip;
      }
   }
}
