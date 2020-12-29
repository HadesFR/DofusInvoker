package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_as3_tolua extends Machine
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
      
      public function FSM_as3_tolua()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_as3_tolua = null;
         _loc1_ = new FSM_as3_tolua();
         FSM_as3_tolua.gworker = _loc1_;
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
               this.i0 = -10000;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i1 + 8);
               this.i3 = li32(this.i1 + 12);
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
            case 1:
               this.i0 = mstate.eax;
               this.i2 = this.i2 - this.i3;
               mstate.esp = mstate.esp + 8;
               this.i3 = FSM_as3_tolua;
               this.i4 = this.i2 / 12;
               this.i5 = this.i1 + 12;
               this.i6 = this.i1 + 8;
               while(true)
               {
                  this.i7 = li8(this.i3 + 1);
                  this.i3 = this.i3 + 1;
                  this.i8 = this.i3;
                  if(this.i7 != 0)
                  {
                     this.i3 = this.i8;
                     continue;
                  }
                  break;
               }
               this.i7 = FSM_as3_tolua;
               mstate.esp = mstate.esp - 12;
               this.i3 = this.i3 - this.i7;
               si32(this.i1,mstate.esp);
               si32(this.i7,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 2:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i3,mstate.ebp + -16);
               this.i3 = 4;
               si32(this.i3,mstate.ebp + -8);
               this.i3 = li32(this.i6);
               mstate.esp = mstate.esp - 16;
               this.i7 = mstate.ebp + -16;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i7,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               state = 3;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 3:
               mstate.esp = mstate.esp + 16;
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               if(this.i2 >= 12)
               {
                  this.i0 = 1;
                  this.i2 = this.i4 + 1;
                  addr315:
                  while(true)
                  {
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM_as3_tolua.start();
                  }
               }
               addr950:
               mstate.esp = mstate.esp - 8;
               this.i0 = this.i4 + 1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
            case 4:
               while(true)
               {
                  this.i3 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  this.i7 = li32(this.i3 + 8);
                  if(this.i7 != 2)
                  {
                     if(this.i7 != 7)
                     {
                        this.i3 = 0;
                     }
                     else
                     {
                        this.i3 = li32(this.i3);
                        this.i3 = this.i3 + 20;
                     }
                  }
                  else
                  {
                     this.i3 = li32(this.i3);
                  }
                  if(this.i3 != 0)
                  {
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM_as3_tolua.start();
                  }
                  addr438:
                  while(true)
                  {
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM_as3_tolua.start();
                  }
               }
            case 5:
               while(true)
               {
                  this.i7 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  if(this.i7 != 0)
                  {
                     this.i7 = -1;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM_as3_tolua.start();
                  }
                  §§goto(addr438);
               }
            case 6:
               while(true)
               {
                  this.i3 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  this.i7 = li32(this.i6);
                  this.f0 = lf64(this.i3);
                  sf64(this.f0,this.i7);
                  this.i3 = li32(this.i3 + 8);
                  si32(this.i3,this.i7 + 8);
                  this.i3 = li32(this.i6);
                  this.i3 = this.i3 + 12;
                  si32(this.i3,this.i6);
                  this.i0 = this.i0 + 1;
                  if(this.i0 <= this.i4)
                  {
                     addr314:
                     while(true)
                     {
                        §§goto(addr315);
                     }
                  }
                  break;
               }
               §§goto(addr950);
            case 7:
               while(true)
               {
                  this.i8 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i7,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
               }
            case 8:
               while(true)
               {
                  this.i7 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  this.i9 = FSM_as3_tolua;
                  if(this.i7 != this.i9)
                  {
                     this.i9 = FSM_as3_tolua;
                     if(this.i8 != this.i9)
                     {
                        mstate.esp = mstate.esp - 8;
                        si32(this.i8,mstate.esp);
                        si32(this.i7,mstate.esp + 4);
                        mstate.esp = mstate.esp - 4;
                        FSM_as3_tolua.start();
                     }
                     addr855:
                     while(true)
                     {
                        mstate.esp = mstate.esp - 8;
                        si32(this.i1,mstate.esp);
                        si32(this.i0,mstate.esp + 4);
                        mstate.esp = mstate.esp - 4;
                        FSM_as3_tolua.start();
                     }
                  }
                  this.i3 = li32(this.i6);
                  this.i3 = this.i3 + -12;
                  si32(this.i3,this.i6);
                  §§goto(addr855);
               }
            case 9:
               while(true)
               {
                  this.i7 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  this.i8 = li32(this.i6);
                  this.i8 = this.i8 + -12;
                  si32(this.i8,this.i6);
                  if(this.i7 != 0)
                  {
                     break;
                  }
                  §§goto(addr855);
               }
               this.i3 = li32(this.i3);
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               state = 10;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 10:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i3 == 0)
               {
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
               }
               addr825:
               this.i0 = this.i0 + 1;
               if(this.i0 <= this.i4)
               {
                  §§goto(addr314);
               }
               §§goto(addr950);
            case 11:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = li32(this.i6);
               this.f0 = lf64(this.i3);
               sf64(this.f0,this.i7);
               this.i3 = li32(this.i3 + 8);
               si32(this.i3,this.i7 + 8);
               this.i3 = li32(this.i6);
               this.i3 = this.i3 + 12;
               si32(this.i3,this.i6);
               §§goto(addr825);
            case 12:
               while(true)
               {
                  this.i3 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  this.i7 = li32(this.i6);
                  this.f0 = lf64(this.i3);
                  sf64(this.f0,this.i7);
                  this.i3 = li32(this.i3 + 8);
                  si32(this.i3,this.i7 + 8);
                  this.i3 = li32(this.i6);
                  this.i3 = this.i3 + 12;
                  si32(this.i3,this.i6);
                  this.i0 = this.i0 + 1;
                  if(this.i0 <= this.i4)
                  {
                     §§goto(addr314);
                  }
                  §§goto(addr950);
               }
            case 13:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = li32(this.i6);
               this.i3 = this.i0;
               this.i7 = this.i0 + 12;
               if(uint(this.i7) >= uint(this.i2))
               {
                  this.i0 = this.i2;
               }
               else
               {
                  this.i0 = this.i0 + 12;
                  this.i2 = this.i3;
                  while(true)
                  {
                     this.f0 = lf64(this.i2 + 12);
                     sf64(this.f0,this.i2);
                     this.i3 = li32(this.i2 + 20);
                     si32(this.i3,this.i2 + 8);
                     this.i2 = li32(this.i6);
                     this.i3 = this.i0 + 12;
                     this.i7 = this.i0;
                     if(uint(this.i3) >= uint(this.i2))
                     {
                        break;
                     }
                     this.i0 = this.i3;
                     this.i2 = this.i7;
                  }
                  this.i0 = this.i2;
               }
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i6);
               this.i2 = li32(this.i5);
               this.i3 = this.i4 << 1;
               this.i0 = this.i0 - this.i2;
               this.i0 = this.i0 / 12;
               if(this.i0 != this.i3)
               {
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i4,mstate.esp + 4);
                  state = 14;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               break;
            case 14:
               mstate.esp = mstate.esp + 8;
               this.i0 = li32(this.i1 + 16);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               this.i7 = this.i1 + 16;
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 15;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr1236:
               this.i0 = FSM_as3_tolua;
               this.i2 = li32(this.i6);
               mstate.esp = mstate.esp - 12;
               this.i8 = 19;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i8,mstate.esp + 8);
               state = 16;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 15:
               mstate.esp = mstate.esp + 4;
               §§goto(addr1236);
            case 16:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               this.i0 = li32(this.i7);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 17;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr1386:
               this.i0 = FSM_as3_tolua;
               this.i2 = li32(this.i6);
               mstate.esp = mstate.esp - 12;
               this.i8 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i8,mstate.esp + 8);
               state = 18;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 17:
               mstate.esp = mstate.esp + 4;
               §§goto(addr1386);
            case 18:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i6);
               this.i2 = this.i0 + 12;
               si32(this.i2,this.i6);
               this.i2 = 1081339904;
               this.i8 = 0;
               si32(this.i8,this.i0 + 12);
               si32(this.i2,this.i0 + 16);
               this.i2 = 3;
               si32(this.i2,this.i0 + 20);
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               this.i0 = li32(this.i7);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 19;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr1582:
               this.i0 = FSM_as3_tolua;
               this.i2 = li32(this.i6);
               mstate.esp = mstate.esp - 12;
               this.i8 = 38;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i8,mstate.esp + 8);
               state = 20;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 19:
               mstate.esp = mstate.esp + 4;
               §§goto(addr1582);
            case 20:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i6);
               this.i2 = this.i0 + 12;
               si32(this.i2,this.i6);
               this.f0 = Number(this.i4);
               sf64(this.f0,this.i0 + 12);
               this.i2 = 3;
               si32(this.i2,this.i0 + 20);
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               this.i0 = li32(this.i7);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 21;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr1771:
               this.i0 = FSM_as3_tolua;
               this.i2 = li32(this.i6);
               mstate.esp = mstate.esp - 12;
               this.i8 = 16;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i8,mstate.esp + 8);
               state = 22;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 21:
               mstate.esp = mstate.esp + 4;
               §§goto(addr1771);
            case 22:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i6);
               this.i2 = this.i0 + 12;
               si32(this.i2,this.i6);
               this.i8 = li32(this.i5);
               this.i2 = this.i2 - this.i8;
               this.i2 = this.i2 / 12;
               this.i2 = this.i2 + -7;
               this.f0 = Number(this.i2);
               sf64(this.f0,this.i0 + 12);
               this.i2 = 3;
               si32(this.i2,this.i0 + 20);
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               this.i0 = li32(this.i7);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 23;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr1984:
               this.i0 = FSM_as3_tolua;
               this.i2 = li32(this.i6);
               mstate.esp = mstate.esp - 12;
               this.i8 = 18;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i8,mstate.esp + 8);
               state = 24;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 23:
               mstate.esp = mstate.esp + 4;
               §§goto(addr1984);
            case 24:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i6);
               this.i2 = this.i0 + 12;
               si32(this.i2,this.i6);
               this.f0 = Number(this.i3);
               sf64(this.f0,this.i0 + 12);
               this.i2 = 3;
               si32(this.i2,this.i0 + 20);
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               this.i0 = li32(this.i7);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 25;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr2173:
               this.i0 = FSM_as3_tolua;
               this.i2 = li32(this.i6);
               mstate.esp = mstate.esp - 12;
               this.i3 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 26;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 25:
               mstate.esp = mstate.esp + 4;
               §§goto(addr2173);
            case 26:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i0,this.i2);
               this.i0 = 4;
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               this.i0 = li32(this.i7);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 27;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr2323:
               this.i0 = 10;
               this.i2 = li32(this.i6);
               this.i3 = li32(this.i5);
               this.i2 = this.i2 - this.i3;
               this.i2 = this.i2 / 12;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 + -1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 28;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 27:
               mstate.esp = mstate.esp + 4;
               §§goto(addr2323);
            case 28:
               mstate.esp = mstate.esp + 12;
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + -108;
               si32(this.i0,this.i6);
               mstate.esp = mstate.esp - 8;
               this.i0 = -2;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
            case 29:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = li32(this.i6);
               this.f0 = lf64(this.i0);
               sf64(this.f0,this.i2);
               this.i0 = li32(this.i0 + 8);
               si32(this.i0,this.i2 + 8);
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + 12;
               si32(this.i0,this.i6);
               mstate.esp = mstate.esp - 8;
               this.i0 = -3;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
            case 30:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = li32(this.i6);
               this.i3 = this.i0;
               this.i8 = this.i0 + 12;
               if(uint(this.i8) >= uint(this.i2))
               {
                  this.i0 = this.i2;
               }
               else
               {
                  this.i0 = this.i0 + 12;
                  this.i2 = this.i3;
                  while(true)
                  {
                     this.f0 = lf64(this.i2 + 12);
                     sf64(this.f0,this.i2);
                     this.i3 = li32(this.i2 + 20);
                     si32(this.i3,this.i2 + 8);
                     this.i2 = li32(this.i6);
                     this.i3 = this.i0 + 12;
                     this.i8 = this.i0;
                     if(uint(this.i3) >= uint(this.i2))
                     {
                        break;
                     }
                     this.i0 = this.i3;
                     this.i2 = this.i8;
                  }
                  this.i0 = this.i2;
               }
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i6);
               this.i0 = li32(this.i7);
               this.i2 = li32(this.i0 + 68);
               this.i0 = li32(this.i0 + 64);
               if(uint(this.i2) >= uint(this.i0))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 31;
                  mstate.esp = mstate.esp - 4;
                  FSM_as3_tolua.start();
                  return;
               }
               addr2708:
               this.i0 = 2;
               this.i2 = li32(this.i6);
               this.i3 = li32(this.i5);
               this.i2 = this.i2 - this.i3;
               this.i2 = this.i2 / 12;
               mstate.esp = mstate.esp - 12;
               this.i2 = this.i2 + -1;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 32;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 31:
               mstate.esp = mstate.esp + 4;
               §§goto(addr2708);
            case 32:
               mstate.esp = mstate.esp + 12;
               this.i0 = li32(this.i6);
               this.i0 = this.i0 + -12;
               si32(this.i0,this.i6);
               mstate.esp = mstate.esp - 4;
               si32(this.i1,mstate.esp);
               state = 33;
               mstate.esp = mstate.esp - 4;
               FSM_as3_tolua.start();
               return;
            case 33:
               mstate.esp = mstate.esp + 4;
         }
         mstate.eax = this.i4;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
