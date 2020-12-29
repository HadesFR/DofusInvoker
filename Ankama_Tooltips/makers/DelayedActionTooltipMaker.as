package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.DelayedActionTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class DelayedActionTooltipMaker implements ITooltipMaker
   {
       
      
      public function DelayedActionTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new DelayedActionTooltipBlock(data).block);
         tooltip.strata = -1;
         return tooltip;
      }
   }
}
