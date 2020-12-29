package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.BreachRoomTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class BreachRoomTooltipMaker implements ITooltipMaker
   {
       
      
      public function BreachRoomTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/baseWithBackground.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new BreachRoomTooltipBlock(data).block);
         return tooltip;
      }
   }
}
