package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.SmileyTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class SmileyTooltipMaker implements ITooltipMaker
   {
       
      
      public function SmileyTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new SmileyTooltipBlock(data.id).block);
         tooltip.strata = -1;
         return tooltip;
      }
   }
}
