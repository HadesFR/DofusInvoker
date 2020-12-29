package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.mount.PaddockItemBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldRpPaddockItemTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldRpPaddockItemTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new PaddockItemBlock(data).block);
         return tooltip;
      }
   }
}
