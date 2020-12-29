package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   
   public final class FSM___vfprintf extends Machine
   {
      
      public static const intRegCount:int = 32;
      
      public static const NumberRegCount:int = 5;
       
      
      public var i21:int;
      
      public var i30:int;
      
      public var i31:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f3:Number;
      
      public var f2:Number;
      
      public var f4:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
      public var i16:int;
      
      public var i18:int;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i22:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i2:int;
      
      public var i23:int;
      
      public var i24:int;
      
      public var i25:int;
      
      public var i26:int;
      
      public var i27:int;
      
      public var i20:int;
      
      public var i9:int;
      
      public var i28:int;
      
      public var i29:int;
      
      public function FSM___vfprintf()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___vfprintf = null;
         _loc1_ = new FSM___vfprintf();
         FSM___vfprintf.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 2548;
               this.i0 = 0;
               si8(this.i0,mstate.ebp + -1745);
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
            case 1:
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li16(this.i0 + 12);
               this.i2 = li32(FSM___vfprintf);
               si32(this.i2,mstate.ebp + -2097);
               this.i2 = this.i0 + 12;
               si32(this.i2,mstate.ebp + -1971);
               this.i2 = mstate.ebp + -1328;
               this.i3 = mstate.ebp + -192;
               si32(this.i3,mstate.ebp + -2187);
               this.i3 = mstate.ebp + -1736;
               si32(this.i3,mstate.ebp + -2205);
               this.i3 = mstate.ebp + -1648;
               si32(this.i3,mstate.ebp + -2016);
               this.i3 = mstate.ebp + -208;
               si32(this.i3,mstate.ebp + -2052);
               this.i3 = li32(mstate.ebp + 12);
               si32(this.i3,mstate.ebp + -2232);
               this.i3 = li32(mstate.ebp + 16);
               this.i4 = this.i1 & 8;
               if(this.i4 != 0)
               {
                  this.i4 = li32(this.i0 + 16);
                  if(this.i4 == 0)
                  {
                     this.i1 = this.i1 & 512;
                     if(this.i1 == 0)
                     {
                     }
                  }
                  addr242:
                  this.i1 = li32(mstate.ebp + -1971);
                  this.i1 = li16(this.i1);
                  this.i4 = this.i1 & 26;
                  if(this.i4 == 10)
                  {
                     this.i4 = li16(this.i0 + 14);
                     this.i5 = this.i4 << 16;
                     this.i5 = this.i5 >> 16;
                     if(this.i5 >= 0)
                     {
                        this.i5 = 1024;
                        this.i1 = this.i1 & -3;
                        si16(this.i1,mstate.ebp + -292);
                        si16(this.i4,mstate.ebp + -290);
                        this.i1 = li32(this.i0 + 28);
                        si32(this.i1,mstate.ebp + -276);
                        this.i1 = li32(this.i0 + 44);
                        si32(this.i1,mstate.ebp + -260);
                        this.i0 = li32(this.i0 + 56);
                        si32(this.i0,mstate.ebp + -248);
                        si32(this.i2,mstate.ebp + -304);
                        si32(this.i2,mstate.ebp + -288);
                        si32(this.i5,mstate.ebp + -296);
                        si32(this.i5,mstate.ebp + -284);
                        this.i0 = 0;
                        si32(this.i0,mstate.ebp + -280);
                        this.i0 = mstate.ebp + -304;
                        mstate.esp = mstate.esp - 12;
                        si32(this.i0,mstate.esp);
                        this.i1 = li32(mstate.ebp + -2232);
                        si32(this.i1,mstate.esp + 4);
                        si32(this.i3,mstate.esp + 8);
                        state = 3;
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                        return;
                     }
                  }
                  this.i1 = 0;
                  si32(this.i1,mstate.ebp + -1540);
                  si32(this.i3,mstate.ebp + -1752);
                  si32(this.i3,mstate.ebp + -1460);
                  this.i2 = mstate.ebp + -1712;
                  si32(this.i2,mstate.ebp + -1728);
                  si32(this.i1,mstate.ebp + -1720);
                  this.i4 = mstate.ebp + -1728;
                  si32(this.i1,mstate.ebp + -1724);
                  this.i1 = li32(mstate.ebp + -2232);
                  this.i1 = li8(this.i1);
                  this.i5 = this.i4 + 4;
                  this.i4 = this.i4 + 8;
                  this.i6 = mstate.ebp + -1460;
                  if(this.i1 != 0)
                  {
                     this.i6 = this.i1 & 255;
                     if(this.i6 != 37)
                     {
                        this.i1 = 1;
                        this.i7 = 0;
                        this.i8 = this.i6;
                        this.i9 = this.i6;
                        this.i10 = this.i6;
                        this.i11 = this.i6;
                        this.i12 = this.i7;
                        this.i13 = li32(mstate.ebp + -2232);
                        this.i14 = this.i2;
                        this.i15 = this.i13;
                        this.i16 = this.i6;
                        this.i17 = this.i12;
                        this.i18 = this.i6;
                        this.i19 = this.i6;
                        this.i20 = this.i6;
                        this.i21 = this.i12;
                        this.i22 = this.i6;
                        this.i23 = this.i6;
                        continue loop0;
                     }
                  }
                  this.i6 = 1;
                  this.i8 = 0;
                  this.i9 = this.i8;
                  this.i10 = this.i7;
                  this.i11 = this.i7;
                  this.i12 = this.i7;
                  this.i13 = this.i7;
                  this.i14 = this.i8;
                  this.i15 = this.i7;
                  this.i16 = this.i7;
                  this.i17 = this.i7;
                  this.i18 = this.i8;
                  this.i19 = this.i7;
                  this.i20 = this.i7;
                  this.i21 = this.i7;
                  this.i22 = li32(mstate.ebp + -2232);
                  this.i23 = this.i2;
                  this.i24 = this.i22;
                  continue loop23;
               }
               mstate.esp = mstate.esp - 4;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 2:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i1 != 0)
               {
                  this.i0 = -1;
                  break;
               }
               §§goto(addr242);
            case 3:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i0 = this.i0 + 12;
               if(this.i3 <= -1)
               {
                  addr467:
                  this.i0 = li16(this.i0);
                  this.i0 = this.i0 & 64;
                  if(this.i0 == 0)
                  {
                     this.i0 = this.i3;
                     break;
                  }
                  this.i0 = li32(mstate.ebp + -1971);
                  this.i0 = li16(this.i0);
                  this.i0 = this.i0 | 64;
                  this.i1 = li32(mstate.ebp + -1971);
                  si16(this.i0,this.i1);
                  mstate.eax = this.i3;
                  addr37033:
                  mstate.esp = mstate.ebp;
                  mstate.ebp = li32(mstate.esp);
                  mstate.esp = mstate.esp + 4;
                  mstate.esp = mstate.esp + 4;
                  mstate.gworker = caller;
                  return;
               }
               this.i1 = mstate.ebp + -304;
               mstate.esp = mstate.esp - 4;
               si32(this.i1,mstate.esp);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 4:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i1 != 0)
               {
                  this.i3 = -1;
               }
               else
               {
                  §§goto(addr467);
               }
               §§goto(addr467);
            case 5:
               this.i6 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i11 = 0;
               si32(this.i11,this.i4);
               si32(this.i11,this.i5);
               if(this.i6 != 0)
               {
                  this.i6 = this.i10;
                  this.i10 = this.i15;
                  this.i0 = li32(mstate.ebp + -2358);
                  addr36762:
                  this.i3 = this.i6;
                  this.i1 = this.i10;
                  this.i2 = this.i0;
                  if(this.i1 != 0)
                  {
                     this.i0 = this.i1;
                     this.i1 = this.i2;
                     addr36788:
                     this.i2 = 1;
                     this.i4 = li32(this.i0 + -4);
                     si32(this.i4,this.i0);
                     this.i2 = this.i2 << this.i4;
                     si32(this.i2,this.i0 + 4);
                     this.i0 = this.i0 + -4;
                     this.i2 = this.i0;
                     if(this.i0 == 0)
                     {
                        this.i0 = this.i1;
                     }
                     else
                     {
                        this.i5 = FSM___vfprintf;
                        this.i4 = this.i4 << 2;
                        this.i4 = this.i5 + this.i4;
                        this.i5 = li32(this.i4);
                        si32(this.i5,this.i0);
                        si32(this.i2,this.i4);
                        this.i0 = this.i1;
                     }
                  }
                  else
                  {
                     this.i0 = this.i2;
                  }
                  addr36876:
                  this.i1 = this.i3;
                  if(this.i0 != 0)
                  {
                     this.i2 = 0;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i0,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     state = 114;
                     mstate.esp = mstate.esp - 4;
                     FSM___vfprintf.start();
                     return;
                  }
                  addr36929:
                  this.i0 = li32(mstate.ebp + -1971);
                  this.i0 = li16(this.i0);
                  this.i2 = li32(mstate.ebp + -1540);
                  this.i0 = this.i0 & 64;
                  this.i0 = this.i0 == 0?int(this.i1):-1;
                  if(this.i2 != 0)
                  {
                     this.i1 = li32(mstate.ebp + -2223);
                     if(this.i1 != this.i2)
                     {
                        this.i1 = 0;
                        mstate.esp = mstate.esp - 8;
                        si32(this.i2,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 115;
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                        return;
                     }
                  }
                  break;
               }
               this.i6 = this.i2;
               this.i10 = this.i13;
               continue loop24;
            case 6:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               if(this.i7 != -1)
               {
                  continue loop25;
               }
               addr5027:
               this.i3 = li32(mstate.ebp + -1971);
               this.i3 = li16(this.i3);
               this.i3 = this.i3 | 64;
               this.i0 = li32(mstate.ebp + -1971);
               si16(this.i3,this.i0);
               if(this.i15 != 0)
               {
                  this.i3 = li32(mstate.ebp + -2268);
                  this.i0 = this.i15;
                  this.i1 = li32(mstate.ebp + -2358);
                  §§goto(addr36788);
               }
               else
               {
                  this.i3 = li32(mstate.ebp + -2268);
                  this.i0 = li32(mstate.ebp + -2358);
               }
               §§goto(addr36876);
            case 7:
               mstate.esp = mstate.esp + 12;
               while(true)
               {
                  this.i6 = li32(mstate.ebp + -1540);
                  this.i3 = this.i3 + 1;
                  if(this.i6 != 0)
                  {
                     this.i9 = this.i9 << 3;
                     this.i6 = this.i6 + this.i9;
                     this.i6 = li32(this.i6);
                     if(this.i6 <= -1)
                     {
                        this.i9 = this.i8;
                        this.i10 = this.i1;
                     }
                     else
                     {
                        this.i10 = this.i12;
                        this.i9 = this.i13;
                        break loop6;
                     }
                  }
                  else
                  {
                     this.i6 = this.i1 + 4;
                     this.i9 = this.i1;
                     this.i10 = this.i8;
                     while(true)
                     {
                        this.i1 = this.i10;
                        this.i16 = this.i6;
                        this.i6 = li32(this.i9);
                        if(this.i6 <= -1)
                        {
                           this.i9 = this.i1;
                           this.i10 = this.i16;
                        }
                        else
                        {
                           this.i10 = this.i12;
                           this.i9 = this.i13;
                           this.i8 = this.i1;
                           this.i1 = this.i16;
                           break loop6;
                        }
                     }
                  }
                  while(true)
                  {
                     this.i1 = this.i9;
                     this.i16 = this.i10;
                     this.i9 = this.i7 | 4;
                     this.i6 = 0 - this.i6;
                     this.i7 = this.i9;
                     this.i10 = this.i12;
                     this.i9 = this.i13;
                     this.i8 = this.i1;
                     this.i1 = this.i16;
                     break loop6;
                  }
               }
            case 8:
               while(true)
               {
                  this.i3 = li32(FSM___vfprintf);
                  this.i3 = li8(this.i3);
                  si8(this.i3,mstate.ebp + -1745);
                  mstate.esp = mstate.esp - 4;
                  FSM___vfprintf.start();
               }
            case 9:
               while(true)
               {
                  this.i9 = li32(FSM___vfprintf);
                  this.i3 = this.i6 + this.i11;
                  this.i6 = this.i7 | 512;
                  this.i7 = this.i6;
                  this.i6 = this.i10;
                  this.i10 = this.i12;
                  break loop6;
               }
            case 10:
               mstate.esp = mstate.esp + 12;
               while(true)
               {
                  this.i6 = li32(mstate.ebp + -1540);
                  this.i3 = this.i3 + 1;
                  if(this.i6 != 0)
                  {
                     this.i9 = this.i9 << 3;
                     this.i6 = this.i6 + this.i9;
                     this.i9 = li32(this.i6);
                     this.i6 = this.i10;
                     this.i10 = this.i9;
                     this.i9 = this.i13;
                     break loop6;
                  }
                  this.i9 = li32(this.i1);
                  this.i12 = this.i1 + 4;
                  this.i6 = this.i10;
                  this.i10 = this.i9;
                  this.i9 = this.i13;
                  this.i1 = this.i12;
                  break loop6;
               }
            case 11:
               mstate.esp = mstate.esp + 12;
               this.i6 = this.i10;
               this.i10 = this.i12;
               this.i9 = this.i13;
               this.i8 = this.i18;
               break loop6;
            case 12:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i1 = this.i1 + 4;
               if(this.i7 != -1)
               {
                  continue loop25;
               }
               §§goto(addr5027);
            case 13:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i15 = 0;
               si32(this.i15,this.i14 + 4);
               this.i15 = 1;
               si32(this.i15,this.i14 + 8);
               continue loop35;
            case 14:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i15 = 0;
               si32(this.i15,this.i14 + 4);
               this.i15 = 1;
               si32(this.i15,this.i14 + 8);
               continue loop45;
            case 15:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i15 = 0;
               si32(this.i15,this.i14 + 4);
               this.i15 = 1;
               si32(this.i15,this.i14 + 8);
               continue loop47;
            case 16:
               this.i14 = this.i14 & 32767;
               this.f0 = this.f0 * 5.36312e154;
               this.i15 = li32(mstate.ebp + -2079);
               sf64(this.f0,this.i15);
               this.i14 = this.i14 + -16899;
               this.i15 = this.i12 == 0?1:int(this.i12);
               si32(this.i14,mstate.ebp + -1744);
               this.i14 = this.i15 > 15?int(this.i15):16;
               if(uint(this.i14) >= uint(20))
               {
                  this.i18 = 4;
                  this.i20 = 0;
                  addr7093:
                  this.i18 = this.i18 << 1;
                  this.i20 = this.i20 + 1;
                  this.i21 = this.i18 + 16;
                  if(uint(this.i21) <= uint(this.i14))
                  {
                     §§goto(addr7093);
                  }
                  this.i18 = this.i20;
               }
               else
               {
                  this.i18 = 0;
               }
               mstate.esp = mstate.esp - 4;
               si32(this.i18,mstate.esp);
               state = 17;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 17:
               this.i20 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i21 = this.i14 + -1;
               this.i22 = this.i20 + 4;
               si32(this.i18,this.i20);
               this.i18 = this.i22 + this.i21;
               this.i20 = this.i22;
               if(this.i21 <= 15)
               {
                  this.i14 = this.i18;
               }
               else
               {
                  this.i18 = 0;
                  this.i14 = this.i14 + this.i22;
                  this.i14 = this.i14 + -1;
                  while(true)
                  {
                     this.i23 = 0;
                     this.i24 = this.i18 ^ -1;
                     si8(this.i23,this.i14);
                     this.i14 = this.i14 + -1;
                     this.i18 = this.i18 + 1;
                     this.i23 = this.i21 + this.i24;
                     if(this.i23 >= 16)
                     {
                        continue;
                     }
                     break;
                  }
                  this.i14 = this.i20 + this.i23;
               }
               this.i23 = this.i14;
               this.i18 = this.i20 + 7;
               this.i14 = this.i23;
               if(uint(this.i18) < uint(this.i23))
               {
                  if(uint(this.i23) > uint(this.i20))
                  {
                     this.i24 = 0;
                     this.i21 = this.i14;
                     this.i14 = this.i24;
                     while(true)
                     {
                        this.i24 = li32(mstate.ebp + -2241);
                        this.i24 = li8(this.i24);
                        this.i24 = this.i24 & 15;
                        si8(this.i24,this.i21);
                        this.i24 = li32(mstate.ebp + -2241);
                        this.i24 = li32(this.i24);
                        this.i24 = this.i24 >>> 4;
                        this.i25 = this.i14 ^ -1;
                        this.i26 = li32(mstate.ebp + -2241);
                        si32(this.i24,this.i26);
                        this.i21 = this.i21 + -1;
                        this.i14 = this.i14 + 1;
                        this.i24 = this.i23 + this.i25;
                        if(uint(this.i18) < uint(this.i24))
                        {
                           if(uint(this.i24) <= uint(this.i20))
                           {
                              break;
                           }
                           continue;
                        }
                        break;
                     }
                     this.i14 = this.i24;
                  }
                  addr7366:
                  this.i23 = this.i14;
                  this.i14 = li32(mstate.ebp + -2214);
                  this.i18 = li8(this.i14);
                  this.i14 = this.i23;
                  if(uint(this.i23) <= uint(this.i20))
                  {
                     this.i14 = this.i18;
                     this.i18 = this.i23;
                  }
                  else
                  {
                     this.i21 = 0;
                     do
                     {
                        this.i18 = this.i18 & 15;
                        si8(this.i18,this.i14);
                        this.i18 = li32(mstate.ebp + -2214);
                        this.i18 = li32(this.i18);
                        this.i18 = this.i18 >>> 4;
                        this.i24 = this.i21 ^ -1;
                        this.i25 = li32(mstate.ebp + -2214);
                        si32(this.i18,this.i25);
                        this.i14 = this.i14 + -1;
                        this.i21 = this.i21 + 1;
                        this.i24 = this.i23 + this.i24;
                     }
                     while(uint(this.i24) > uint(this.i20));
                     
                     this.i14 = this.i18;
                     this.i18 = this.i24;
                  }
                  this.i14 = this.i14 | 8;
                  si8(this.i14,this.i18);
                  if(this.i15 >= 0)
                  {
                     this.i14 = this.i15;
                  }
                  else
                  {
                     this.i14 = li8(this.i20 + 15);
                     if(this.i14 != 0)
                     {
                        this.i14 = 16;
                     }
                     else
                     {
                        this.i14 = -1;
                        this.i15 = this.i22 + 14;
                        while(true)
                        {
                           this.i18 = li8(this.i15);
                           this.i15 = this.i15 + -1;
                           this.i14 = this.i14 + 1;
                           if(this.i18 == 0)
                           {
                              continue;
                           }
                           break;
                        }
                        this.i14 = 15 - this.i14;
                     }
                  }
                  addr7699:
                  if(this.i14 <= 15)
                  {
                     this.i15 = this.i20 + this.i14;
                     this.i15 = li8(this.i15);
                     if(this.i15 != 0)
                     {
                        this.i15 = mstate.ebp + -1744;
                        mstate.esp = mstate.esp - 12;
                        si32(this.i20,mstate.esp);
                        si32(this.i14,mstate.esp + 4);
                        si32(this.i15,mstate.esp + 8);
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                     }
                  }
                  this.i15 = 0;
                  this.i18 = this.i20 + this.i14;
                  si32(this.i18,mstate.ebp + -1740);
                  this.i21 = this.i14 + -1;
                  si8(this.i15,this.i18);
                  this.i15 = this.i20 + this.i21;
                  if(uint(this.i15) >= uint(this.i20))
                  {
                     this.i15 = 0;
                     this.i14 = this.i22 + this.i14;
                     this.i14 = this.i14 + -1;
                     while(true)
                     {
                        this.i18 = si8(li8(this.i14));
                        this.i18 = this.i3 + this.i18;
                        this.i18 = li8(this.i18);
                        si8(this.i18,this.i14);
                        this.i14 = this.i14 + -1;
                        this.i18 = this.i15 + 1;
                        this.i15 = this.i15 ^ -1;
                        this.i15 = this.i21 + this.i15;
                        this.i15 = this.i20 + this.i15;
                        if(uint(this.i15) >= uint(this.i20))
                        {
                           this.i15 = this.i18;
                           continue;
                        }
                        break;
                     }
                  }
                  this.i14 = this.i20;
                  continue loop36;
               }
               this.i14 = this.i23;
               §§goto(addr7366);
            case 18:
               mstate.esp = mstate.esp + 12;
               §§goto(addr7699);
            case 19:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i15,this.i14 + 4);
               this.i15 = 1;
               si32(this.i15,this.i14 + 8);
               continue loop55;
            case 20:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i15,this.i14 + 4);
               this.i15 = 1;
               si32(this.i15,this.i14 + 8);
               continue loop57;
            case 21:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i15,this.i14 + 4);
               this.i15 = 1;
               si32(this.i15,this.i14 + 8);
               continue loop59;
            case 22:
               this.f0 = this.f0 * 5.36312e154;
               sf64(this.f0,mstate.ebp + -1776);
               this.i19 = li32(mstate.ebp + -1772);
               this.i14 = this.i19 >>> 20;
               this.i14 = this.i14 & 2047;
               this.i15 = li32(mstate.ebp + -1776);
               this.i14 = this.i14 + -1536;
               this.i18 = this.i12 == 0?1:int(this.i12);
               si32(this.i14,mstate.ebp + -1744);
               this.i14 = this.i18 > 13?int(this.i18):14;
               if(uint(this.i14) >= uint(20))
               {
                  this.i21 = 4;
                  this.i22 = 0;
                  addr8957:
                  this.i21 = this.i21 << 1;
                  this.i22 = this.i22 + 1;
                  this.i23 = this.i21 + 16;
                  if(uint(this.i23) <= uint(this.i14))
                  {
                     §§goto(addr8957);
                  }
                  this.i21 = this.i22;
               }
               else
               {
                  this.i21 = 0;
               }
               mstate.esp = mstate.esp - 4;
               si32(this.i21,mstate.esp);
               state = 23;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 23:
               this.i22 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i23 = this.i14 + -1;
               this.i24 = this.i22 + 4;
               si32(this.i21,this.i22);
               this.i21 = this.i24 + this.i23;
               this.i22 = this.i24;
               if(this.i23 <= 13)
               {
                  this.i14 = this.i21;
               }
               else
               {
                  this.i21 = 0;
                  this.i14 = this.i14 + this.i24;
                  this.i14 = this.i14 + -1;
                  while(true)
                  {
                     this.i25 = 0;
                     this.i26 = this.i21 ^ -1;
                     si8(this.i25,this.i14);
                     this.i14 = this.i14 + -1;
                     this.i21 = this.i21 + 1;
                     this.i25 = this.i23 + this.i26;
                     if(this.i25 >= 14)
                     {
                        continue;
                     }
                     break;
                  }
                  this.i14 = this.i22 + this.i25;
               }
               this.i25 = this.i14;
               this.i14 = this.i22 + 5;
               this.i21 = this.i25;
               if(uint(this.i14) < uint(this.i25))
               {
                  if(uint(this.i25) > uint(this.i22))
                  {
                     this.i26 = 0;
                     this.i23 = this.i21;
                     this.i21 = this.i15;
                     this.i15 = this.i19;
                     while(true)
                     {
                        this.i19 = this.i23;
                        this.i23 = this.i26;
                        this.i26 = this.i21 & 15;
                        this.i27 = this.i23 ^ -1;
                        si8(this.i26,this.i19);
                        this.i19 = this.i19 + -1;
                        this.i26 = this.i23 + 1;
                        this.i23 = this.i25 + this.i27;
                        this.i21 = this.i21 >>> 4;
                        if(uint(this.i14) < uint(this.i23))
                        {
                           if(uint(this.i23) <= uint(this.i22))
                           {
                              break;
                           }
                           this.i23 = this.i19;
                           continue;
                        }
                        break;
                     }
                     this.i14 = this.i21;
                     this.i19 = this.i23;
                  }
                  addr9210:
                  this.i23 = this.i14;
                  this.i26 = this.i15;
                  this.i14 = this.i19;
                  this.i21 = this.i26;
                  this.i15 = this.i14;
                  if(uint(this.i14) <= uint(this.i22))
                  {
                     this.i15 = this.i21;
                  }
                  else
                  {
                     this.i19 = 0;
                     this.i25 = this.i23;
                     this.i23 = this.i26;
                     while(true)
                     {
                        this.i26 = this.i23 >>> 4;
                        this.i21 = this.i21 & 15;
                        this.i27 = this.i19 ^ -1;
                        this.i23 = this.i23 & -1048576;
                        this.i26 = this.i26 & 65535;
                        si8(this.i21,this.i15);
                        this.i23 = this.i26 | this.i23;
                        this.i15 = this.i15 + -1;
                        this.i19 = this.i19 + 1;
                        this.i21 = this.i14 + this.i27;
                        this.i26 = this.i23;
                        if(uint(this.i21) <= uint(this.i22))
                        {
                           break;
                        }
                        this.i21 = this.i26;
                     }
                     this.i15 = this.i26;
                     this.i14 = this.i21;
                  }
                  this.i15 = this.i15 | 1;
                  si8(this.i15,this.i14);
                  if(this.i18 >= 0)
                  {
                     this.i14 = this.i18;
                  }
                  else
                  {
                     this.i14 = li8(this.i22 + 13);
                     if(this.i14 != 0)
                     {
                        this.i14 = 14;
                     }
                     else
                     {
                        this.i14 = -1;
                        this.i15 = this.i24 + 12;
                        while(true)
                        {
                           this.i19 = li8(this.i15);
                           this.i15 = this.i15 + -1;
                           this.i14 = this.i14 + 1;
                           if(this.i19 == 0)
                           {
                              continue;
                           }
                           break;
                        }
                        this.i14 = 13 - this.i14;
                     }
                  }
                  addr9554:
                  if(this.i14 <= 13)
                  {
                     this.i15 = this.i22 + this.i14;
                     this.i15 = li8(this.i15);
                     if(this.i15 != 0)
                     {
                        this.i15 = mstate.ebp + -1744;
                        mstate.esp = mstate.esp - 12;
                        si32(this.i22,mstate.esp);
                        si32(this.i14,mstate.esp + 4);
                        si32(this.i15,mstate.esp + 8);
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                     }
                  }
                  this.i15 = 0;
                  this.i19 = this.i22 + this.i14;
                  si32(this.i19,mstate.ebp + -1740);
                  this.i18 = this.i14 + -1;
                  si8(this.i15,this.i19);
                  this.i15 = this.i22 + this.i18;
                  if(uint(this.i15) >= uint(this.i22))
                  {
                     this.i15 = 0;
                     this.i14 = this.i24 + this.i14;
                     this.i14 = this.i14 + -1;
                     while(true)
                     {
                        this.i19 = si8(li8(this.i14));
                        this.i19 = this.i3 + this.i19;
                        this.i19 = li8(this.i19);
                        si8(this.i19,this.i14);
                        this.i14 = this.i14 + -1;
                        this.i19 = this.i15 + 1;
                        this.i15 = this.i15 ^ -1;
                        this.i15 = this.i18 + this.i15;
                        this.i15 = this.i22 + this.i15;
                        if(uint(this.i15) >= uint(this.i22))
                        {
                           this.i15 = this.i19;
                           continue;
                        }
                        break;
                     }
                  }
                  this.i14 = this.i22;
                  continue loop56;
               }
               this.i14 = this.i15;
               this.i15 = this.i19;
               this.i19 = this.i25;
               §§goto(addr9210);
            case 24:
               mstate.esp = mstate.esp + 12;
               §§goto(addr9554);
            case 25:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               this.i17 = li32(mstate.ebp + -1744);
               if(this.i17 != -32768)
               {
                  this.i19 = this.i17;
                  this.i18 = this.i3;
                  this.i15 = this.i14;
                  this.i3 = li32(mstate.ebp + -2457);
                  this.i12 = this.i3;
                  this.i3 = li32(mstate.ebp + -2376);
                  this.i17 = this.i3;
                  this.i3 = li32(mstate.ebp + -2466);
               }
               else
               {
                  this.i17 = this.i14;
                  addr11166:
                  this.i14 = this.i17;
                  this.i12 = 2147483647;
                  si32(this.i12,mstate.ebp + -1744);
                  this.i19 = this.i12;
                  this.i18 = this.i3;
                  this.i15 = this.i14;
                  this.i3 = li32(mstate.ebp + -2457);
                  this.i12 = this.i3;
                  this.i3 = li32(mstate.ebp + -2376);
                  this.i17 = this.i3;
                  this.i3 = li32(mstate.ebp + -2466);
               }
               continue loop39;
            case 26:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               this.i17 = li32(mstate.ebp + -1744);
               if(this.i17 != -32768)
               {
                  this.i19 = this.i17;
                  this.i18 = this.i3;
                  this.i15 = this.i14;
                  this.i3 = li32(mstate.ebp + -2457);
                  this.i12 = this.i3;
                  this.i3 = li32(mstate.ebp + -2376);
                  this.i17 = this.i3;
                  this.i3 = li32(mstate.ebp + -2466);
                  continue loop39;
               }
            case 27:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               this.i17 = li32(mstate.ebp + -1744);
               if(this.i17 != -32768)
               {
                  this.i19 = this.i17;
                  this.i18 = this.i3;
                  this.i15 = this.i14;
                  this.i3 = li32(mstate.ebp + -2457);
                  this.i12 = this.i3;
                  this.i3 = li32(mstate.ebp + -2376);
                  this.i17 = this.i3;
                  this.i3 = li32(mstate.ebp + -2466);
                  continue loop39;
               }
               this.i17 = this.i14;
               §§goto(addr11166);
            case 28:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               this.i17 = li32(mstate.ebp + -1744);
               if(this.i17 != -32768)
               {
                  this.i19 = this.i17;
                  this.i18 = this.i3;
                  this.i15 = this.i14;
                  this.i3 = li32(mstate.ebp + -2457);
                  this.i12 = this.i3;
                  this.i3 = li32(mstate.ebp + -2376);
                  this.i17 = this.i3;
                  this.i3 = li32(mstate.ebp + -2466);
                  continue loop39;
               }
               this.i17 = this.i14;
               §§goto(addr11166);
            case 29:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               this.i17 = li32(mstate.ebp + -1744);
               if(this.i17 != -32768)
               {
                  this.i19 = this.i17;
                  this.i18 = this.i3;
                  this.i15 = this.i14;
                  this.i3 = li32(mstate.ebp + -2457);
                  this.i12 = this.i3;
                  this.i3 = li32(mstate.ebp + -2376);
                  this.i17 = this.i3;
                  this.i3 = li32(mstate.ebp + -2466);
                  continue loop39;
               }
               this.i17 = this.i14;
               §§goto(addr11166);
            case 30:
               this.i17 = this.i14;
               §§goto(addr11166);
            case 31:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i8 = 0;
               si32(this.i8,this.i3 + 4);
               this.i8 = 1;
               si32(this.i8,this.i3 + 8);
               continue loop67;
            case 32:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i8 = 0;
               si32(this.i8,this.i3 + 4);
               this.i8 = 1;
               si32(this.i8,this.i3 + 8);
               continue loop70;
            case 33:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i1 = 0;
               si32(this.i1,this.i3 + 4);
               this.i1 = 1;
               si32(this.i1,this.i3 + 8);
               continue loop72;
            case 34:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               this.i8 = this.i8 & 2047;
               this.i14 = this.i3;
               if(this.i8 != 0)
               {
                  this.i14 = 0;
                  this.i15 = this.i3 | 1072693248;
                  this.i15 = this.i15 & 1073741823;
                  this.i8 = this.i8 + -1023;
                  this.i17 = this.i14;
                  this.i19 = li32(mstate.ebp + -2412);
                  this.i18 = this.i3;
               }
               else
               {
                  this.i8 = li32(mstate.ebp + -8);
                  this.i15 = li32(mstate.ebp + -4);
                  this.i8 = this.i15 + this.i8;
                  this.i17 = this.i8 + -1;
                  this.i15 = this.i8 + 1074;
                  if(this.i15 >= 33)
                  {
                     this.i20 = 1;
                     this.i15 = this.i8 + 1042;
                     this.i8 = -1010 - this.i8;
                     this.i19 = li32(mstate.ebp + -2412);
                     this.i15 = this.i19 >>> this.i15;
                     this.i8 = this.i14 << this.i8;
                     this.i8 = this.i8 | this.i15;
                     this.f0 = Number(uint(this.i8));
                     sf64(this.f0,mstate.ebp + -1792);
                     this.i8 = li32(mstate.ebp + -1788);
                     this.i14 = li32(mstate.ebp + -1792);
                     this.i15 = this.i8 + -32505856;
                     this.i21 = 0;
                     this.i19 = this.i14;
                     this.i18 = this.i8;
                     this.i14 = this.i21;
                     this.i8 = this.i17;
                     this.i17 = this.i20;
                  }
                  else
                  {
                     this.i20 = 1;
                     this.i8 = -1042 - this.i8;
                     this.i14 = li32(mstate.ebp + -2412);
                     this.i8 = this.i14 << this.i8;
                     this.f0 = Number(uint(this.i8));
                     sf64(this.f0,mstate.ebp + -1800);
                     this.i8 = li32(mstate.ebp + -1796);
                     this.i14 = li32(mstate.ebp + -1800);
                     this.i15 = this.i8 + -32505856;
                     this.i21 = 0;
                     this.i19 = this.i14;
                     this.i18 = this.i8;
                     this.i14 = this.i21;
                     this.i8 = this.i17;
                     this.i17 = this.i20;
                  }
               }
               si32(this.i17,mstate.ebp + -2349);
               this.f0 = 0;
               this.i14 = this.i19 | this.i14;
               si32(this.i14,mstate.ebp + -1808);
               si32(this.i15,mstate.ebp + -1804);
               this.f2 = lf64(mstate.ebp + -1808);
               this.f2 = this.f2 + -1.5;
               this.f3 = Number(this.i8);
               this.f2 = this.f2 * 0.28953;
               this.f3 = this.f3 * 0.30103;
               this.f2 = this.f2 + 0.176091;
               this.f2 = this.f2 + this.f3;
               this.i14 = int(this.f2);
               if(this.f2 < this.f0)
               {
                  this.f0 = Number(this.i14);
                  if(this.f0 != this.f2)
                  {
                     this.i14 = this.i14 + -1;
                  }
                  addr12676:
                  if(uint(this.i14) >= uint(23))
                  {
                     this.i15 = 1;
                  }
                  else
                  {
                     this.i15 = FSM___vfprintf;
                     this.i17 = this.i14 << 3;
                     this.i15 = this.i15 + this.i17;
                     this.f0 = lf64(this.i15);
                     if(this.f1 >= this.f0)
                     {
                        this.i15 = 0;
                     }
                     else
                     {
                        this.i15 = 0;
                        this.i14 = this.i14 + -1;
                     }
                  }
                  si32(this.i15,mstate.ebp + -2367);
                  this.i15 = li32(mstate.ebp + -8);
                  this.i15 = this.i15 - this.i8;
                  this.i17 = this.i15 + -1;
                  this.i15 = 1 - this.i15;
                  this.i19 = this.i17 > -1?int(this.i17):0;
                  this.i15 = this.i17 > -1?0:int(this.i15);
                  if(this.i14 >= 0)
                  {
                     this.i19 = this.i19 + this.i14;
                     if(this.i1 <= 2)
                     {
                        if(uint(this.i1) >= uint(2))
                        {
                           if(this.i1 != 2)
                           {
                              addr12932:
                              this.i17 = 1;
                              this.i20 = 0;
                              this.i21 = this.i14;
                              this.i22 = this.i18;
                              this.i23 = li32(mstate.ebp + -2457);
                           }
                           else
                           {
                              this.i8 = 0;
                              this.i17 = this.i14;
                              addr12827:
                              this.i20 = 0;
                              this.i18 = this.i17;
                              this.i17 = this.i8;
                              addr12883:
                              this.i8 = this.i20;
                              addr12883:
                              this.i23 = this.i8;
                              this.i8 = li32(mstate.ebp + -2457);
                              if(this.i8 >= 1)
                              {
                                 this.i21 = this.i18;
                                 this.i20 = this.i17;
                                 this.i8 = li32(mstate.ebp + -2457);
                                 this.i22 = this.i8;
                                 this.i18 = this.i8;
                                 this.i17 = this.i23;
                                 this.i23 = this.i8;
                              }
                              else
                              {
                                 this.i24 = 1;
                                 this.i21 = this.i18;
                                 this.i20 = this.i17;
                                 this.i22 = this.i24;
                                 this.i18 = this.i24;
                                 this.i8 = this.i24;
                                 this.i17 = this.i23;
                                 this.i23 = this.i24;
                              }
                           }
                        }
                        else
                        {
                           this.i8 = 0;
                           this.i17 = this.i14;
                           addr13095:
                           this.i23 = 0;
                           this.i24 = 1;
                           this.i25 = 18;
                           this.i18 = -1;
                           this.i21 = this.i17;
                           this.i20 = this.i8;
                           this.i22 = this.i18;
                           this.i8 = this.i25;
                           this.i17 = this.i24;
                        }
                     }
                     else
                     {
                        if(this.i1 != 3)
                        {
                           if(this.i1 != 4)
                           {
                              if(this.i1 == 5)
                              {
                                 this.i8 = 1;
                                 this.i17 = 0;
                                 this.i18 = this.i14;
                              }
                              else
                              {
                                 §§goto(addr12932);
                              }
                           }
                           else
                           {
                              this.i8 = 1;
                              this.i17 = 0;
                              this.i18 = this.i14;
                              §§goto(addr12883);
                           }
                        }
                        else
                        {
                           this.i8 = 0;
                           this.i17 = this.i14;
                        }
                        addr13183:
                        this.i23 = this.i8;
                        this.i8 = li32(mstate.ebp + -2457);
                        this.i8 = this.i14 + this.i8;
                        this.i24 = this.i8 + 1;
                        if(this.i24 >= 1)
                        {
                           this.i21 = this.i18;
                           this.i20 = this.i17;
                           this.i22 = this.i24;
                           this.i18 = this.i8;
                           this.i8 = this.i24;
                           this.i17 = this.i23;
                           this.i23 = li32(mstate.ebp + -2457);
                        }
                        else
                        {
                           this.i25 = 1;
                           this.i21 = this.i18;
                           this.i20 = this.i17;
                           this.i22 = this.i24;
                           this.i18 = this.i8;
                           this.i8 = this.i25;
                           this.i17 = this.i23;
                           this.i23 = li32(mstate.ebp + -2457);
                        }
                     }
                     addr13278:
                     si32(this.i21,mstate.ebp + -2403);
                     this.i21 = this.i22;
                     si32(this.i18,mstate.ebp + -2394);
                     si32(this.i17,mstate.ebp + -2421);
                     this.i17 = this.i23;
                     si32(this.i17,mstate.ebp + -2385);
                     if(uint(this.i8) >= uint(20))
                     {
                        this.i17 = 4;
                        this.i18 = 0;
                        while(true)
                        {
                           this.i17 = this.i17 << 1;
                           this.i18 = this.i18 + 1;
                           this.i22 = this.i17 + 16;
                           if(uint(this.i22) <= uint(this.i8))
                           {
                              continue;
                           }
                           break;
                        }
                        this.i8 = this.i18;
                     }
                     else
                     {
                        this.i8 = 0;
                     }
                     mstate.esp = mstate.esp - 4;
                     si32(this.i8,mstate.esp);
                     state = 35;
                     mstate.esp = mstate.esp - 4;
                     FSM___vfprintf.start();
                     return;
                  }
                  this.i20 = 0 - this.i14;
                  this.i15 = this.i15 - this.i14;
                  if(this.i1 <= 2)
                  {
                     if(uint(this.i1) >= uint(2))
                     {
                        if(this.i1 != 2)
                        {
                           addr13069:
                           this.i17 = 1;
                           this.i21 = 0;
                           this.i22 = this.i18;
                           this.i23 = li32(mstate.ebp + -2457);
                        }
                        else
                        {
                           this.i8 = 0;
                           this.i17 = this.i8;
                           this.i8 = this.i20;
                           §§goto(addr12827);
                        }
                     }
                     else
                     {
                        this.i8 = 0;
                        this.i17 = this.i8;
                        this.i8 = this.i20;
                        §§goto(addr13095);
                     }
                  }
                  else
                  {
                     if(this.i1 != 3)
                     {
                        if(this.i1 != 4)
                        {
                           if(this.i1 == 5)
                           {
                              this.i8 = 1;
                              this.i17 = 0;
                              this.i18 = this.i17;
                              this.i17 = this.i20;
                           }
                           else
                           {
                              §§goto(addr13069);
                           }
                        }
                        else
                        {
                           this.i8 = 1;
                           this.i17 = 0;
                           this.i18 = this.i17;
                           this.i17 = this.i20;
                           §§goto(addr12883);
                        }
                     }
                     else
                     {
                        this.i8 = 0;
                        this.i17 = this.i8;
                        this.i8 = this.i20;
                     }
                     §§goto(addr13183);
                  }
                  §§goto(addr13278);
                  this.i20 = 0;
                  this.i18 = this.i17;
                  this.i17 = this.i8;
                  this.i8 = this.i20;
                  §§goto(addr13183);
               }
               §§goto(addr12676);
            case 35:
               this.i17 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               si32(this.i8,this.i17);
               this.i8 = this.i17 + 4;
               si32(this.i8,mstate.ebp + -2484);
               if(uint(this.i21) <= uint(14))
               {
                  if(this.i14 >= 1)
                  {
                     this.i17 = FSM___vfprintf;
                     this.i18 = this.i14 & 15;
                     this.i18 = this.i18 << 3;
                     this.i17 = this.i17 + this.i18;
                     this.f0 = lf64(this.i17);
                     this.i17 = this.i14 >> 4;
                     this.i18 = this.i17 & 16;
                     if(this.i18 == 0)
                     {
                        this.i18 = 0;
                        this.i22 = 2;
                        this.i23 = li32(mstate.ebp + -2412);
                        this.i24 = this.i3;
                        loop76:
                        while(true)
                        {
                           this.i25 = this.i22;
                           this.i26 = this.i18;
                           if(this.i17 != 0)
                           {
                              this.i18 = this.i23;
                              this.i22 = this.i24;
                              this.i24 = this.i25;
                              this.i23 = this.i26;
                              addr13544:
                              while(true)
                              {
                                 this.i25 = this.i17 & 1;
                                 if(this.i25 != 0)
                                 {
                                    this.i25 = FSM___vfprintf;
                                    this.i26 = this.i23 << 3;
                                    this.i25 = this.i25 + this.i26;
                                    this.f2 = lf64(this.i25);
                                    this.f0 = this.f2 * this.f0;
                                    this.i24 = this.i24 + 1;
                                 }
                                 this.i25 = this.i24;
                                 this.i26 = this.i23 + 1;
                                 this.i17 = this.i17 >> 1;
                                 this.i23 = this.i18;
                                 this.i24 = this.i22;
                                 this.i22 = this.i25;
                                 this.i18 = this.i26;
                                 continue loop76;
                              }
                           }
                           this.i18 = this.i23;
                           this.i22 = this.i24;
                           this.i17 = this.i25;
                           break;
                        }
                     }
                     else
                     {
                        this.f2 = this.f1 / 1.0e256;
                        sf64(this.f2,mstate.ebp + -1816);
                        this.i18 = li32(mstate.ebp + -1816);
                        this.i22 = li32(mstate.ebp + -1812);
                        this.i17 = this.i17 & 15;
                        if(this.i17 != 0)
                        {
                           this.i23 = 0;
                           this.i24 = 3;
                           §§goto(addr13544);
                        }
                        else
                        {
                           this.i17 = 3;
                        }
                     }
                     si32(this.i18,mstate.ebp + -1824);
                     si32(this.i22,mstate.ebp + -1820);
                     this.f2 = lf64(mstate.ebp + -1824);
                     this.f0 = this.f2 / this.f0;
                     sf64(this.f0,mstate.ebp + -1832);
                     this.i18 = li32(mstate.ebp + -1832);
                     this.i22 = li32(mstate.ebp + -1828);
                     this.i23 = li32(mstate.ebp + -2367);
                     if(this.i23 != 0)
                     {
                        addr13969:
                        this.f0 = 1;
                        si32(this.i18,mstate.ebp + -1864);
                        si32(this.i22,mstate.ebp + -1860);
                        this.f2 = lf64(mstate.ebp + -1864);
                        if(this.f2 < this.f0)
                        {
                           if(this.i21 > 0)
                           {
                              this.i18 = li32(mstate.ebp + -2394);
                              if(this.i18 >= 1)
                              {
                                 this.f0 = this.f2 * 10;
                                 sf64(this.f0,mstate.ebp + -1872);
                                 this.i18 = li32(mstate.ebp + -1872);
                                 this.i22 = li32(mstate.ebp + -1868);
                                 this.i17 = this.i17 + 1;
                                 this.i24 = this.i14 + -1;
                                 this.i23 = li32(mstate.ebp + -2394);
                              }
                           }
                        }
                        this.i23 = this.i21;
                        this.i24 = this.i14;
                     }
                     else
                     {
                        this.i23 = this.i21;
                        this.i24 = this.i14;
                     }
                  }
                  else
                  {
                     this.i17 = 0 - this.i14;
                     if(this.i14 == 0)
                     {
                        this.i17 = 2;
                        this.i18 = li32(mstate.ebp + -2412);
                        this.i22 = this.i3;
                     }
                     else
                     {
                        this.i18 = FSM___vfprintf;
                        this.i22 = this.i17 & 15;
                        this.i22 = this.i22 << 3;
                        this.i18 = this.i18 + this.i22;
                        this.f0 = lf64(this.i18);
                        this.f0 = this.f1 * this.f0;
                        sf64(this.f0,mstate.ebp + -1840);
                        this.i18 = li32(mstate.ebp + -1840);
                        this.i22 = li32(mstate.ebp + -1836);
                        this.i23 = this.i17 >> 4;
                        if(uint(this.i17) >= uint(16))
                        {
                           this.i17 = FSM___vfprintf;
                           this.i24 = 2;
                           while(true)
                           {
                              this.i25 = this.i17;
                              this.i26 = this.i23 & 1;
                              if(this.i26 != 0)
                              {
                                 si32(this.i18,mstate.ebp + -1848);
                                 si32(this.i22,mstate.ebp + -1844);
                                 this.f0 = lf64(this.i25);
                                 this.f2 = lf64(mstate.ebp + -1848);
                                 this.f0 = this.f2 * this.f0;
                                 sf64(this.f0,mstate.ebp + -1856);
                                 this.i18 = li32(mstate.ebp + -1856);
                                 this.i22 = li32(mstate.ebp + -1852);
                                 this.i24 = this.i24 + 1;
                              }
                              this.i17 = this.i17 + 8;
                              this.i25 = this.i23 >> 1;
                              if(uint(this.i23) >= uint(2))
                              {
                                 this.i23 = this.i25;
                                 continue;
                              }
                              break;
                           }
                           this.i17 = this.i24;
                        }
                        else
                        {
                           this.i17 = 2;
                        }
                     }
                     this.i23 = li32(mstate.ebp + -2367);
                     if(this.i23 != 0)
                     {
                        §§goto(addr13969);
                     }
                     else
                     {
                        this.i23 = this.i21;
                        this.i24 = this.i14;
                     }
                  }
                  si32(this.i18,mstate.ebp + -1880);
                  si32(this.i22,mstate.ebp + -1876);
                  this.f0 = lf64(mstate.ebp + -1880);
                  this.f2 = Number(this.i17);
                  this.f2 = this.f2 * this.f0;
                  this.f2 = this.f2 + 7;
                  sf64(this.f2,mstate.ebp + -1888);
                  this.i17 = li32(mstate.ebp + -1884);
                  this.i25 = li32(mstate.ebp + -1888);
                  this.i17 = this.i17 + -54525952;
                  if(this.i23 == 0)
                  {
                     si32(this.i25,mstate.ebp + -1896);
                     si32(this.i17,mstate.ebp + -1892);
                     this.f2 = lf64(mstate.ebp + -1896);
                     this.f0 = this.f0 + -5;
                     if(this.f0 > this.f2)
                     {
                        this.i3 = 0;
                        this.i1 = this.i24;
                        this.i8 = this.i12;
                        this.i12 = this.i3;
                        addr14197:
                        this.i14 = 49;
                        this.i15 = li32(mstate.ebp + -2484);
                        si8(this.i14,this.i15);
                        this.i14 = 0;
                        this.i1 = this.i1 + 1;
                        this.i15 = this.i15 + 1;
                        this.i17 = this.i12;
                        this.i12 = this.i15;
                     }
                     else
                     {
                        this.f2 = -this.f2;
                        if(this.f0 < this.f2)
                        {
                           addr14249:
                           this.i3 = 0;
                           this.i1 = this.i12;
                           addr17485:
                           this.i8 = this.i3;
                           this.i12 = li32(mstate.ebp + -2385);
                           this.i12 = this.i12 ^ -1;
                           if(this.i3 != 0)
                           {
                              this.i14 = FSM___vfprintf;
                              this.i15 = li32(this.i3 + 4);
                              this.i15 = this.i15 << 2;
                              this.i14 = this.i14 + this.i15;
                              this.i15 = li32(this.i14);
                              si32(this.i15,this.i3);
                              si32(this.i3,this.i14);
                           }
                           if(this.i8 != 0)
                           {
                              this.i3 = 0;
                              this.i14 = li32(mstate.ebp + -2484);
                              addr19797:
                              if(this.i3 != this.i8)
                              {
                                 if(this.i3 != 0)
                                 {
                                    this.i15 = FSM___vfprintf;
                                    this.i17 = li32(this.i3 + 4);
                                    this.i17 = this.i17 << 2;
                                    this.i15 = this.i15 + this.i17;
                                    this.i17 = li32(this.i15);
                                    si32(this.i17,this.i3);
                                    si32(this.i3,this.i15);
                                 }
                              }
                              if(this.i8 == 0)
                              {
                                 this.i3 = this.i12;
                                 this.i8 = this.i1;
                                 this.i1 = this.i14;
                              }
                              else
                              {
                                 this.i3 = FSM___vfprintf;
                                 this.i15 = li32(this.i8 + 4);
                                 this.i15 = this.i15 << 2;
                                 this.i3 = this.i3 + this.i15;
                                 this.i15 = li32(this.i3);
                                 si32(this.i15,this.i8);
                                 si32(this.i8,this.i3);
                                 this.i3 = this.i12;
                                 this.i8 = this.i1;
                                 this.i1 = this.i14;
                              }
                           }
                           else
                           {
                              this.i3 = this.i12;
                              this.i8 = this.i1;
                              this.i1 = li32(mstate.ebp + -2484);
                           }
                        }
                        addr20001:
                        if(this.i8 != 0)
                        {
                           this.i12 = FSM___vfprintf;
                           this.i14 = li32(this.i8 + 4);
                           this.i14 = this.i14 << 2;
                           this.i12 = this.i12 + this.i14;
                           this.i14 = li32(this.i12);
                           si32(this.i14,this.i8);
                           si32(this.i8,this.i12);
                        }
                        this.i8 = 0;
                        si8(this.i8,this.i1);
                        addr20059:
                        this.i3 = this.i3 + 1;
                        si32(this.i3,mstate.ebp + -1744);
                        si32(this.i1,mstate.ebp + -1740);
                        this.i3 = li32(mstate.ebp + -2340);
                        this.i1 = li32(mstate.ebp + -2484);
                        continue loop69;
                     }
                     addr19719:
                     this.i15 = this.i17;
                     this.i17 = this.i12;
                     if(this.i3 != 0)
                     {
                        this.i12 = FSM___vfprintf;
                        this.i19 = li32(this.i3 + 4);
                        this.i19 = this.i19 << 2;
                        this.i12 = this.i12 + this.i19;
                        this.i19 = li32(this.i12);
                        si32(this.i19,this.i3);
                        si32(this.i3,this.i12);
                     }
                     if(this.i15 != 0)
                     {
                        this.i12 = this.i1;
                        this.i1 = this.i8;
                        this.i3 = this.i14;
                        this.i8 = this.i15;
                        this.i14 = this.i17;
                        §§goto(addr19797);
                     }
                     else
                     {
                        this.i3 = this.i1;
                        this.i1 = this.i17;
                     }
                     §§goto(addr20001);
                  }
                  else
                  {
                     this.i26 = li32(mstate.ebp + -2421);
                     if(this.i26 != 0)
                     {
                        this.i26 = FSM___vfprintf;
                        this.i27 = this.i23 << 3;
                        si32(this.i25,mstate.ebp + -1904);
                        si32(this.i17,mstate.ebp + -1900);
                        this.i17 = this.i27 + this.i26;
                        this.f0 = lf64(this.i17 + -8);
                        this.f2 = lf64(mstate.ebp + -1904);
                        this.f0 = 0.5 / this.f0;
                        this.i17 = 0;
                        this.f0 = this.f0 - this.f2;
                        loop80:
                        while(true)
                        {
                           si32(this.i18,mstate.ebp + -1912);
                           si32(this.i22,mstate.ebp + -1908);
                           this.f2 = lf64(mstate.ebp + -1912);
                           this.i18 = int(this.f2);
                           this.f3 = Number(this.i18);
                           this.i18 = this.i18 + 48;
                           this.i22 = this.i8 + this.i17;
                           si8(this.i18,this.i22);
                           this.f2 = this.f2 - this.f3;
                           this.i18 = this.i17 + 1;
                           if(this.f2 >= this.f0)
                           {
                              this.f3 = 1 - this.f2;
                              if(this.f3 >= this.f0)
                              {
                                 if(this.i18 < this.i23)
                                 {
                                    this.f2 = this.f2 * 10;
                                    sf64(this.f2,mstate.ebp + -1920);
                                    this.i18 = li32(mstate.ebp + -1920);
                                    this.i22 = li32(mstate.ebp + -1916);
                                    this.i17 = this.i17 + 1;
                                    this.f0 = this.f0 * 10;
                                    continue;
                                 }
                              }
                              else
                              {
                                 this.i3 = li32(mstate.ebp + -2484);
                                 this.i1 = this.i3 + this.i18;
                                 this.i3 = this.i24;
                              }
                              addr15061:
                              this.i8 = 0;
                              while(true)
                              {
                                 this.i15 = this.i8;
                                 this.i8 = this.i15 ^ -1;
                                 this.i8 = this.i1 + this.i8;
                                 this.i14 = li8(this.i8);
                                 if(this.i14 != 57)
                                 {
                                    this.i14 = this.i14 + 1;
                                    si8(this.i14,this.i8);
                                    this.i1 = this.i1 - this.i15;
                                    this.i8 = this.i12;
                                    break loop80;
                                 }
                                 this.i15 = this.i15 + 1;
                                 this.i14 = li32(mstate.ebp + -2484);
                                 if(this.i8 != this.i14)
                                 {
                                    this.i8 = this.i15;
                                    continue;
                                 }
                                 this.i14 = 49;
                                 this.i15 = this.i15 + -1;
                                 si8(this.i14,this.i8);
                                 this.i1 = this.i1 - this.i15;
                                 if(this.i12 != 0)
                                 {
                                    this.i8 = FSM___vfprintf;
                                    this.i15 = li32(this.i12 + 4);
                                    this.i15 = this.i15 << 2;
                                    this.i8 = this.i8 + this.i15;
                                    this.i15 = li32(this.i8);
                                    si32(this.i15,this.i12);
                                    si32(this.i12,this.i8);
                                 }
                                 this.i8 = 0;
                                 si8(this.i8,this.i1);
                                 this.i3 = this.i3 + 2;
                                 break;
                              }
                              §§goto(addr20059);
                           }
                           else
                           {
                              this.i3 = li32(mstate.ebp + -2484);
                              this.i1 = this.i3 + this.i18;
                              this.i3 = this.i24;
                              this.i8 = this.i12;
                              break;
                           }
                        }
                        §§goto(addr20001);
                     }
                     else
                     {
                        this.i26 = FSM___vfprintf;
                        this.i27 = this.i23 << 3;
                        si32(this.i25,mstate.ebp + -1928);
                        si32(this.i17,mstate.ebp + -1924);
                        this.i17 = this.i27 + this.i26;
                        this.f0 = lf64(mstate.ebp + -1928);
                        this.f2 = lf64(this.i17 + -8);
                        this.i17 = 0;
                        this.f0 = this.f0 * this.f2;
                        while(true)
                        {
                           this.f2 = 0;
                           si32(this.i18,mstate.ebp + -1936);
                           si32(this.i22,mstate.ebp + -1932);
                           this.f3 = lf64(mstate.ebp + -1936);
                           this.i18 = int(this.f3);
                           this.f4 = Number(this.i18);
                           this.i18 = this.i18 + 48;
                           this.f3 = this.f3 - this.f4;
                           this.i22 = this.i17 + 1;
                           this.i25 = this.i8 + this.i17;
                           si8(this.i18,this.i25);
                           this.i23 = this.f3 == this.f2?int(this.i22):int(this.i23);
                           if(this.i22 == this.i23)
                           {
                              break;
                           }
                           this.f2 = this.f3 * 10;
                           sf64(this.f2,mstate.ebp + -1944);
                           this.i18 = li32(mstate.ebp + -1944);
                           this.i22 = li32(mstate.ebp + -1940);
                           this.i17 = this.i17 + 1;
                        }
                        this.i17 = li32(mstate.ebp + -2484);
                        this.i17 = this.i17 + this.i22;
                        this.f2 = this.f0 + 0.5;
                        if(this.f3 > this.f2)
                        {
                           this.i3 = this.i24;
                           this.i1 = this.i17;
                           §§goto(addr15061);
                        }
                        else
                        {
                           this.f0 = 0.5 - this.f0;
                           if(this.f3 < this.f0)
                           {
                              this.i3 = 0;
                              while(true)
                              {
                                 this.i1 = this.i3 ^ -1;
                                 this.i1 = this.i22 + this.i1;
                                 this.i8 = li32(mstate.ebp + -2484);
                                 this.i1 = this.i8 + this.i1;
                                 this.i1 = li8(this.i1);
                                 this.i3 = this.i3 + 1;
                                 if(this.i1 == 48)
                                 {
                                    continue;
                                 }
                                 break;
                              }
                              this.i3 = this.i3 + -1;
                              this.i3 = this.i22 - this.i3;
                              this.i1 = li32(mstate.ebp + -2484);
                              this.i1 = this.i1 + this.i3;
                              this.i3 = this.i24;
                              this.i8 = this.i12;
                           }
                        }
                        §§goto(addr20001);
                     }
                  }
               }
               this.i17 = li32(mstate.ebp + -4);
               if(this.i17 >= 0)
               {
                  if(this.i14 <= 14)
                  {
                     this.i1 = FSM___vfprintf;
                     this.i15 = this.i14 << 3;
                     this.i1 = this.i1 + this.i15;
                     this.f0 = lf64(this.i1);
                     this.i1 = li32(mstate.ebp + -2385);
                     if(this.i1 <= -1)
                     {
                        if(this.i21 < 1)
                        {
                           if(this.i21 >= 0)
                           {
                              this.f0 = this.f0 * 5;
                              if(this.f1 > this.f0)
                              {
                                 this.i3 = 0;
                                 this.i1 = this.i14;
                                 this.i8 = this.i12;
                                 this.i12 = this.i3;
                                 addr14196:
                                 §§goto(addr14197);
                              }
                           }
                           §§goto(addr14249);
                        }
                        §§goto(addr20001);
                     }
                     this.i1 = 0;
                     this.i15 = li32(mstate.ebp + -2412);
                     while(true)
                     {
                        this.f1 = 0;
                        si32(this.i15,mstate.ebp + -1952);
                        si32(this.i3,mstate.ebp + -1948);
                        this.f2 = lf64(mstate.ebp + -1952);
                        this.f3 = this.f2 / this.f0;
                        this.i3 = int(this.f3);
                        this.f3 = Number(this.i3);
                        this.f3 = this.f3 * this.f0;
                        this.f2 = this.f2 - this.f3;
                        this.i15 = this.i3 + -1;
                        this.i3 = this.f2 >= this.f1?int(this.i3):int(this.i15);
                        this.f3 = this.f2 + this.f0;
                        this.i15 = this.i3 + 48;
                        this.i17 = this.i8 + this.i1;
                        si8(this.i15,this.i17);
                        this.f2 = this.f2 < this.f1?Number(this.f3):Number(this.f2);
                        this.i15 = this.i1 + 1;
                        if(this.f2 != this.f1)
                        {
                           if(this.i15 == this.i21)
                           {
                              this.f2 = this.f2 + this.f2;
                              this.i1 = li32(mstate.ebp + -2484);
                              this.i1 = this.i1 + this.i15;
                              if(this.f2 > this.f0)
                              {
                                 addr14976:
                                 this.i3 = this.i14;
                                 §§goto(addr15061);
                              }
                              else
                              {
                                 if(this.f2 == this.f0)
                                 {
                                    this.i3 = this.i3 & 1;
                                    if(this.i3 != 0)
                                    {
                                       §§goto(addr14976);
                                    }
                                 }
                                 this.i3 = this.i14;
                                 this.i8 = this.i12;
                              }
                           }
                           else
                           {
                              this.f1 = this.f2 * 10;
                              sf64(this.f1,mstate.ebp + -1960);
                              this.i3 = li32(mstate.ebp + -1960);
                              this.i17 = li32(mstate.ebp + -1956);
                              this.i1 = this.i1 + 1;
                              this.i15 = this.i3;
                              this.i3 = this.i17;
                              continue;
                           }
                        }
                        else
                        {
                           this.i3 = li32(mstate.ebp + -2484);
                           this.i1 = this.i3 + this.i15;
                           this.i3 = this.i14;
                           this.i8 = this.i12;
                        }
                        §§goto(addr20001);
                     }
                  }
                  §§goto(addr19719);
               }
               this.i18 = li32(mstate.ebp + -2421);
               if(this.i18 == 0)
               {
                  this.i17 = 0;
                  this.i18 = this.i15;
               }
               else
               {
                  this.i18 = li32(mstate.ebp + -2349);
                  this.i18 = this.i18 ^ 1;
                  this.i18 = this.i18 & 1;
                  if(this.i18 == 0)
                  {
                     this.i17 = this.i17 + 1075;
                     this.i18 = li32(FSM___vfprintf + 4);
                     this.i19 = this.i17 + this.i19;
                     this.i17 = this.i17 + this.i15;
                     if(this.i18 != 0)
                     {
                        this.i22 = li32(this.i18);
                        si32(this.i22,FSM___vfprintf + 4);
                     }
                     else
                     {
                        this.i18 = FSM___vfprintf;
                        this.i22 = li32(FSM___vfprintf);
                        this.i18 = this.i22 - this.i18;
                        this.i18 = this.i18 >> 3;
                        this.i18 = this.i18 + 4;
                        if(uint(this.i18) <= uint(288))
                        {
                           this.i18 = 1;
                           this.i24 = this.i22 + 32;
                           si32(this.i24,FSM___vfprintf);
                           si32(this.i18,this.i22 + 4);
                           this.i18 = 2;
                           si32(this.i18,this.i22 + 8);
                           this.i18 = this.i22;
                        }
                        else
                        {
                           this.i18 = 32;
                           mstate.esp = mstate.esp - 4;
                           si32(this.i18,mstate.esp);
                           state = 36;
                           mstate.esp = mstate.esp - 4;
                           FSM___vfprintf.start();
                           return;
                        }
                     }
                     addr15485:
                     this.i22 = 0;
                     si32(this.i22,this.i18 + 12);
                     this.i22 = 1;
                     si32(this.i22,this.i18 + 20);
                     si32(this.i22,this.i18 + 16);
                     if(this.i19 >= 1)
                     {
                        if(this.i15 > 0)
                        {
                           addr15772:
                           this.i22 = this.i19 <= this.i15?int(this.i19):int(this.i15);
                           this.i19 = this.i19 - this.i22;
                           this.i15 = this.i15 - this.i22;
                           this.i17 = this.i17 - this.i22;
                        }
                     }
                  }
                  else
                  {
                     this.i17 = li32(mstate.ebp + -8);
                     this.i18 = li32(FSM___vfprintf + 4);
                     this.i17 = 54 - this.i17;
                     this.i19 = this.i17 + this.i19;
                     this.i17 = this.i17 + this.i15;
                     if(this.i18 != 0)
                     {
                        this.i22 = li32(this.i18);
                        si32(this.i22,FSM___vfprintf + 4);
                     }
                     else
                     {
                        this.i18 = FSM___vfprintf;
                        this.i22 = li32(FSM___vfprintf);
                        this.i18 = this.i22 - this.i18;
                        this.i18 = this.i18 >> 3;
                        this.i18 = this.i18 + 4;
                        if(uint(this.i18) <= uint(288))
                        {
                           this.i18 = 1;
                           this.i24 = this.i22 + 32;
                           si32(this.i24,FSM___vfprintf);
                           si32(this.i18,this.i22 + 4);
                           this.i18 = 2;
                           si32(this.i18,this.i22 + 8);
                           this.i18 = this.i22;
                        }
                        else
                        {
                           this.i18 = 32;
                           mstate.esp = mstate.esp - 4;
                           si32(this.i18,mstate.esp);
                           state = 37;
                           mstate.esp = mstate.esp - 4;
                           FSM___vfprintf.start();
                           return;
                        }
                     }
                     addr15706:
                     this.i22 = this.i18;
                     this.i18 = 0;
                     si32(this.i18,this.i22 + 12);
                     this.i18 = 1;
                     si32(this.i18,this.i22 + 20);
                     si32(this.i18,this.i22 + 16);
                     this.i18 = this.i17;
                     this.i17 = this.i22;
                  }
                  addr15807:
                  addr16195:
                  if(this.i20 > 0)
                  {
                     this.i22 = li32(mstate.ebp + -2421);
                     if(this.i22 != 0)
                     {
                        if(this.i20 >= 1)
                        {
                           mstate.esp = mstate.esp - 8;
                           si32(this.i18,mstate.esp);
                           si32(this.i20,mstate.esp + 4);
                           state = 38;
                           mstate.esp = mstate.esp - 4;
                           FSM___vfprintf.start();
                           return;
                        }
                     }
                     else
                     {
                        mstate.esp = mstate.esp - 8;
                        si32(this.i12,mstate.esp);
                        si32(this.i20,mstate.esp + 4);
                        state = 41;
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                        return;
                     }
                  }
                  addr16350:
                  this.i20 = li32(FSM___vfprintf + 4);
                  if(this.i20 != 0)
                  {
                     this.i22 = li32(this.i20);
                     si32(this.i22,FSM___vfprintf + 4);
                  }
                  else
                  {
                     this.i20 = FSM___vfprintf;
                     this.i22 = li32(FSM___vfprintf);
                     this.i20 = this.i22 - this.i20;
                     this.i20 = this.i20 >> 3;
                     this.i20 = this.i20 + 4;
                     if(uint(this.i20) <= uint(288))
                     {
                        this.i20 = 1;
                        this.i24 = this.i22 + 32;
                        si32(this.i24,FSM___vfprintf);
                        si32(this.i20,this.i22 + 4);
                        this.i20 = 2;
                        si32(this.i20,this.i22 + 8);
                        this.i20 = this.i22;
                     }
                     else
                     {
                        this.i20 = 32;
                        mstate.esp = mstate.esp - 4;
                        si32(this.i20,mstate.esp);
                        state = 42;
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                        return;
                     }
                  }
                  this.i22 = this.i20;
                  this.i20 = 0;
                  si32(this.i20,this.i22 + 12);
                  this.i20 = 1;
                  si32(this.i20,this.i22 + 20);
                  si32(this.i20,this.i22 + 16);
                  this.i20 = li32(mstate.ebp + -2403);
                  if(this.i20 <= 0)
                  {
                     this.i20 = this.i12;
                     this.i12 = this.i22;
                     addr16458:
                     this.i22 = this.i20;
                     this.i24 = li32(mstate.ebp + -2421);
                     if(this.i24 == 0)
                     {
                        if(this.i1 >= 2)
                        {
                        }
                        addr16482:
                        this.i3 = 0;
                        addr16537:
                        this.i24 = li32(mstate.ebp + -2403);
                        if(this.i24 == 0)
                        {
                           this.i24 = 1;
                        }
                        else
                        {
                           this.i24 = li32(this.i12 + 16);
                           this.i24 = this.i24 << 2;
                           this.i24 = this.i24 + this.i12;
                           this.i24 = li32(this.i24 + 16);
                           this.i20 = uint(this.i24) < uint(65536)?16:0;
                           this.i24 = this.i24 << this.i20;
                           this.i23 = uint(this.i24) < uint(16777216)?8:0;
                           this.i24 = this.i24 << this.i23;
                           this.i25 = uint(this.i24) < uint(268435456)?4:0;
                           this.i20 = this.i23 | this.i20;
                           this.i24 = this.i24 << this.i25;
                           this.i23 = uint(this.i24) < uint(1073741824)?2:0;
                           this.i20 = this.i20 | this.i25;
                           this.i20 = this.i20 | this.i23;
                           this.i24 = this.i24 << this.i23;
                           if(this.i24 <= -1)
                           {
                              this.i24 = this.i20;
                           }
                           else
                           {
                              this.i24 = this.i24 & 1073741824;
                              this.i20 = this.i20 + 1;
                              this.i24 = this.i24 == 0?32:int(this.i20);
                           }
                           this.i24 = 32 - this.i24;
                        }
                        this.i24 = this.i24 + this.i19;
                        this.i24 = this.i24 & 31;
                        this.i20 = 32 - this.i24;
                        this.i24 = this.i24 == 0?int(this.i24):int(this.i20);
                        if(this.i24 >= 5)
                        {
                           this.i24 = this.i24 + -4;
                           this.i19 = this.i24 + this.i19;
                           this.i15 = this.i24 + this.i15;
                           this.i17 = this.i24 + this.i17;
                           if(this.i17 <= 0)
                           {
                              this.i17 = this.i19;
                              this.i19 = this.i22;
                              addr16899:
                              if(this.i17 <= 0)
                              {
                                 addr16946:
                                 this.i17 = li32(mstate.ebp + -2367);
                                 if(this.i17 != 0)
                                 {
                                    this.i17 = li32(this.i19 + 16);
                                    this.i22 = li32(this.i12 + 16);
                                    this.i24 = this.i17 - this.i22;
                                    if(this.i17 != this.i22)
                                    {
                                       this.i17 = this.i24;
                                    }
                                    else
                                    {
                                       this.i17 = 0;
                                       while(true)
                                       {
                                          this.i24 = this.i17 ^ -1;
                                          this.i24 = this.i22 + this.i24;
                                          this.i20 = this.i24 << 2;
                                          this.i23 = this.i19 + this.i20;
                                          this.i20 = this.i12 + this.i20;
                                          this.i23 = li32(this.i23 + 20);
                                          this.i20 = li32(this.i20 + 20);
                                          if(this.i23 != this.i20)
                                          {
                                             this.i17 = uint(this.i23) < uint(this.i20)?-1:1;
                                             break;
                                          }
                                          this.i17 = this.i17 + 1;
                                          if(this.i24 <= 0)
                                          {
                                             this.i17 = 0;
                                             break;
                                          }
                                       }
                                    }
                                    if(this.i17 <= -1)
                                    {
                                       this.i17 = 10;
                                       mstate.esp = mstate.esp - 12;
                                       this.i22 = 0;
                                       si32(this.i19,mstate.esp);
                                       si32(this.i17,mstate.esp + 4);
                                       si32(this.i22,mstate.esp + 8);
                                       state = 46;
                                       mstate.esp = mstate.esp - 4;
                                       FSM___vfprintf.start();
                                       return;
                                    }
                                 }
                                 addr17233:
                                 this.i17 = this.i21;
                                 si32(this.i14,mstate.ebp + -2475);
                                 this.i14 = this.i19;
                                 this.i19 = this.i18;
                                 if(this.i17 <= 0)
                                 {
                                    if(this.i1 != 3)
                                    {
                                       if(this.i1 == 5)
                                       {
                                       }
                                       §§goto(addr20001);
                                    }
                                    if(this.i17 <= -1)
                                    {
                                       this.i1 = this.i14;
                                       this.i8 = this.i19;
                                       this.i3 = this.i12;
                                       §§goto(addr17485);
                                    }
                                    else
                                    {
                                       this.i3 = 0;
                                       mstate.esp = mstate.esp - 12;
                                       this.i1 = 5;
                                       si32(this.i12,mstate.esp);
                                       si32(this.i1,mstate.esp + 4);
                                       si32(this.i3,mstate.esp + 8);
                                       state = 48;
                                       mstate.esp = mstate.esp - 4;
                                       FSM___vfprintf.start();
                                       return;
                                    }
                                 }
                                 this.i1 = li32(mstate.ebp + -2421);
                                 if(this.i1 == 0)
                                 {
                                    this.i3 = 0;
                                    this.i1 = this.i14;
                                    addr17597:
                                    this.i14 = this.i1;
                                    mstate.esp = mstate.esp - 8;
                                    si32(this.i14,mstate.esp);
                                    si32(this.i12,mstate.esp + 4);
                                    mstate.esp = mstate.esp - 4;
                                    FSM___vfprintf.start();
                                 }
                                 else if(this.i15 <= 0)
                                 {
                                    this.i1 = this.i19;
                                    addr17808:
                                    this.i3 = this.i3 & 1;
                                    if(this.i3 == 0)
                                    {
                                       this.i3 = this.i1;
                                       addr17949:
                                       this.i15 = 0;
                                       this.i19 = li32(mstate.ebp + -2412);
                                       this.i19 = this.i19 & 1;
                                       addr17971:
                                       this.i18 = this.i15;
                                       this.i22 = this.i1;
                                       mstate.esp = mstate.esp - 8;
                                       si32(this.i14,mstate.esp);
                                       si32(this.i12,mstate.esp + 4);
                                       mstate.esp = mstate.esp - 4;
                                       FSM___vfprintf.start();
                                    }
                                    else
                                    {
                                       this.i3 = 1;
                                       this.i15 = li32(this.i1 + 4);
                                       mstate.esp = mstate.esp - 4;
                                       si32(this.i15,mstate.esp);
                                       state = 52;
                                       mstate.esp = mstate.esp - 4;
                                       FSM___vfprintf.start();
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    mstate.esp = mstate.esp - 8;
                                    si32(this.i19,mstate.esp);
                                    si32(this.i15,mstate.esp + 4);
                                    state = 51;
                                    mstate.esp = mstate.esp - 4;
                                    FSM___vfprintf.start();
                                    return;
                                 }
                              }
                              else
                              {
                                 mstate.esp = mstate.esp - 8;
                                 si32(this.i12,mstate.esp);
                                 si32(this.i17,mstate.esp + 4);
                                 state = 45;
                                 mstate.esp = mstate.esp - 4;
                                 FSM___vfprintf.start();
                                 return;
                              }
                           }
                        }
                        else
                        {
                           if(this.i24 < 4)
                           {
                              this.i24 = this.i24 + 28;
                              this.i19 = this.i24 + this.i19;
                              this.i15 = this.i24 + this.i15;
                              this.i17 = this.i24 + this.i17;
                           }
                           if(this.i17 <= 0)
                           {
                              this.i17 = this.i19;
                              this.i19 = this.i22;
                              §§goto(addr16899);
                           }
                        }
                        mstate.esp = mstate.esp - 8;
                        si32(this.i22,mstate.esp);
                        si32(this.i17,mstate.esp + 4);
                        state = 44;
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                        return;
                     }
                     this.i24 = li32(mstate.ebp + -2412);
                     if(this.i24 == 0)
                     {
                        this.i24 = this.i3 & 1048575;
                        if(this.i24 == 0)
                        {
                           this.i3 = this.i3 & 2145386496;
                           if(this.i3 != 0)
                           {
                              this.i3 = 1;
                              this.i19 = this.i19 + 1;
                              this.i17 = this.i17 + 1;
                           }
                           §§goto(addr16537);
                        }
                     }
                     §§goto(addr16482);
                  }
                  else
                  {
                     this.i20 = this.i12;
                     this.i12 = this.i22;
                     addr16410:
                     mstate.esp = mstate.esp - 8;
                     si32(this.i12,mstate.esp);
                     this.i12 = li32(mstate.ebp + -2403);
                     si32(this.i12,mstate.esp + 4);
                     state = 43;
                     mstate.esp = mstate.esp - 4;
                     FSM___vfprintf.start();
                     return;
                  }
               }
               this.i22 = this.i18;
               this.i18 = this.i17;
               if(this.i19 >= 1)
               {
                  if(this.i15 > 0)
                  {
                     this.i17 = this.i22;
                     §§goto(addr15772);
                  }
                  §§goto(addr15807);
               }
               this.i17 = this.i22;
               §§goto(addr15807);
            case 36:
               this.i18 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i22 = 1;
               si32(this.i22,this.i18 + 4);
               this.i22 = 2;
               si32(this.i22,this.i18 + 8);
               §§goto(addr15485);
            case 37:
               this.i18 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i22 = 1;
               si32(this.i22,this.i18 + 4);
               this.i22 = 2;
               si32(this.i22,this.i18 + 8);
               §§goto(addr15706);
            case 38:
               this.i18 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 8;
               si32(this.i18,mstate.esp);
               si32(this.i12,mstate.esp + 4);
               state = 39;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 39:
               this.i20 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i12 != 0)
               {
                  this.i22 = FSM___vfprintf;
                  this.i24 = li32(this.i12 + 4);
                  this.i24 = this.i24 << 2;
                  this.i22 = this.i22 + this.i24;
                  this.i24 = li32(this.i22);
                  si32(this.i24,this.i12);
                  si32(this.i12,this.i22);
               }
               this.i12 = li32(FSM___vfprintf + 4);
               if(this.i12 != 0)
               {
                  this.i22 = li32(this.i12);
                  si32(this.i22,FSM___vfprintf + 4);
               }
               else
               {
                  this.i12 = FSM___vfprintf;
                  this.i22 = li32(FSM___vfprintf);
                  this.i12 = this.i22 - this.i12;
                  this.i12 = this.i12 >> 3;
                  this.i12 = this.i12 + 4;
                  if(uint(this.i12) <= uint(288))
                  {
                     this.i12 = 1;
                     this.i24 = this.i22 + 32;
                     si32(this.i24,FSM___vfprintf);
                     si32(this.i12,this.i22 + 4);
                     this.i12 = 2;
                     si32(this.i12,this.i22 + 8);
                     this.i12 = this.i22;
                  }
                  else
                  {
                     this.i12 = 32;
                     mstate.esp = mstate.esp - 4;
                     si32(this.i12,mstate.esp);
                     state = 40;
                     mstate.esp = mstate.esp - 4;
                     FSM___vfprintf.start();
                     return;
                  }
               }
               addr16113:
               this.i22 = 0;
               si32(this.i22,this.i12 + 12);
               this.i22 = 1;
               si32(this.i22,this.i12 + 20);
               si32(this.i22,this.i12 + 16);
               this.i22 = li32(mstate.ebp + -2403);
               if(this.i22 <= 0)
               {
                  §§goto(addr16458);
               }
               else
               {
                  §§goto(addr16410);
               }
            case 40:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i22 = 1;
               si32(this.i22,this.i12 + 4);
               this.i22 = 2;
               si32(this.i22,this.i12 + 8);
               §§goto(addr16113);
            case 41:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr16195);
            case 42:
               this.i20 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i22 = 1;
               si32(this.i22,this.i20 + 4);
               this.i22 = 2;
               si32(this.i22,this.i20 + 8);
               §§goto(addr16350);
            case 43:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr16458);
            case 44:
               this.i22 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i17 = this.i19;
               this.i19 = this.i22;
               §§goto(addr16899);
            case 45:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr16946);
            case 46:
               this.i19 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i14 = this.i14 + -1;
               this.i17 = li32(mstate.ebp + -2421);
               if(this.i17 == 0)
               {
                  this.i17 = li32(mstate.ebp + -2394);
                  §§goto(addr17233);
               }
               else
               {
                  this.i17 = 0;
                  mstate.esp = mstate.esp - 12;
                  this.i22 = 10;
                  si32(this.i18,mstate.esp);
                  si32(this.i22,mstate.esp + 4);
                  si32(this.i17,mstate.esp + 8);
                  state = 47;
                  mstate.esp = mstate.esp - 4;
                  FSM___vfprintf.start();
                  return;
               }
            case 47:
               this.i18 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i17 = li32(mstate.ebp + -2394);
               §§goto(addr17233);
            case 48:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i1 = li32(this.i14 + 16);
               this.i8 = li32(this.i3 + 16);
               this.i12 = this.i1 - this.i8;
               if(this.i1 != this.i8)
               {
                  this.i1 = this.i12;
               }
               else
               {
                  this.i1 = 0;
                  while(true)
                  {
                     this.i12 = this.i1 ^ -1;
                     this.i12 = this.i8 + this.i12;
                     this.i15 = this.i12 << 2;
                     this.i17 = this.i14 + this.i15;
                     this.i15 = this.i3 + this.i15;
                     this.i17 = li32(this.i17 + 20);
                     this.i15 = li32(this.i15 + 20);
                     if(this.i17 != this.i15)
                     {
                        this.i1 = uint(this.i17) < uint(this.i15)?-1:1;
                        break;
                     }
                     this.i1 = this.i1 + 1;
                     if(this.i12 <= 0)
                     {
                        this.i1 = 0;
                        break;
                     }
                  }
               }
               if(this.i1 >= 1)
               {
                  this.i1 = li32(mstate.ebp + -2475);
                  this.i8 = this.i14;
                  this.i12 = this.i19;
                  §§goto(addr14196);
               }
               else
               {
                  this.i1 = this.i14;
                  this.i8 = this.i19;
                  §§goto(addr17485);
               }
               §§goto(addr20001);
            case 49:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i1 = this.i1 + 48;
               this.i15 = this.i8 + this.i3;
               si8(this.i1,this.i15);
               this.i15 = li32(this.i14 + 20);
               this.i18 = this.i3 + 1;
               if(this.i15 == 0)
               {
                  this.i15 = li32(this.i14 + 16);
                  if(this.i15 < 2)
                  {
                     this.i3 = 0;
                     this.i1 = li32(mstate.ebp + -2484);
                     this.i15 = this.i1 + this.i18;
                     this.i1 = li32(mstate.ebp + -2475);
                     this.i8 = this.i14;
                     this.i14 = this.i3;
                     this.i17 = this.i19;
                     this.i3 = this.i12;
                     this.i12 = this.i15;
                     §§goto(addr19719);
                  }
               }
               if(this.i18 < this.i17)
               {
                  this.i1 = 0;
                  mstate.esp = mstate.esp - 12;
                  this.i15 = 10;
                  si32(this.i14,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
                  state = 50;
                  mstate.esp = mstate.esp - 4;
                  FSM___vfprintf.start();
                  return;
               }
               this.i3 = 0;
               this.i8 = li32(mstate.ebp + -2484);
               this.i8 = this.i8 + this.i18;
               this.i15 = this.i3;
               this.i3 = this.i19;
               addr19267:
               this.i17 = 1;
               mstate.esp = mstate.esp - 8;
               si32(this.i14,mstate.esp);
               si32(this.i17,mstate.esp + 4);
               state = 61;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 50:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i3 = this.i3 + 1;
               §§goto(addr17597);
            case 51:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr17808);
            case 52:
               this.i15 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i19 = li32(this.i1 + 16);
               this.i18 = this.i15 + 12;
               this.i19 = this.i19 << 2;
               this.i22 = this.i1 + 12;
               this.i19 = this.i19 + 8;
               memcpy(this.i18,this.i22,this.i19);
               mstate.esp = mstate.esp - 8;
               si32(this.i15,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               state = 53;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 53:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr17949);
            case 54:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i24 = li32(this.i14 + 16);
               this.i20 = li32(this.i22 + 16);
               this.i21 = this.i24 - this.i20;
               this.i23 = this.i14 + 16;
               this.i25 = this.i1 + 48;
               this.i26 = this.i8 + this.i18;
               this.i27 = this.i18 + 1;
               if(this.i24 != this.i20)
               {
                  this.i20 = this.i21;
               }
               else
               {
                  this.i24 = 0;
                  while(true)
                  {
                     this.i21 = this.i24 ^ -1;
                     this.i21 = this.i20 + this.i21;
                     this.i28 = this.i21 << 2;
                     this.i29 = this.i14 + this.i28;
                     this.i28 = this.i22 + this.i28;
                     this.i29 = li32(this.i29 + 20);
                     this.i28 = li32(this.i28 + 20);
                     if(this.i29 != this.i28)
                     {
                        this.i24 = uint(this.i29) < uint(this.i28)?-1:1;
                        this.i20 = this.i24;
                        break;
                     }
                     this.i24 = this.i24 + 1;
                     if(this.i21 <= 0)
                     {
                        this.i24 = 0;
                        this.i20 = this.i24;
                        break;
                     }
                  }
               }
               this.i24 = this.i20;
               mstate.esp = mstate.esp - 8;
               si32(this.i12,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               state = 55;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 55:
               this.i20 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i21 = li32(this.i20 + 12);
               if(this.i21 != 0)
               {
                  this.i21 = 1;
               }
               else
               {
                  this.i21 = li32(this.i23);
                  this.i28 = li32(this.i20 + 16);
                  this.i29 = this.i21 - this.i28;
                  if(this.i21 != this.i28)
                  {
                     this.i21 = this.i29;
                  }
                  else
                  {
                     this.i21 = 0;
                     while(true)
                     {
                        this.i29 = this.i21 ^ -1;
                        this.i29 = this.i28 + this.i29;
                        this.i30 = this.i29 << 2;
                        this.i31 = this.i14 + this.i30;
                        this.i30 = this.i20 + this.i30;
                        this.i31 = li32(this.i31 + 20);
                        this.i30 = li32(this.i30 + 20);
                        if(this.i31 != this.i30)
                        {
                           this.i21 = uint(this.i31) < uint(this.i30)?-1:1;
                           break;
                        }
                        this.i21 = this.i21 + 1;
                        if(this.i29 <= 0)
                        {
                           this.i21 = 0;
                           break;
                        }
                     }
                  }
               }
               if(this.i20 != 0)
               {
                  this.i28 = FSM___vfprintf;
                  this.i29 = li32(this.i20 + 4);
                  this.i29 = this.i29 << 2;
                  this.i28 = this.i28 + this.i29;
                  this.i29 = li32(this.i28);
                  si32(this.i29,this.i20);
                  si32(this.i20,this.i28);
               }
               if(this.i21 == 0)
               {
                  this.i20 = this.i19 | this.i15;
                  if(this.i20 == 0)
                  {
                     if(this.i25 == 57)
                     {
                        addr18415:
                        addr18890:
                        this.i1 = this.i14;
                        this.i14 = 57;
                        si8(this.i14,this.i26);
                        this.i8 = this.i8 + this.i18;
                        this.i14 = li32(mstate.ebp + -2484);
                        this.i14 = this.i14 + this.i27;
                        this.i15 = this.i22;
                        loop86:
                        while(true)
                        {
                           this.i17 = this.i1;
                           this.i19 = this.i14;
                           this.i1 = li32(mstate.ebp + -2484);
                           if(this.i8 != this.i1)
                           {
                              this.i1 = this.i17;
                              this.i14 = this.i15;
                              addr19459:
                              while(true)
                              {
                                 this.i15 = this.i1;
                                 this.i19 = this.i8;
                                 this.i1 = li8(this.i19 + -1);
                                 this.i8 = this.i19 + -1;
                                 if(this.i1 == 57)
                                 {
                                    this.i1 = this.i15;
                                    this.i15 = this.i14;
                                    this.i14 = this.i19;
                                    continue loop86;
                                 }
                                 this.i1 = this.i1 + 1;
                                 si8(this.i1,this.i8);
                                 this.i1 = li32(mstate.ebp + -2475);
                                 this.i8 = this.i15;
                                 this.i17 = this.i3;
                                 this.i3 = this.i12;
                                 this.i12 = this.i19;
                                 break loop86;
                              }
                           }
                           else
                           {
                              this.i1 = 49;
                              si8(this.i1,this.i8);
                              this.i1 = li32(mstate.ebp + -2475);
                              this.i1 = this.i1 + 1;
                              this.i8 = this.i17;
                              this.i14 = this.i15;
                              this.i17 = this.i3;
                              this.i3 = this.i12;
                              this.i12 = this.i19;
                              break;
                           }
                        }
                     }
                     else
                     {
                        this.i1 = this.i1 + 49;
                        this.i1 = this.i24 > 0?int(this.i1):int(this.i25);
                        si8(this.i1,this.i26);
                        this.i1 = li32(mstate.ebp + -2484);
                        this.i15 = this.i1 + this.i27;
                        this.i1 = li32(mstate.ebp + -2475);
                        this.i8 = this.i14;
                        this.i14 = this.i22;
                        this.i17 = this.i3;
                        this.i3 = this.i12;
                        this.i12 = this.i15;
                     }
                  }
                  §§goto(addr19719);
               }
               if(this.i24 >= 0)
               {
                  if(this.i24 == 0)
                  {
                     this.i24 = this.i19 | this.i15;
                     if(this.i24 == 0)
                     {
                     }
                     §§goto(addr19719);
                  }
                  if(this.i21 >= 1)
                  {
                     if(this.i25 != 57)
                     {
                        this.i1 = this.i25 + 1;
                        si8(this.i1,this.i26);
                        this.i1 = li32(mstate.ebp + -2484);
                        this.i15 = this.i1 + this.i27;
                        this.i1 = li32(mstate.ebp + -2475);
                        this.i8 = this.i14;
                        this.i14 = this.i22;
                        this.i17 = this.i3;
                        this.i3 = this.i12;
                        this.i12 = this.i15;
                     }
                     else
                     {
                        §§goto(addr18415);
                     }
                     §§goto(addr19719);
                  }
                  else
                  {
                     si8(this.i25,this.i26);
                     if(this.i27 != this.i17)
                     {
                        this.i1 = 0;
                        mstate.esp = mstate.esp - 12;
                        this.i24 = 10;
                        si32(this.i14,mstate.esp);
                        si32(this.i24,mstate.esp + 4);
                        si32(this.i1,mstate.esp + 8);
                        state = 57;
                        mstate.esp = mstate.esp - 4;
                        FSM___vfprintf.start();
                        return;
                     }
                     this.i1 = li32(mstate.ebp + -2484);
                     this.i8 = this.i1 + this.i27;
                     this.i1 = this.i25;
                     this.i15 = this.i22;
                     §§goto(addr19267);
                  }
               }
               this.i15 = li32(this.i14 + 20);
               if(this.i15 == 0)
               {
                  this.i15 = li32(this.i23);
                  if(this.i21 >= 1)
                  {
                     if(this.i15 <= 1)
                     {
                     }
                  }
                  addr18540:
                  this.i1 = this.i25;
                  addr18778:
                  this.i8 = this.i14;
                  si8(this.i1,this.i26);
                  this.i1 = li32(mstate.ebp + -2484);
                  this.i15 = this.i1 + this.i27;
                  this.i1 = li32(mstate.ebp + -2475);
                  this.i14 = this.i22;
                  this.i17 = this.i3;
                  this.i3 = this.i12;
                  this.i12 = this.i15;
                  §§goto(addr19719);
               }
               else if(this.i21 < 1)
               {
                  §§goto(addr18540);
               }
               this.i15 = 1;
               mstate.esp = mstate.esp - 8;
               si32(this.i14,mstate.esp);
               si32(this.i15,mstate.esp + 4);
               state = 56;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 56:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i15 = li32(this.i14 + 16);
               this.i17 = li32(this.i12 + 16);
               this.i19 = this.i15 - this.i17;
               if(this.i15 != this.i17)
               {
                  this.i17 = this.i19;
               }
               else
               {
                  this.i15 = 0;
                  while(true)
                  {
                     this.i19 = this.i15 ^ -1;
                     this.i19 = this.i17 + this.i19;
                     this.i21 = this.i19 << 2;
                     this.i24 = this.i14 + this.i21;
                     this.i21 = this.i12 + this.i21;
                     this.i24 = li32(this.i24 + 20);
                     this.i21 = li32(this.i21 + 20);
                     if(this.i24 != this.i21)
                     {
                        this.i15 = uint(this.i24) < uint(this.i21)?-1:1;
                        this.i17 = this.i15;
                        break;
                     }
                     this.i15 = this.i15 + 1;
                     if(this.i19 <= 0)
                     {
                        this.i15 = 0;
                        this.i17 = this.i15;
                        break;
                     }
                  }
               }
               this.i15 = this.i17;
               if(this.i15 <= 0)
               {
                  if(this.i15 == 0)
                  {
                     this.i15 = this.i25 & 1;
                     if(this.i15 != 0)
                     {
                     }
                     §§goto(addr18778);
                  }
                  this.i1 = this.i25;
                  this.i8 = this.i14;
                  §§goto(addr18778);
               }
               this.i1 = this.i1 + 49;
               if(this.i1 != 58)
               {
                  this.i8 = this.i14;
                  §§goto(addr18778);
               }
               else
               {
                  this.i1 = this.i14;
                  §§goto(addr18890);
               }
               §§goto(addr19719);
            case 57:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               if(this.i22 == this.i3)
               {
                  this.i14 = 0;
                  mstate.esp = mstate.esp - 12;
                  this.i22 = 10;
                  si32(this.i3,mstate.esp);
                  si32(this.i22,mstate.esp + 4);
                  si32(this.i14,mstate.esp + 8);
                  state = 58;
                  mstate.esp = mstate.esp - 4;
                  FSM___vfprintf.start();
                  return;
               }
               this.i14 = 0;
               mstate.esp = mstate.esp - 12;
               this.i24 = 10;
               si32(this.i22,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               si32(this.i14,mstate.esp + 8);
               state = 59;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 58:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i14 = this.i3;
               addr19089:
               this.i22 = this.i14;
               this.i14 = this.i18 + 1;
               this.i18 = this.i14;
               this.i14 = this.i1;
               this.i1 = this.i22;
               §§goto(addr17971);
            case 59:
               this.i22 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 12;
               si32(this.i3,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               si32(this.i14,mstate.esp + 8);
               state = 60;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 60:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i14 = this.i22;
               §§goto(addr19089);
            case 61:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i17 = li32(this.i14 + 16);
               this.i19 = li32(this.i12 + 16);
               this.i18 = this.i17 - this.i19;
               if(this.i17 != this.i19)
               {
                  this.i19 = this.i18;
               }
               else
               {
                  this.i17 = 0;
                  while(true)
                  {
                     this.i18 = this.i17 ^ -1;
                     this.i18 = this.i19 + this.i18;
                     this.i22 = this.i18 << 2;
                     this.i24 = this.i14 + this.i22;
                     this.i22 = this.i12 + this.i22;
                     this.i24 = li32(this.i24 + 20);
                     this.i22 = li32(this.i22 + 20);
                     if(this.i24 != this.i22)
                     {
                        this.i17 = uint(this.i24) < uint(this.i22)?-1:1;
                        this.i19 = this.i17;
                        break;
                     }
                     this.i17 = this.i17 + 1;
                     if(this.i18 <= 0)
                     {
                        this.i17 = 0;
                        this.i19 = this.i17;
                        break;
                     }
                  }
               }
               this.i17 = this.i19;
               if(this.i17 >= 1)
               {
                  addr19450:
                  this.i1 = this.i14;
                  this.i14 = this.i15;
                  §§goto(addr19459);
               }
               else
               {
                  if(this.i17 == 0)
                  {
                     this.i1 = this.i1 & 1;
                     if(this.i1 != 0)
                     {
                        §§goto(addr19450);
                     }
                  }
                  this.i1 = 0;
                  while(true)
                  {
                     this.i17 = this.i1 ^ -1;
                     this.i17 = this.i8 + this.i17;
                     this.i17 = li8(this.i17);
                     this.i1 = this.i1 + 1;
                     if(this.i17 == 48)
                     {
                        continue;
                     }
                     break;
                  }
                  this.i1 = this.i1 + -1;
                  this.i19 = this.i8 - this.i1;
                  this.i1 = li32(mstate.ebp + -2475);
                  this.i8 = this.i14;
                  this.i14 = this.i15;
                  this.i17 = this.i3;
                  this.i3 = this.i12;
                  this.i12 = this.i19;
               }
               §§goto(addr19719);
            case 62:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = li32(mstate.ebp + -1540);
               if(this.i7 != 0)
               {
                  this.i16 = this.i8 << 3;
                  this.i7 = this.i7 + this.i16;
               }
               else
               {
                  this.i16 = this.i1 + 4;
                  this.i7 = this.i1;
                  this.i1 = this.i16;
               }
               this.i7 = li32(this.i7);
               this.i8 = this.i8 + 1;
               if(this.i7 == 0)
               {
                  this.i7 = FSM___vfprintf;
                  this.i16 = li32(mstate.ebp + -2358);
                  this.i14 = li32(mstate.ebp + -2313);
                  continue loop92;
               }
               this.i16 = FSM___vfprintf;
               si32(this.i7,mstate.ebp + -196);
               this.i14 = li32(mstate.ebp + -2061);
               this.i17 = 128;
               memcpy(this.i14,this.i16,this.i17);
               if(this.i12 >= 0)
               {
                  this.i16 = 0;
                  addr25049:
                  this.i14 = mstate.ebp + -176;
                  this.i17 = li32(mstate.ebp + -196);
                  this.i18 = li32(this.i17);
                  this.i17 = this.i17 + 4;
                  si32(this.i17,mstate.ebp + -196);
                  this.i17 = li32(FSM___vfprintf);
                  mstate.esp = mstate.esp - 12;
                  this.i19 = li32(mstate.ebp + -2187);
                  si32(this.i19,mstate.esp);
                  si32(this.i18,mstate.esp + 4);
                  si32(this.i14,mstate.esp + 8);
                  state = 63;
                  mstate.esp = mstate.esp - 4;
                  mstate.funcs[this.i17]();
                  return;
               }
               this.i16 = mstate.ebp + -176;
               this.i14 = li32(FSM___vfprintf);
               mstate.esp = mstate.esp - 20;
               this.i17 = 0;
               this.i18 = -1;
               this.i19 = mstate.ebp + -196;
               si32(this.i17,mstate.esp);
               si32(this.i19,mstate.esp + 4);
               si32(this.i18,mstate.esp + 8);
               si32(this.i17,mstate.esp + 12);
               si32(this.i16,mstate.esp + 16);
               state = 64;
               mstate.esp = mstate.esp - 4;
               mstate.funcs[this.i14]();
               return;
            case 63:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i17 = this.i14 + -1;
               if(uint(this.i17) < uint(-2))
               {
                  this.i17 = this.i14 + this.i16;
                  if(uint(this.i17) <= uint(this.i12))
                  {
                     this.i16 = this.i17;
                     §§goto(addr25049);
                  }
               }
               addr25288:
               this.i17 = 0;
               mstate.esp = mstate.esp - 8;
               this.i18 = this.i16 + 1;
               si32(this.i17,mstate.esp);
               si32(this.i18,mstate.esp + 4);
               state = 65;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 64:
               this.i16 = mstate.eax;
               mstate.esp = mstate.esp + 20;
               if(this.i16 != -1)
               {
                  this.i14 = li32(mstate.ebp + -2313);
                  §§goto(addr25288);
               }
               else
               {
                  this.i7 = 0;
                  this.i16 = li32(mstate.ebp + -2313);
                  addr25631:
                  this.i14 = this.i16;
                  this.i16 = this.i7;
                  if(this.i16 != 0)
                  {
                     this.i7 = this.i16;
                     continue loop92;
                  }
                  this.i3 = this.i16;
                  addr25653:
                  this.i1 = li32(mstate.ebp + -1971);
                  this.i1 = li16(this.i1);
                  this.i1 = this.i1 | 64;
                  this.i0 = li32(mstate.ebp + -1971);
                  si16(this.i1,this.i0);
                  this.i1 = li32(mstate.ebp + -2268);
                  this.i6 = this.i1;
                  this.i10 = this.i15;
                  this.i0 = this.i3;
                  §§goto(addr36762);
               }
            case 65:
               this.i17 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i17 == 0)
               {
                  this.i7 = 0;
                  this.i16 = this.i14;
               }
               else
               {
                  this.i18 = FSM___vfprintf;
                  si32(this.i7,mstate.ebp + -196);
                  this.i7 = li32(mstate.ebp + -2061);
                  this.i19 = 128;
                  memcpy(this.i7,this.i18,this.i19);
                  this.i7 = this.i17;
                  if(this.i16 != 0)
                  {
                     this.i14 = 0;
                     addr25396:
                     this.i18 = mstate.ebp + -176;
                     this.i19 = li32(mstate.ebp + -196);
                     this.i20 = li32(this.i19);
                     this.i19 = this.i19 + 4;
                     si32(this.i19,mstate.ebp + -196);
                     this.i19 = li32(FSM___vfprintf);
                     mstate.esp = mstate.esp - 12;
                     this.i21 = this.i17 + this.i14;
                     si32(this.i21,mstate.esp);
                     si32(this.i20,mstate.esp + 4);
                     si32(this.i18,mstate.esp + 8);
                     state = 66;
                     mstate.esp = mstate.esp - 4;
                     mstate.funcs[this.i19]();
                     return;
                  }
                  this.i7 = this.i17;
                  this.i16 = this.i14;
                  addr25566:
                  if(this.i16 == -1)
                  {
                     this.i3 = 0;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i17,mstate.esp);
                     si32(this.i3,mstate.esp + 4);
                     state = 67;
                     mstate.esp = mstate.esp - 4;
                     FSM___vfprintf.start();
                     return;
                  }
                  this.i14 = 0;
                  si8(this.i14,this.i7);
                  this.i7 = this.i17;
               }
               §§goto(addr25631);
            case 66:
               this.i18 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i19 = this.i18 + -1;
               if(uint(this.i19) >= uint(-2))
               {
                  this.i7 = this.i21;
                  this.i16 = this.i18;
               }
               else
               {
                  this.i14 = this.i14 + this.i18;
                  this.i19 = this.i17 + this.i14;
                  this.i20 = this.i19 - this.i7;
                  if(uint(this.i20) >= uint(this.i16))
                  {
                     this.i7 = this.i19;
                     this.i16 = this.i18;
                  }
                  else
                  {
                     §§goto(addr25396);
                  }
               }
               §§goto(addr25566);
            case 67:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr25653);
            case 68:
               this.i16 = mstate.eax;
               mstate.esp = mstate.esp + 32;
               continue loop95;
            case 69:
               continue loop96;
            case 70:
               continue loop97;
            case 71:
               continue loop98;
            case 72:
               continue loop99;
            case 73:
               continue loop100;
            case 74:
               continue loop101;
            case 75:
               continue loop102;
            case 76:
               continue loop103;
            case 77:
               continue loop104;
            case 78:
               continue loop105;
            case 79:
               if(this.i24 == 0)
               {
                  if(this.i12 == 0)
                  {
                     this.i14 = this.i3 & 1;
                     if(this.i16 == 8)
                     {
                        if(this.i14 != 0)
                        {
                        }
                     }
                     continue loop107;
                  }
               }
               this.i14 = si8(li8(mstate.ebp + -1745));
               mstate.esp = mstate.esp - 32;
               this.i17 = this.i3 & 1;
               this.i18 = this.i3 & 512;
               si32(this.i24,mstate.esp);
               this.i19 = li32(mstate.ebp + -2160);
               si32(this.i19,mstate.esp + 4);
               si32(this.i16,mstate.esp + 8);
               si32(this.i17,mstate.esp + 12);
               si32(this.i27,mstate.esp + 16);
               si32(this.i18,mstate.esp + 20);
               si32(this.i14,mstate.esp + 24);
               si32(this.i13,mstate.esp + 28);
               state = 80;
               mstate.esp = mstate.esp - 4;
               FSM___vfprintf.start();
               return;
            case 80:
               this.i16 = mstate.eax;
               mstate.esp = mstate.esp + 32;
               continue loop95;
            case 81:
               continue loop108;
            case 82:
               this.i28 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i30 = 0;
               si32(this.i30,this.i4);
               si32(this.i30,this.i5);
               if(this.i28 != 0)
               {
                  addr30615:
                  this.i0 = li32(mstate.ebp + -2268);
                  this.i6 = this.i0;
                  this.i10 = this.i15;
                  this.i0 = this.i25;
                  §§goto(addr36762);
               }
               else
               {
                  this.i28 = this.i2;
                  continue loop109;
               }
            case 83:
               this.i27 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i28 = 0;
               si32(this.i28,this.i4);
               si32(this.i28,this.i5);
               if(this.i27 == 0)
               {
                  this.i27 = this.i2;
                  continue loop110;
               }
               addr30614:
               §§goto(addr30615);
            case 84:
               this.i27 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i28 = 0;
               si32(this.i28,this.i4);
               si32(this.i28,this.i5);
               if(this.i27 == 0)
               {
                  this.i27 = this.i2;
                  continue loop111;
               }
               §§goto(addr30614);
            case 85:
               this.i27 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i28 = 0;
               si32(this.i28,this.i4);
               si32(this.i28,this.i5);
               if(this.i27 == 0)
               {
                  this.i27 = this.i2;
                  continue loop112;
               }
               §§goto(addr30614);
            case 86:
               this.i27 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i27 == 0)
               {
                  this.i27 = this.i2;
                  continue loop113;
               }
               §§goto(addr30614);
            case 87:
               this.i27 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i27 == 0)
               {
                  continue loop114;
               }
               §§goto(addr30614);
            case 88:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i27 = 0;
               si32(this.i27,this.i4);
               si32(this.i27,this.i5);
               if(this.i12 == 0)
               {
                  this.i12 = this.i2;
                  continue loop116;
               }
               §§goto(addr30614);
            case 89:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 == 0)
               {
                  continue loop117;
               }
               §§goto(addr30614);
            case 90:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i12 == 0)
               {
                  this.i12 = this.i2;
                  continue loop120;
               }
               §§goto(addr30614);
            case 91:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i12 == 0)
               {
                  continue loop123;
               }
               §§goto(addr30614);
            case 92:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i12 == 0)
               {
                  this.i12 = this.i2;
                  continue loop125;
               }
               §§goto(addr30614);
            case 93:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i12 == 0)
               {
                  continue loop126;
               }
               §§goto(addr30614);
            case 94:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i12 == 0)
               {
                  continue loop127;
               }
               §§goto(addr30614);
            case 95:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i12 == 0)
               {
                  this.i12 = this.i2;
                  continue loop131;
               }
               §§goto(addr30614);
            case 96:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i12 == 0)
               {
                  continue loop132;
               }
               §§goto(addr30614);
            case 97:
               this.i16 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i16 == 0)
               {
                  this.i16 = this.i2;
                  continue loop133;
               }
               §§goto(addr30614);
            case 98:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i13 == 0)
               {
                  this.i13 = this.i2;
                  continue loop134;
               }
               §§goto(addr30614);
            case 99:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i13 == 0)
               {
                  this.i13 = this.i2;
                  continue loop135;
               }
               §§goto(addr30614);
            case 100:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i13 == 0)
               {
                  this.i13 = this.i2;
                  continue loop136;
               }
               §§goto(addr30614);
            case 101:
               this.i16 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i16 == 0)
               {
                  this.i16 = this.i12;
                  this.i7 = this.i2;
                  this.i12 = this.i17;
                  this.i17 = this.i21;
                  this.i21 = this.i26;
                  continue loop121;
               }
               §§goto(addr30614);
            case 102:
               this.i16 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i22 = 0;
               si32(this.i22,this.i4);
               si32(this.i22,this.i5);
               if(this.i16 == 0)
               {
                  continue loop137;
               }
               §§goto(addr30614);
            case 103:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 == 0)
               {
                  this.i12 = this.i2;
                  continue loop138;
               }
               §§goto(addr30614);
            case 104:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 != 0)
               {
                  §§goto(addr30614);
               }
               else
               {
                  continue loop139;
               }
            case 105:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i12 == 0)
               {
                  this.i12 = this.i2;
                  continue loop140;
               }
               §§goto(addr30614);
            case 106:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 == 0)
               {
                  continue loop142;
               }
               §§goto(addr30614);
            case 107:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 == 0)
               {
                  this.i12 = this.i2;
                  continue loop143;
               }
               §§goto(addr30614);
            case 108:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 != 0)
               {
                  §§goto(addr30614);
               }
               else
               {
                  addr35506:
                  continue loop144;
               }
            case 109:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 == 0)
               {
                  this.i16 = this.i2;
                  this.i12 = this.i13;
                  this.i13 = this.i21;
                  this.i17 = this.i22;
                  continue loop122;
               }
               §§goto(addr30614);
            case 110:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i3 == 0)
               {
                  this.i3 = this.i2;
                  continue loop145;
               }
               §§goto(addr30614);
            case 111:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i1 = 0;
               si32(this.i1,this.i4);
               si32(this.i1,this.i5);
               if(this.i3 != 0)
               {
                  §§goto(addr30614);
               }
               else
               {
                  continue loop146;
               }
            case 112:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i8 = 0;
               si32(this.i8,this.i4);
               si32(this.i8,this.i5);
               if(this.i7 != 0)
               {
                  this.i6 = this.i24;
                  this.i10 = this.i15;
                  this.i0 = this.i25;
                  §§goto(addr36762);
               }
               else
               {
                  continue loop148;
               }
            case 113:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i3 = 0;
               si32(this.i3,this.i4);
               si32(this.i3,this.i5);
               if(this.i0 != 0)
               {
                  this.i0 = li32(mstate.ebp + -2268);
                  this.i6 = this.i0;
                  this.i10 = this.i15;
                  this.i0 = li32(mstate.ebp + -2358);
               }
               else
               {
                  this.i0 = 0;
                  si32(this.i0,this.i5);
                  this.i0 = li32(mstate.ebp + -2268);
                  this.i6 = this.i0;
                  this.i10 = this.i15;
                  this.i0 = li32(mstate.ebp + -2358);
               }
               §§goto(addr36762);
            case 114:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr36929);
            case 115:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               break;
            case 116:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i12 != 0)
               {
                  §§goto(addr30614);
               }
               else
               {
                  continue loop149;
               }
            case 117:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i12 != 0)
               {
                  §§goto(addr30614);
               }
               else
               {
                  §§goto(addr35506);
               }
         }
         mstate.eax = this.i0;
         §§goto(addr37033);
      }
   }
}
