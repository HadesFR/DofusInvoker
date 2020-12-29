package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.TextureTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class TexturesListTooltipMaker implements ITooltipMaker
   {
       
      
      public function TexturesListTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var uri:* = undefined;
         var bg:String = "chunks/base/base.txt";
         var tooltip:Object = Api.tooltip.createTooltip(bg,"chunks/base/linearContainer.txt");
         var texturesList:Object = data;
         for each(uri in texturesList)
         {
            tooltip.addBlock(new TextureTooltipBlock(uri).block);
         }
         tooltip.strata = -1;
         return tooltip;
      }
   }
}
