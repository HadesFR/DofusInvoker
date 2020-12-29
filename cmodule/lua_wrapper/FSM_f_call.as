package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_f_call extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM_f_call()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_f_call = null;
         _loc1_ = new FSM_f_call();
         FSM_f_call.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 0;
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = li32(this.i0 + 4);
               this.i0 = li32(this.i0);
               mstate.esp = mstate.esp - 12;
               this.i2 = li32(mstate.ebp + 8);
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i1,mstate.esp + 8);
               state = 1;
               mstate.esp = mstate.esp - 4;
               FSM_f_call.start();
               return;
            case 1:
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp = mstate.esp + 4;
               mstate.esp = mstate.esp + 4;
               mstate.gworker = caller;
               return;
         }
      }
   }
}
