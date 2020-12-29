package Ankama_Tooltips.makers.world
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.TextTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class WorldRpGroundObjectTooltipMaker implements ITooltipMaker
   {
       
      
      public function WorldRpGroundObjectTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/baseWithBackground.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new TextTooltipBlock(data.object.name,{
            "css":"[local.css]tooltip_default.css",
            "classCss":"center"
         }).block);
         return tooltip;
      }
   }
}
