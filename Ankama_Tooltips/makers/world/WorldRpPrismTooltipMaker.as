package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.WorldRpPrismBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldRpPrismTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldRpPrismTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new WorldRpPrismBlock(new Object()).block);
         return tooltip;
      }
   }
}
