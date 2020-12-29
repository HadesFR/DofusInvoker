package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.TchatTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class TchatTooltipMaker implements ITooltipMaker
   {
       
      
      public function TchatTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/base.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new TchatTooltipBlock(data.text as String).block);
         tooltip.strata = -1;
         return tooltip;
      }
   }
}
