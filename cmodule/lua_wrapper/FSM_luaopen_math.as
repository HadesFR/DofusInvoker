package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_luaopen_math extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM_luaopen_math()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_luaopen_math = null;
         _loc1_ = new FSM_luaopen_math();
         FSM_luaopen_math.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 64;
               this.i0 = FSM_luaopen_math;
               this.i1 = li32(mstate.ebp + 8);
               mstate.esp = mstate.esp - 12;
               this.i2 = FSM_luaopen_math;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 1;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 1:
               mstate.esp = mstate.esp + 12;
               this.i0 = li32(this.i1 + 8);
               this.i2 = 1074340347;
               this.i3 = 1413754136;
               si32(this.i3,this.i0);
               si32(this.i2,this.i0 + 4);
               this.i2 = 3;
               si32(this.i2,this.i0 + 8);
               this.i0 = li32(this.i1 + 8);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i1 + 8);
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
            case 2:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_math;
               this.i3 = this.i1 + 8;
               while(true)
               {
                  this.i4 = li8(this.i2 + 1);
                  this.i2 = this.i2 + 1;
                  this.i5 = this.i2;
                  if(this.i4 != 0)
                  {
                     this.i2 = this.i5;
                     continue;
                  }
                  break;
               }
               this.i4 = FSM_luaopen_math;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 3;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 3:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,mstate.ebp + -16);
               this.i2 = 4;
               si32(this.i2,mstate.ebp + -8);
               this.i2 = li32(this.i3);
               mstate.esp = mstate.esp - 16;
               this.i2 = this.i2 + -12;
               this.i4 = mstate.ebp + -16;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 4:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i2 = this.i0 + -12;
               si32(this.i2,this.i3);
               this.i2 = 2146435072;
               this.i4 = 0;
               si32(this.i4,this.i0 + -12);
               si32(this.i2,this.i0 + -8);
               this.i2 = 3;
               si32(this.i2,this.i0 + -4);
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
            case 5:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_math;
               while(true)
               {
                  this.i4 = li8(this.i2 + 1);
                  this.i2 = this.i2 + 1;
                  this.i5 = this.i2;
                  if(this.i4 != 0)
                  {
                     this.i2 = this.i5;
                     continue;
                  }
                  break;
               }
               this.i4 = FSM_luaopen_math;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 6;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 6:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,mstate.ebp + -32);
               this.i2 = 4;
               si32(this.i2,mstate.ebp + -24);
               this.i2 = li32(this.i3);
               mstate.esp = mstate.esp - 16;
               this.i2 = this.i2 + -12;
               this.i4 = mstate.ebp + -32;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 7;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 7:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 8;
               this.i0 = -1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
            case 8:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_math;
               while(true)
               {
                  this.i4 = li8(this.i2 + 1);
                  this.i2 = this.i2 + 1;
                  this.i5 = this.i2;
                  if(this.i4 != 0)
                  {
                     this.i2 = this.i5;
                     continue;
                  }
                  break;
               }
               this.i4 = FSM_luaopen_math;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 9;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 9:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,mstate.ebp + -48);
               this.i2 = 4;
               si32(this.i2,mstate.ebp + -40);
               this.i2 = li32(this.i3);
               mstate.esp = mstate.esp - 16;
               this.i4 = mstate.ebp + -48;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 10;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 10:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
            case 11:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_math;
               while(true)
               {
                  this.i4 = li8(this.i2 + 1);
                  this.i2 = this.i2 + 1;
                  this.i5 = this.i2;
                  if(this.i4 != 0)
                  {
                     this.i2 = this.i5;
                     continue;
                  }
                  break;
               }
               this.i4 = FSM_luaopen_math;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 12;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 12:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,mstate.ebp + -64);
               this.i2 = 4;
               si32(this.i2,mstate.ebp + -56);
               this.i2 = li32(this.i3);
               mstate.esp = mstate.esp - 16;
               this.i2 = this.i2 + -12;
               this.i4 = mstate.ebp + -64;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 13;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_math.start();
               return;
            case 13:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i3);
               this.i0 = 1;
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
