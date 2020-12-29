package com.ankamagames.dofus.datacenter.communication
{
   import com.ankamagames.dofus.types.IdAccessors;
   import com.ankamagames.jerakine.data.GameData;
   import com.ankamagames.jerakine.interfaces.IDataCenter;
   import com.ankamagames.jerakine.logger.Log;
   import com.ankamagames.jerakine.logger.Logger;
   import flash.utils.getQualifiedClassName;
   
   public class Smiley#96 implements IDataCenter
   {
      
      public static const MODULE:String = "Smileys";
      
      protected static const _log:Logger = Log.getLogger(getQualifiedClassName(Smiley#96));
      
      public static var idAccessors:IdAccessors = new IdAccessors(getSmileyById,getSmileys);
       
      
      public var id:uint;
      
      public var order:uint;
      
      public var gfxId:String;
      
      public var forPlayers:Boolean;
      
      public var triggers:Vector.<String>;
      
      public var referenceId:uint;
      
      public var categoryId:uint;
      
      public function Smiley#96()
      {
         super();
      }
      
      public static function getSmileyById(id:int) : Smiley#96
      {
         return GameData.getObject(MODULE,id) as Smiley#96;
      }
      
      public static function getSmileys() : Array
      {
         return GameData.getObjects(MODULE);
      }
   }
}
