package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.mount.PaddockWithInstancesBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldRpPaddockTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldRpPaddockTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new PaddockWithInstancesBlock().block);
         return tooltip;
      }
   }
}
