package Ankama_Tooltips.makers
{
   import Ankama_Tooltips.Api;
   import Ankama_Tooltips.blocks.TextWithShortcutTooltipBlock;
   import com.ankamagames.berilia.interfaces.ITooltipMaker;
   
   public class TextWithShortcutTooltipMaker implements ITooltipMaker
   {
       
      
      public function TextWithShortcutTooltipMaker()
      {
         super();
      }
      
      public function createTooltip(data:*, param:Object) : Object
      {
         var tooltip:Object = Api.tooltip.createTooltip("chunks/base/baseWithBackground.txt","chunks/base/container.txt","chunks/base/separator.txt");
         tooltip.addBlock(new TextWithShortcutTooltipBlock(data as String,param).block);
         return tooltip;
      }
   }
}
