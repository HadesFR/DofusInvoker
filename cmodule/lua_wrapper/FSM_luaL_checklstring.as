package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_luaL_checklstring extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM_luaL_checklstring()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_luaL_checklstring = null;
         _loc1_ = new FSM_luaL_checklstring();
         FSM_luaL_checklstring.gworker = _loc1_;
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
               this.i0 = li32(mstate.ebp + 8);
               mstate.esp = mstate.esp - 12;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 1;
               mstate.esp = mstate.esp - 4;
               FSM_luaL_checklstring.start();
               return;
            case 1:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               if(this.i2 == 0)
               {
                  this.i3 = FSM_luaL_checklstring;
                  mstate.esp = mstate.esp - 8;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM_luaL_checklstring.start();
               }
               else
               {
                  addr304:
                  mstate.eax = this.i2;
                  mstate.esp = mstate.ebp;
                  mstate.ebp = li32(mstate.esp);
                  mstate.esp = mstate.esp + 4;
                  mstate.esp = mstate.esp + 4;
                  mstate.gworker = caller;
                  return;
               }
            case 2:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i4 == this.i3)
               {
                  this.i4 = -1;
               }
               else
               {
                  this.i4 = li32(this.i4 + 8);
               }
               this.i3 = this.i4;
               if(this.i3 == -1)
               {
                  this.i3 = FSM_luaL_checklstring;
               }
               else
               {
                  this.i4 = FSM_luaL_checklstring;
                  this.i3 = this.i3 << 2;
                  this.i3 = this.i4 + this.i3;
                  this.i3 = li32(this.i3);
               }
               this.i4 = FSM_luaL_checklstring;
               mstate.esp = mstate.esp - 16;
               this.i5 = FSM_luaL_checklstring;
               si32(this.i0,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i5,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               state = 3;
               mstate.esp = mstate.esp - 4;
               FSM_luaL_checklstring.start();
               return;
            case 3:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               mstate.esp = mstate.esp - 12;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM_luaL_checklstring.start();
               return;
            case 4:
               mstate.esp = mstate.esp + 12;
               §§goto(addr304);
         }
      }
   }
}
