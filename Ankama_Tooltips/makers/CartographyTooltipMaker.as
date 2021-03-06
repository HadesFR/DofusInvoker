package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.CartographyTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class CartographyTooltipMaker implements ITooltipMaker
   {
       
      
      public function CartographyTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/empty.txt");
         tooltip.addBlock(new CartographyTooltipBlock(data).block);
         return tooltip;
      }
   }
}
