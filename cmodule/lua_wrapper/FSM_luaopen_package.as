package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_luaopen_package extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 1;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var f0:Number;
      
      public function FSM_luaopen_package()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_luaopen_package = null;
         _loc1_ = new FSM_luaopen_package();
         FSM_luaopen_package.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 80;
               this.i0 = FSM_luaopen_package;
               mstate.esp = mstate.esp - 8;
               this.i1 = li32(mstate.ebp + 8);
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 1;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 1:
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 12;
               this.i0 = FSM_luaopen_package;
               this.i2 = 0;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 2:
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
            case 3:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_package;
               while(true)
               {
                  this.i3 = li8(this.i2 + 1);
                  this.i2 = this.i2 + 1;
                  this.i4 = this.i2;
                  if(this.i3 != 0)
                  {
                     this.i2 = this.i4;
                     continue;
                  }
                  break;
               }
               this.i3 = FSM_luaopen_package;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i3;
               si32(this.i1,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 4:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,mstate.ebp + -80);
               this.i2 = 4;
               si32(this.i2,mstate.ebp + -72);
               this.i3 = li32(this.i1 + 8);
               mstate.esp = mstate.esp - 16;
               this.i3 = this.i3 + -12;
               this.i4 = mstate.ebp + -80;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               state = 5;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 5:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i1 + 8);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i1 + 8);
               mstate.esp = mstate.esp - 12;
               this.i0 = FSM_luaopen_package;
               this.i3 = FSM_luaopen_package;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 6;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 6:
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 8;
               this.i0 = -1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
            case 7:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i3 = li32(this.i1 + 8);
               this.f0 = lf64(this.i0);
               sf64(this.f0,this.i3);
               this.i0 = li32(this.i0 + 8);
               si32(this.i0,this.i3 + 8);
               this.i0 = li32(this.i1 + 8);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i1 + 8);
               mstate.esp = mstate.esp - 8;
               this.i0 = -10001;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 8;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 8:
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 9;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 9:
               mstate.esp = mstate.esp + 8;
               this.i0 = FSM_luaopen_package;
               this.i2 = 1;
               this.i3 = this.i1 + 8;
               addr599:
               this.i4 = 0;
               this.i5 = li32(this.i0);
               mstate.esp = mstate.esp - 12;
               si32(this.i1,mstate.esp);
               si32(this.i5,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               state = 10;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 10:
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 12;
               this.i4 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 11;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 11:
               mstate.esp = mstate.esp + 12;
               this.i4 = li32(this.i0 + 4);
               this.i2 = this.i2 + 1;
               this.i0 = this.i0 + 4;
               if(this.i4 != 0)
               {
                  §§goto(addr599);
               }
               else
               {
                  this.i0 = -2;
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM_luaopen_package.start();
               }
            case 12:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_package;
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
               this.i4 = FSM_luaopen_package;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 13;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 13:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,mstate.ebp + -48);
               this.i2 = 4;
               si32(this.i2,mstate.ebp + -40);
               this.i2 = li32(this.i3);
               mstate.esp = mstate.esp - 16;
               this.i2 = this.i2 + -12;
               this.i4 = mstate.ebp + -48;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 14;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 14:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 16;
               this.i0 = FSM_luaopen_package;
               this.i2 = FSM_luaopen_package;
               this.i4 = FSM_luaopen_package;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i4,mstate.esp + 12);
               state = 15;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 15:
               mstate.esp = mstate.esp + 16;
               mstate.esp = mstate.esp - 16;
               this.i0 = FSM_luaopen_package;
               this.i2 = FSM_luaopen_package;
               this.i4 = FSM_luaopen_package;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i4,mstate.esp + 12);
               state = 16;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 16:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i1 + 16);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 17;
                  mstate.esp = mstate.esp - 4;
                  FSM_luaopen_package.start();
                  return;
               }
               break;
            case 17:
               mstate.esp = mstate.esp + 4;
               break;
            case 18:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
            case 19:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_package;
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
               this.i4 = FSM_luaopen_package;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 20;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 20:
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
               state = 21;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 21:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 16;
               this.i0 = FSM_luaopen_package;
               this.i2 = 2;
               this.i4 = -10000;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 22;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 22:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
            case 23:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_package;
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
               this.i4 = FSM_luaopen_package;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 24;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 24:
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
               state = 25;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 25:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 8;
               this.i0 = 0;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 26;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 26:
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
            case 27:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaopen_package;
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
               this.i4 = FSM_luaopen_package;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 - this.i4;
               si32(this.i1,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 28;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 28:
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
               state = 29;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 29:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 8;
               this.i0 = -10002;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
            case 30:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = li32(this.i3);
               this.f0 = lf64(this.i0);
               sf64(this.f0,this.i2);
               this.i0 = li32(this.i0 + 8);
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i3);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i3);
               mstate.esp = mstate.esp - 12;
               this.i0 = FSM_luaopen_package;
               this.i2 = 0;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               state = 31;
               mstate.esp = mstate.esp - 4;
               FSM_luaopen_package.start();
               return;
            case 31:
               mstate.esp = mstate.esp + 12;
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
         this.i0 = FSM_luaopen_package;
         this.i2 = li32(this.i3);
         mstate.esp = mstate.esp - 12;
         this.i4 = 9;
         si32(this.i1,mstate.esp);
         si32(this.i0,mstate.esp + 4);
         si32(this.i4,mstate.esp + 8);
         state = 18;
         mstate.esp = mstate.esp - 4;
         FSM_luaopen_package.start();
      }
   }
}
