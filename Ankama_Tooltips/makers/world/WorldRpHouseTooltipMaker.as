package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.HouseTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldRpHouseTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldRpHouseTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new HouseTooltipBlock().block);
         return tooltip;
      }
   }
}
