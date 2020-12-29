package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.MonsterFightBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldCompanionFighterTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldCompanionFighterTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/baseWithBackground.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new MonsterFightBlock().block);
         return tooltip;
      }
   }
}
