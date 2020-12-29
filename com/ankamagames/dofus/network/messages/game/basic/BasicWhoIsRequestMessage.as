package com.ankamagames.dofus.network.messages.game.basic
{
   import com.ankamagames.jerakine.network.CustomDataWrapper;
   import com.ankamagames.jerakine.network.ICustomDataInput;
   import com.ankamagames.jerakine.network.ICustomDataOutput;
   import com.ankamagames.jerakine.network.INetworkMessage;
   import com.ankamagames.jerakine.network.NetworkMessage;
   import com.ankamagames.jerakine.network.utils.FuncTree;
   import flash.utils.ByteArray;
   
   public class BasicWhoIsRequestMessage extends NetworkMessage implements INetworkMessage
   {
      
      public static const protocolId:uint = 5985;
       
      
      private var _isInitialized:Boolean = false;
      
      public var verbose:Boolean = false;
      
      public var search:String = "";
      
      public function BasicWhoIsRequestMessage()
      {
         super();
      }
      
      override public function get isInitialized() : Boolean
      {
         return this._isInitialized;
      }
      
      override public function getMessageId() : uint
      {
         return 5985;
      }
      
      public function initBasicWhoIsRequestMessage(verbose:Boolean = false, search:String = "") : BasicWhoIsRequestMessage
      {
         this.verbose = verbose;
         this.search = search;
         this._isInitialized = true;
         return this;
      }
      
      override public function reset() : void
      {
         this.verbose = false;
         this.search = "";
         this._isInitialized = false;
      }
      
      override public function pack(output:ICustomDataOutput) : void
      {
         var data:ByteArray = new ByteArray();
         this.serialize(new CustomDataWrapper(data));
         if(HASH_FUNCTION != null)
         {
            HASH_FUNCTION(data);
         }
         writePacket(output,this.getMessageId(),data);
      }
      
      override public function unpack(input:ICustomDataInput, length:uint) : void
      {
         this.deserialize(input);
      }
      
      override public function unpackAsync(input:ICustomDataInput, length:uint) : FuncTree
      {
         var tree:FuncTree = new FuncTree();
         tree.setRoot(input);
         this.deserializeAsync(tree);
         return tree;
      }
      
      public function serialize(output:ICustomDataOutput) : void
      {
         this.serializeAs_BasicWhoIsRequestMessage(output);
      }
      
      public function serializeAs_BasicWhoIsRequestMessage(output:ICustomDataOutput) : void
      {
         output.writeBoolean(this.verbose);
         output.writeUTF(this.search);
      }
      
      public function deserialize(input:ICustomDataInput) : void
      {
         this.deserializeAs_BasicWhoIsRequestMessage(input);
      }
      
      public function deserializeAs_BasicWhoIsRequestMessage(input:ICustomDataInput) : void
      {
         this._verboseFunc(input);
         this._searchFunc(input);
      }
      
      public function deserializeAsync(tree:FuncTree) : void
      {
         this.deserializeAsyncAs_BasicWhoIsRequestMessage(tree);
      }
      
      public function deserializeAsyncAs_BasicWhoIsRequestMessage(tree:FuncTree) : void
      {
         tree.addChild(this._verboseFunc);
         tree.addChild(this._searchFunc);
      }
      
      private function _verboseFunc(input:ICustomDataInput) : void
      {
         this.verbose = input.readBoolean();
      }
      
      private function _searchFunc(input:ICustomDataInput) : void
      {
         this.search = input.readUTF();
      }
   }
}
