package com.ankama.haapi.client.model
{
   public class GameActionsActionsTypeMeta
   {
       
      
      public var destination_account_id:Number = 0;
      
      public var type:String = null;
      
      public var quantity:Number = 0;
      
      public var theme_id:Number = 0;
      
      public var item_id:Number = 0;
      
      public var effect:String = null;
      
      public var bond:Number = 0;
      
      public var distribution:String = null;
      
      public var character_id:Number = 0;
      
      public var kard_id:Number = 0;
      
      public var booster_guid:String = null;
      
      public var server_id:Number = 0;
      
      public var tradingcard_id:String = null;
      
      public var customisation_id:Number = 0;
      
      public var god_id:Number = 0;
      
      public var account_id:Number = 0;
      
      public var figure_id:Number = 0;
      
      public var pedestral_id:Number = 0;
      
      public var bind_type:String = null;
      
      public var consume_type:String = null;
      
      public var companion_xp:Number = 0;
      
      public var pet_xp:Number = 0;
      
      public var gems:GameActionsGems = null;
      
      public var shards:GameActionsShards = null;
      
      public function GameActionsActionsTypeMeta()
      {
         super();
      }
      
      public function toString() : String
      {
         var str:String = "GameActionsActionsTypeMeta: ";
         str = str + (" (destination_account_id: " + this.destination_account_id + ")");
         str = str + (" (type: " + this.type + ")");
         str = str + (" (quantity: " + this.quantity + ")");
         str = str + (" (theme_id: " + this.theme_id + ")");
         str = str + (" (item_id: " + this.item_id + ")");
         str = str + (" (effect: " + this.effect + ")");
         str = str + (" (bond: " + this.bond + ")");
         str = str + (" (distribution: " + this.distribution + ")");
         str = str + (" (character_id: " + this.character_id + ")");
         str = str + (" (kard_id: " + this.kard_id + ")");
         str = str + (" (booster_guid: " + this.booster_guid + ")");
         str = str + (" (server_id: " + this.server_id + ")");
         str = str + (" (tradingcard_id: " + this.tradingcard_id + ")");
         str = str + (" (customisation_id: " + this.customisation_id + ")");
         str = str + (" (god_id: " + this.god_id + ")");
         str = str + (" (account_id: " + this.account_id + ")");
         str = str + (" (figure_id: " + this.figure_id + ")");
         str = str + (" (pedestral_id: " + this.pedestral_id + ")");
         str = str + (" (bind_type: " + this.bind_type + ")");
         str = str + (" (consume_type: " + this.consume_type + ")");
         str = str + (" (companion_xp: " + this.companion_xp + ")");
         str = str + (" (pet_xp: " + this.pet_xp + ")");
         str = str + (" (gems: " + this.gems + ")");
         str = str + (" (shards: " + this.shards + ")");
         return str;
      }
   }
}
