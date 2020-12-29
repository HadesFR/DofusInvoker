package com.ankamagames.jerakine.messages
{
   public class Treatment
   {
       
      
      private var _object;
      
      private var _calledFunction:Function;
      
      private var _params:Array;
      
      public function Treatment(object:*, func:Function, params:Array)
      {
         super();
         this._object = object;
         this._calledFunction = func;
         this._params = params;
      }
      
      public function get calledfunction() : Function
      {
         return this._calledFunction;
      }
      
      public function get params() : Array
      {
         return this._params;
      }
      
      public function get object() : *
      {
         return this._object;
      }
      
      public function process() : Boolean
      {
         this._calledFunction.apply(this._object,this._params);
         return true;
      }
   }
}
