package Ankama_ContextMenu.makers
{
   public class PartyMemberMenuMaker extends PlayerMenuMaker
   {
       
      
      public function PartyMemberMenuMaker()
      {
         super();
      }
      
      override public function createMenu(data:*, param:Object) : Array
      {
         var playerName:String = data.name;
         var playerId:Number = data.id;
         var playerAlignement:Object = null;
         var playerIsOnSameMap:Boolean = data.onSameMap;
         if(playerIsOnSameMap)
         {
            playerAlignement = data.alignmentInfos;
         }
         _partyId = int(param);
         return super.createMenu2(playerName,playerId,false,playerAlignement,data.guildInformations,null,null,0,data.cantBeChallenged,data.cantExchange);
      }
   }
}
