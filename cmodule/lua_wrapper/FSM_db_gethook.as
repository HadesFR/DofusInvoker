package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM_db_gethook extends Machine
   {
      
      public static const intRegCount:int = 10;
      
      public static const NumberRegCount:int = 1;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i8:int;
      
      public var f0:Number;
      
      public var i7:int;
      
      public var i9:int;
      
      public function FSM_db_gethook()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_db_gethook = null;
         _loc1_ = new FSM_db_gethook();
         FSM_db_gethook.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 16;
               this.i0 = mstate.ebp + -4;
               mstate.esp = mstate.esp - 8;
               this.i1 = li32(mstate.ebp + 8);
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_db_gethook.start();
            case 1:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = li8(this.i0 + 56);
               this.i3 = li32(this.i0 + 68);
               this.i4 = this.i2 & 1;
               this.i5 = mstate.ebp + -16;
               if(this.i3 != 0)
               {
                  this.i6 = FSM_db_gethook;
                  if(this.i3 != this.i6)
                  {
                     this.i3 = li32(this.i1 + 16);
                     this.i6 = li32(this.i3 + 68);
                     this.i3 = li32(this.i3 + 64);
                     if(uint(this.i6) >= uint(this.i3))
                     {
                        mstate.esp = mstate.esp - 4;
                        si32(this.i1,mstate.esp);
                        state = 2;
                        mstate.esp = mstate.esp - 4;
                        FSM_db_gethook.start();
                        return;
                     }
                     addr178:
                     this.i3 = FSM_db_gethook;
                     this.i6 = li32(this.i1 + 8);
                     mstate.esp = mstate.esp - 12;
                     this.i7 = 13;
                     si32(this.i1,mstate.esp);
                     si32(this.i3,mstate.esp + 4);
                     si32(this.i7,mstate.esp + 8);
                     state = 3;
                     mstate.esp = mstate.esp - 4;
                     FSM_db_gethook.start();
                     return;
                  }
               }
               this.i3 = 2;
               mstate.esp = mstate.esp - 4;
               si32(this.i1,mstate.esp);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM_db_gethook.start();
               return;
            case 2:
               mstate.esp = mstate.esp + 4;
               §§goto(addr178);
            case 3:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i3,this.i6);
               this.i3 = 4;
               si32(this.i3,this.i6 + 8);
               this.i3 = li32(this.i1 + 8);
               this.i3 = this.i3 + 12;
               si32(this.i3,this.i1 + 8);
               if(this.i4 == 0)
               {
                  addr283:
                  this.i4 = 0;
               }
               else
               {
                  addr639:
                  this.i4 = 99;
                  si8(this.i4,this.i5);
                  this.i4 = 1;
               }
               addr650:
               this.i3 = this.i4;
               this.i4 = this.i2 & 2;
               if(this.i4 != 0)
               {
                  this.i4 = mstate.ebp + -16;
                  this.i6 = 114;
                  this.i4 = this.i4 + this.i3;
                  si8(this.i6,this.i4);
                  this.i3 = this.i3 + 1;
               }
               this.i4 = mstate.ebp + -16;
               this.i4 = this.i4 + this.i3;
               this.i2 = this.i2 & 4;
               if(this.i2 != 0)
               {
                  this.i2 = 108;
                  this.i6 = mstate.ebp + -16;
                  si8(this.i2,this.i4);
                  this.i4 = this.i3 + this.i6;
                  this.i2 = 0;
                  si8(this.i2,this.i4 + 1);
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i5,mstate.esp + 4);
                  state = 8;
                  mstate.esp = mstate.esp - 4;
                  FSM_db_gethook.start();
                  return;
               }
               this.i2 = 0;
               si8(this.i2,this.i4);
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i5,mstate.esp + 4);
               state = 9;
               mstate.esp = mstate.esp - 4;
               FSM_db_gethook.start();
               return;
            case 4:
               mstate.esp = mstate.esp + 4;
               this.i6 = li32(this.i1 + 8);
               si32(this.i0,this.i6);
               si32(this.i3,this.i6 + 8);
               this.i3 = li32(this.i1 + 8);
               this.i3 = this.i3 + 12;
               si32(this.i3,this.i1 + 8);
               mstate.esp = mstate.esp - 8;
               this.i3 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_db_gethook.start();
            case 5:
               this.i6 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = li32(this.i1 + 8);
               this.i6 = li32(this.i6);
               mstate.esp = mstate.esp - 8;
               this.i8 = this.i7 + -12;
               si32(this.i6,mstate.esp);
               si32(this.i8,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_db_gethook.start();
            case 6:
               this.i6 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.f0 = lf64(this.i6);
               sf64(this.f0,this.i7 + -12);
               this.i6 = li32(this.i6 + 8);
               si32(this.i6,this.i7 + -4);
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_db_gethook.start();
            case 7:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i6 = li32(this.i1 + 8);
               this.i7 = this.i1 + 8;
               this.i8 = this.i3;
               this.i9 = this.i3 + 12;
               if(uint(this.i9) >= uint(this.i6))
               {
                  this.i3 = this.i6;
               }
               else
               {
                  this.i3 = this.i3 + 12;
                  this.i6 = this.i8;
                  while(true)
                  {
                     this.f0 = lf64(this.i6 + 12);
                     sf64(this.f0,this.i6);
                     this.i8 = li32(this.i6 + 20);
                     si32(this.i8,this.i6 + 8);
                     this.i6 = li32(this.i7);
                     this.i8 = this.i3 + 12;
                     this.i9 = this.i3;
                     if(uint(this.i8) >= uint(this.i6))
                     {
                        break;
                     }
                     this.i3 = this.i8;
                     this.i6 = this.i9;
                  }
                  this.i3 = this.i6;
               }
               this.i3 = this.i3 + -12;
               si32(this.i3,this.i7);
               if(this.i4 != 0)
               {
                  §§goto(addr639);
               }
               else
               {
                  §§goto(addr283);
               }
               §§goto(addr650);
            case 8:
               mstate.esp = mstate.esp + 8;
               this.i0 = li32(this.i0 + 60);
               this.i4 = li32(this.i1 + 8);
               this.f0 = Number(this.i0);
               sf64(this.f0,this.i4);
               this.i0 = 3;
               si32(this.i0,this.i4 + 8);
               this.i4 = li32(this.i1 + 8);
               this.i4 = this.i4 + 12;
               si32(this.i4,this.i1 + 8);
               break;
            case 9:
               mstate.esp = mstate.esp + 8;
               this.i0 = li32(this.i0 + 60);
               this.i2 = li32(this.i1 + 8);
               this.f0 = Number(this.i0);
               sf64(this.f0,this.i2);
               this.i0 = 3;
               si32(this.i0,this.i2 + 8);
               this.i2 = li32(this.i1 + 8);
               this.i2 = this.i2 + 12;
               si32(this.i2,this.i1 + 8);
         }
         mstate.eax = this.i0;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
