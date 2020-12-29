package com.ankamagames.dofus.datacenter.alignments
{
   import com.ankamagames.dofus.types.IdAccessors;
   import com.ankamagames.jerakine.data.GameData;
   import com.ankamagames.jerakine.data.I18n;
   import com.ankamagames.jerakine.interfaces.IDataCenter;
   import com.ankamagames.jerakine.logger.Log;
   import com.ankamagames.jerakine.logger.Logger;
   import flash.utils.getQualifiedClassName;
   
   public class AlignmentBalance implements IDataCenter
   {
      
      public static const MODULE:String = "AlignmentBalance";
      
      protected static const _log:Logger = Log.getLogger(getQualifiedClassName(AlignmentBalance));
      
      public static var idAccessors:IdAccessors = new IdAccessors(getAlignmentBalanceById,getAlignmentBalances);
       
      
      public var id:int;
      
      public var startValue:int;
      
      public var endValue:int;
      
      public var nameId:uint;
      
      public var descriptionId:uint;
      
      private var _name:String;
      
      private var _description:String;
      
      public function AlignmentBalance()
      {
         super();
      }
      
      public static function getAlignmentBalanceById(id:int) : AlignmentBalance
      {
         return GameData.getObject(MODULE,id) as AlignmentBalance;
      }
      
      public static function getAlignmentBalances() : Array
      {
         return GameData.getObjects(MODULE);
      }
      
      public function get name() : String
      {
         if(!this._name)
         {
            this._name = I18n.getText(this.nameId);
         }
         return this._name;
      }
      
      public function get description() : String
      {
         if(!this._description)
         {
            this._description = I18n.getText(this.descriptionId);
         }
         return this._description;
      }
   }
}
