package com.ankamagames.dofus.modules.utils
{
   import com.ankamagames.jerakine.interfaces.IModuleUtil;
   
   public class SpellTooltipSettings implements IModuleUtil
   {
       
      
      private var _header:Boolean;
      
      private var _effects:Boolean;
      
      private var _description:Boolean;
      
      private var _CC_EC:Boolean;
      
      private var _footer:Boolean;
      
      private var _footerText:String;
      
      private var _unPinnable:Boolean = false;
      
      private var _subtitle:String;
      
      public function SpellTooltipSettings()
      {
         super();
         this._header = true;
         this._effects = true;
         this._description = true;
         this._CC_EC = true;
         this._footer = true;
      }
      
      public function get header() : Boolean
      {
         return this._header;
      }
      
      public function set header(value:Boolean) : void
      {
         this._header = value;
      }
      
      public function get effects() : Boolean
      {
         return this._effects;
      }
      
      public function set effects(value:Boolean) : void
      {
         this._effects = value;
      }
      
      public function get description() : Boolean
      {
         return this._description;
      }
      
      public function set description(value:Boolean) : void
      {
         this._description = value;
      }
      
      public function get CC_EC() : Boolean
      {
         return this._CC_EC;
      }
      
      public function set CC_EC(value:Boolean) : void
      {
         this._CC_EC = value;
      }
      
      public function get footer() : Boolean
      {
         return this._footer;
      }
      
      public function set footer(value:Boolean) : void
      {
         this._footer = value;
      }
      
      public function get footerText() : String
      {
         return this._footerText;
      }
      
      public function set footerText(value:String) : void
      {
         this._footerText = value;
      }
      
      public function get unPinnable() : Boolean
      {
         return this._unPinnable;
      }
      
      public function set unPinnable(value:Boolean) : void
      {
         this._unPinnable = value;
      }
      
      public function get subtitle() : String
      {
         return this._subtitle;
      }
      
      public function set subtitle(value:String) : void
      {
         this._subtitle = value;
      }
   }
}
