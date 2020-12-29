package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.WorldRpMonstersAgeBonusBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldRpMonstersGroupTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldRpMonstersGroupTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new WorldRpMonstersAgeBonusBlock().block);
         return tooltip;
      }
   }
}
