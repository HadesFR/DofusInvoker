package com.ankamagames.dofus.network.types.game.character.characteristic
{
   import com.ankamagames.jerakine.network.ICustomDataInput;
   import com.ankamagames.jerakine.network.ICustomDataOutput;
   import com.ankamagames.jerakine.network.INetworkType;
   import com.ankamagames.jerakine.network.utils.FuncTree;
   
   public class CharacterBaseCharacteristic implements INetworkType
   {
      
      public static const protocolId:uint = 5795;
       
      
      public var base:int = 0;
      
      public var additionnal:int = 0;
      
      public var objectsAndMountBonus:int = 0;
      
      public var alignGiftBonus:int = 0;
      
      public var contextModif:int = 0;
      
      public function CharacterBaseCharacteristic()
      {
         super();
      }
      
      public function getTypeId() : uint
      {
         return 5795;
      }
      
      public function initCharacterBaseCharacteristic(base:int = 0, additionnal:int = 0, objectsAndMountBonus:int = 0, alignGiftBonus:int = 0, contextModif:int = 0) : CharacterBaseCharacteristic
      {
         this.base = base;
         this.additionnal = additionnal;
         this.objectsAndMountBonus = objectsAndMountBonus;
         this.alignGiftBonus = alignGiftBonus;
         this.contextModif = contextModif;
         return this;
      }
      
      public function reset() : void
      {
         this.base = 0;
         this.additionnal = 0;
         this.objectsAndMountBonus = 0;
         this.alignGiftBonus = 0;
         this.contextModif = 0;
      }
      
      public function serialize(output:ICustomDataOutput) : void
      {
         this.serializeAs_CharacterBaseCharacteristic(output);
      }
      
      public function serializeAs_CharacterBaseCharacteristic(output:ICustomDataOutput) : void
      {
         output.writeVarShort(this.base);
         output.writeVarShort(this.additionnal);
         output.writeVarShort(this.objectsAndMountBonus);
         output.writeVarShort(this.alignGiftBonus);
         output.writeVarShort(this.contextModif);
      }
      
      public function deserialize(input:ICustomDataInput) : void
      {
         this.deserializeAs_CharacterBaseCharacteristic(input);
      }
      
      public function deserializeAs_CharacterBaseCharacteristic(input:ICustomDataInput) : void
      {
         this._baseFunc(input);
         this._additionnalFunc(input);
         this._objectsAndMountBonusFunc(input);
         this._alignGiftBonusFunc(input);
         this._contextModifFunc(input);
      }
      
      public function deserializeAsync(tree:FuncTree) : void
      {
         this.deserializeAsyncAs_CharacterBaseCharacteristic(tree);
      }
      
      public function deserializeAsyncAs_CharacterBaseCharacteristic(tree:FuncTree) : void
      {
         tree.addChild(this._baseFunc);
         tree.addChild(this._additionnalFunc);
         tree.addChild(this._objectsAndMountBonusFunc);
         tree.addChild(this._alignGiftBonusFunc);
         tree.addChild(this._contextModifFunc);
      }
      
      private function _baseFunc(input:ICustomDataInput) : void
      {
         this.base = input.readVarShort();
      }
      
      private function _additionnalFunc(input:ICustomDataInput) : void
      {
         this.additionnal = input.readVarShort();
      }
      
      private function _objectsAndMountBonusFunc(input:ICustomDataInput) : void
      {
         this.objectsAndMountBonus = input.readVarShort();
      }
      
      private function _alignGiftBonusFunc(input:ICustomDataInput) : void
      {
         this.alignGiftBonus = input.readVarShort();
      }
      
      private function _contextModifFunc(input:ICustomDataInput) : void
      {
         this.contextModif = input.readVarShort();
      }
   }
}
