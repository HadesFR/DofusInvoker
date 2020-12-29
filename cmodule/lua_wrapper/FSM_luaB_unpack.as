package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_luaB_unpack extends Machine
   {
      
      public static const intRegCount:int = 8;
      
      public static const NumberRegCount:int = 1;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var f0:Number;
      
      public var i7:int;
      
      public function FSM_luaB_unpack()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_luaB_unpack = null;
         _loc1_ = new FSM_luaB_unpack();
         FSM_luaB_unpack.gworker = _loc1_;
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
               this.i0 = 1;
               mstate.esp = mstate.esp - 8;
               this.i1 = li32(mstate.ebp + 8);
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaB_unpack.start();
            case 1:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaB_unpack;
               if(this.i0 != this.i2)
               {
                  this.i0 = li32(this.i0 + 8);
                  if(this.i0 == 5)
                  {
                     addr145:
                     this.i0 = 2;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_unpack.start();
                  }
               }
               this.i0 = 5;
               mstate.esp = mstate.esp - 12;
               this.i2 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_luaB_unpack.start();
               return;
            case 2:
               mstate.esp = mstate.esp + 12;
               §§goto(addr145);
            case 3:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaB_unpack;
               if(this.i0 != this.i2)
               {
                  this.i0 = li32(this.i0 + 8);
                  if(this.i0 >= 1)
                  {
                     this.i0 = 2;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     state = 4;
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_unpack.start();
                     return;
                  }
               }
               this.i0 = 1;
               addr258:
               this.i2 = 3;
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaB_unpack.start();
            case 4:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr258);
            case 5:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i3 = FSM_luaB_unpack;
               if(this.i2 != this.i3)
               {
                  this.i2 = li32(this.i2 + 8);
                  if(this.i2 > 0)
                  {
                     this.i2 = 3;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     state = 7;
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_unpack.start();
                     return;
                  }
               }
               this.i2 = 1;
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 6;
               mstate.esp = mstate.esp - 4;
               FSM_luaB_unpack.start();
               return;
            case 6:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i0 <= this.i2)
               {
                  addr421:
                  this.i3 = this.i2 - this.i0;
                  this.i4 = this.i3 + 1;
                  if(this.i4 >= 1)
                  {
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i4,mstate.esp + 4);
                     state = 8;
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_unpack.start();
                     return;
                  }
                  addr486:
                  this.i0 = FSM_luaB_unpack;
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  state = 9;
                  mstate.esp = mstate.esp - 4;
                  FSM_luaB_unpack.start();
                  return;
               }
               addr841:
               this.i0 = 0;
               break;
            case 7:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i0 <= this.i2)
               {
                  §§goto(addr421);
               }
               else
               {
                  §§goto(addr841);
               }
            case 8:
               this.i5 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i5 == 0)
               {
                  §§goto(addr486);
               }
               else
               {
                  this.i5 = 1;
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i5,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM_luaB_unpack.start();
               }
            case 9:
               mstate.esp = mstate.esp + 8;
               this.i0 = 0;
               break;
            case 10:
               this.i5 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i5 = li32(this.i5);
               mstate.esp = mstate.esp - 8;
               si32(this.i5,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaB_unpack.start();
            case 11:
               this.i5 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i6 = li32(this.i1 + 8);
               this.f0 = lf64(this.i5);
               sf64(this.f0,this.i6);
               this.i5 = li32(this.i5 + 8);
               si32(this.i5,this.i6 + 8);
               this.i5 = li32(this.i1 + 8);
               this.i5 = this.i5 + 12;
               si32(this.i5,this.i1 + 8);
               this.i5 = this.i1 + 8;
               if(this.i0 < this.i2)
               {
                  this.i2 = 0;
                  this.i0 = this.i0 + 1;
                  addr694:
                  while(true)
                  {
                     this.i6 = 1;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i6,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_unpack.start();
                  }
               }
               addr678:
               this.i0 = this.i4;
               break;
            case 12:
               while(true)
               {
                  this.i6 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  this.i6 = li32(this.i6);
                  mstate.esp = mstate.esp - 8;
                  this.i7 = this.i0 + this.i2;
                  si32(this.i6,mstate.esp);
                  si32(this.i7,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM_luaB_unpack.start();
               }
            case 13:
               while(true)
               {
                  this.i6 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  this.i7 = li32(this.i5);
                  this.f0 = lf64(this.i6);
                  sf64(this.f0,this.i7);
                  this.i6 = li32(this.i6 + 8);
                  si32(this.i6,this.i7 + 8);
                  this.i6 = li32(this.i5);
                  this.i6 = this.i6 + 12;
                  si32(this.i6,this.i5);
                  this.i2 = this.i2 + 1;
                  if(this.i2 != this.i3)
                  {
                     §§goto(addr694);
                  }
                  else
                  {
                     break;
                  }
               }
               §§goto(addr678);
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
