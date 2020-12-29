package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_thunk_luaDoStringAsync extends Machine
   {
      
      public static const intRegCount:int = 4;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public function FSM_thunk_luaDoStringAsync()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_thunk_luaDoStringAsync = null;
         _loc1_ = new FSM_thunk_luaDoStringAsync();
         FSM_thunk_luaDoStringAsync.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 8;
               this.i0 = FSM_thunk_luaDoStringAsync;
               mstate.esp = mstate.esp - 16;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -8;
               this.i3 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 1;
               mstate.esp = mstate.esp - 4;
               mstate.funcs[FSM_thunk_luaDoStringAsync]();
               return;
            case 1:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(mstate.ebp + -8);
               this.i1 = li32(mstate.ebp + -4);
               mstate.esp = mstate.esp - 12;
               this.i2 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_thunk_luaDoStringAsync.start();
               return;
            case 2:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               mstate.eax = this.i0;
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
