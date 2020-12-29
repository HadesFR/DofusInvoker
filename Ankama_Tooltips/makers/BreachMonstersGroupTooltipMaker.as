package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.BreachMonstersBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class BreachMonstersGroupTooltipMaker implements ITooltipMaker
   {
       
      
      public function BreachMonstersGroupTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new BreachMonstersBlock().block);
         return tooltip;
      }
   }
}
