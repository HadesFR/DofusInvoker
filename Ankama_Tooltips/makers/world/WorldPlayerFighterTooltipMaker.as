package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.CharacterFightBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldPlayerFighterTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldPlayerFighterTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new CharacterFightBlock().block);
         return tooltip;
      }
   }
}
