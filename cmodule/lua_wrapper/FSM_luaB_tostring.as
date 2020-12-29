package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_luaB_tostring extends Machine
   {
      
      public static const intRegCount:int = 4;
      
      public static const NumberRegCount:int = 1;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var f0:Number;
      
      public var i3:int;
      
      public function FSM_luaB_tostring()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_luaB_tostring = null;
         _loc1_ = new FSM_luaB_tostring();
         FSM_luaB_tostring.gworker = _loc1_;
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
               FSM_luaB_tostring.start();
            case 1:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_luaB_tostring;
               if(this.i0 != this.i2)
               {
                  this.i0 = li32(this.i0 + 8);
                  if(this.i0 != -1)
                  {
                     addr147:
                     this.i0 = FSM_luaB_tostring;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     state = 3;
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_tostring.start();
                     return;
                  }
               }
               this.i0 = FSM_luaB_tostring;
               mstate.esp = mstate.esp - 12;
               this.i2 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_luaB_tostring.start();
               return;
            case 2:
               mstate.esp = mstate.esp + 12;
               §§goto(addr147);
            case 3:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 8;
               this.i2 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaB_tostring.start();
            case 4:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i0 != 0)
               {
                  this.i0 = 1;
                  this.i3 = li32(this.i1 + 8);
                  this.f0 = lf64(this.i2);
                  sf64(this.f0,this.i3);
                  this.i2 = li32(this.i2 + 8);
                  si32(this.i2,this.i3 + 8);
                  this.i2 = li32(this.i1 + 8);
                  this.i3 = this.i2 + 12;
                  si32(this.i3,this.i1 + 8);
                  mstate.esp = mstate.esp - 12;
                  this.i2 = this.i2 + -12;
                  si32(this.i1,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i0,mstate.esp + 8);
                  state = 5;
                  mstate.esp = mstate.esp - 4;
                  FSM_luaB_tostring.start();
                  return;
               }
               this.i0 = FSM_luaB_tostring;
               if(this.i2 == this.i0)
               {
                  this.i2 = -1;
               }
               else
               {
                  this.i2 = li32(this.i2 + 8);
               }
               this.i0 = this.i2;
               if(this.i0 <= 2)
               {
                  if(this.i0 != 0)
                  {
                     if(this.i0 == 1)
                     {
                        this.i0 = 1;
                        mstate.esp = mstate.esp - 8;
                        si32(this.i1,mstate.esp);
                        si32(this.i0,mstate.esp + 4);
                        mstate.esp = mstate.esp - 4;
                        FSM_luaB_tostring.start();
                     }
                  }
                  else
                  {
                     this.i0 = li32(this.i1 + 16);
                     this.i2 = li32(this.i0 + 68);
                     this.i0 = li32(this.i0 + 64);
                     if(uint(this.i2) >= uint(this.i0))
                     {
                        mstate.esp = mstate.esp - 4;
                        si32(this.i1,mstate.esp);
                        state = 11;
                        mstate.esp = mstate.esp - 4;
                        FSM_luaB_tostring.start();
                        return;
                     }
                     addr799:
                     this.i0 = FSM_luaB_tostring;
                     this.i2 = li32(this.i1 + 8);
                     mstate.esp = mstate.esp - 12;
                     this.i3 = 3;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     si32(this.i3,mstate.esp + 8);
                     state = 12;
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_tostring.start();
                     return;
                  }
               }
               else if(this.i0 != 4)
               {
                  if(this.i0 == 3)
                  {
                     this.i0 = 0;
                     mstate.esp = mstate.esp - 12;
                     this.i2 = 1;
                     si32(this.i1,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     si32(this.i0,mstate.esp + 8);
                     state = 7;
                     mstate.esp = mstate.esp - 4;
                     FSM_luaB_tostring.start();
                     return;
                  }
               }
               else
               {
                  this.i0 = 1;
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM_luaB_tostring.start();
               }
               this.i0 = 1;
               mstate.esp = mstate.esp - 4;
               si32(this.i1,mstate.esp);
               mstate.esp = mstate.esp - 4;
               FSM_luaB_tostring.start();
            case 5:
               mstate.esp = mstate.esp + 12;
               addr1084:
               mstate.eax = this.i0;
               break;
            case 6:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = li32(this.i0 + 8);
               if(this.i2 != 0)
               {
                  if(this.i2 != 1)
                  {
                     this.i0 = 0;
                  }
                  else
                  {
                     this.i0 = li32(this.i0);
                     this.i0 = this.i0 == 0?1:0;
                  }
               }
               else
               {
                  this.i0 = 1;
               }
               this.i2 = FSM_luaB_tostring;
               this.i0 = this.i0 & 1;
               this.i3 = FSM_luaB_tostring;
               mstate.esp = mstate.esp - 8;
               this.i0 = this.i0 != 0?int(this.i2):int(this.i3);
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 10;
               mstate.esp = mstate.esp - 4;
               FSM_luaB_tostring.start();
               return;
            case 7:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 8;
               mstate.esp = mstate.esp - 4;
               FSM_luaB_tostring.start();
               return;
            case 8:
               mstate.esp = mstate.esp + 8;
               mstate.eax = this.i2;
               break;
            case 9:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i3 = li32(this.i1 + 8);
               this.f0 = lf64(this.i2);
               sf64(this.f0,this.i3);
               this.i2 = li32(this.i2 + 8);
               si32(this.i2,this.i3 + 8);
               this.i2 = li32(this.i1 + 8);
               this.i2 = this.i2 + 12;
               si32(this.i2,this.i1 + 8);
               §§goto(addr1084);
            case 10:
               mstate.esp = mstate.esp + 8;
               addr730:
               this.i1 = 1;
               mstate.eax = this.i1;
               break;
            case 11:
               mstate.esp = mstate.esp + 4;
               §§goto(addr799);
            case 12:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i1 + 8);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i1 + 8);
               §§goto(addr730);
            case 13:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_luaB_tostring.start();
            case 14:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i3 = FSM_luaB_tostring;
               if(this.i0 == this.i3)
               {
                  this.i0 = -1;
               }
               else
               {
                  this.i0 = li32(this.i0 + 8);
               }
               if(this.i0 == -1)
               {
                  this.i0 = FSM_luaB_tostring;
               }
               else
               {
                  this.i3 = FSM_luaB_tostring;
                  this.i0 = this.i0 << 2;
                  this.i0 = this.i3 + this.i0;
                  this.i0 = li32(this.i0);
               }
               this.i3 = FSM_luaB_tostring;
               mstate.esp = mstate.esp - 16;
               si32(this.i1,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 15;
               mstate.esp = mstate.esp - 4;
               FSM_luaB_tostring.start();
               return;
            case 15:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               this.i0 = 1;
               §§goto(addr1084);
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
