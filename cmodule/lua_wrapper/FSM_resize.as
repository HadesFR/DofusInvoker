package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM_resize extends Machine
   {
      
      public static const intRegCount:int = 19;
      
      public static const NumberRegCount:int = 2;
       
      
      public var f1:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var f0:Number;
      
      public var i16:int;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i9:int;
      
      public var i18:int;
      
      public function FSM_resize()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_resize = null;
         _loc1_ = new FSM_resize();
         FSM_resize.gworker = _loc1_;
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
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = li32(this.i0 + 28);
               this.i2 = li8(this.i0 + 7);
               this.i3 = li32(this.i0 + 16);
               this.i4 = this.i0 + 28;
               this.i5 = li32(mstate.ebp + 8);
               this.i6 = li32(mstate.ebp + 16);
               this.i7 = li32(mstate.ebp + 20);
               this.i8 = this.i3;
               if(this.i1 < this.i6)
               {
                  this.i9 = this.i0 + 12;
                  this.i10 = this.i6 + 1;
                  if(uint(this.i10) <= uint(357913941))
                  {
                     this.i10 = li32(this.i9);
                     mstate.esp = mstate.esp - 16;
                     this.i11 = this.i1 * 12;
                     this.i12 = this.i6 * 12;
                     si32(this.i5,mstate.esp);
                     si32(this.i10,mstate.esp + 4);
                     si32(this.i11,mstate.esp + 8);
                     si32(this.i12,mstate.esp + 12);
                     state = 1;
                     mstate.esp = mstate.esp - 4;
                     FSM_resize.start();
                     return;
                  }
                  this.i10 = 0;
                  mstate.esp = mstate.esp - 4;
                  si32(this.i5,mstate.esp);
                  state = 2;
                  mstate.esp = mstate.esp - 4;
                  FSM_resize.start();
                  return;
               }
               break;
            case 1:
               this.i10 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               si32(this.i10,this.i9);
               this.i10 = li32(this.i4);
               if(this.i10 < this.i6)
               {
                  addr250:
                  this.i11 = this.i10 * 12;
                  this.i11 = this.i11 + 8;
                  while(true)
                  {
                     this.i12 = 0;
                     this.i13 = li32(this.i9);
                     this.i13 = this.i13 + this.i11;
                     si32(this.i12,this.i13);
                     this.i11 = this.i11 + 12;
                     this.i10 = this.i10 + 1;
                     if(this.i10 < this.i6)
                     {
                        continue;
                     }
                     break;
                  }
               }
               addr303:
               si32(this.i6,this.i4);
               break;
            case 2:
               mstate.esp = mstate.esp + 4;
               si32(this.i10,this.i9);
               this.i10 = li32(this.i4);
               if(this.i10 < this.i6)
               {
                  §§goto(addr250);
               }
               §§goto(addr303);
            case 3:
               mstate.esp = mstate.esp + 12;
               if(this.i1 > this.i6)
               {
                  this.i7 = mstate.ebp + -16;
                  si32(this.i6,this.i4);
                  this.i4 = 0;
                  this.i9 = this.i6 * 12;
                  this.i10 = this.i6 + 1;
                  this.i11 = this.i7 + 8;
                  this.i12 = this.i1 - this.i6;
                  this.i13 = this.i0 + 12;
                  loop2:
                  while(true)
                  {
                     this.i14 = li32(this.i13);
                     this.i15 = this.i14 + this.i9;
                     this.i16 = li32(this.i15 + 8);
                     this.i15 = this.i15 + 8;
                     if(this.i16 != 0)
                     {
                        this.i16 = FSM_resize;
                        mstate.esp = mstate.esp - 8;
                        this.i17 = this.i10 + this.i4;
                        si32(this.i0,mstate.esp);
                        si32(this.i17,mstate.esp + 4);
                        mstate.esp = mstate.esp - 4;
                        FSM_resize.start();
                     }
                     addr600:
                     while(true)
                     {
                        this.i9 = this.i9 + 12;
                        this.i4 = this.i4 + 1;
                        if(this.i4 != this.i12)
                        {
                           continue loop2;
                        }
                        break loop2;
                     }
                     this.i1 = FSM_resize;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i5,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     state = 8;
                     mstate.esp = mstate.esp - 4;
                     FSM_resize.start();
                     return;
                  }
                  this.i4 = this.i6 + 1;
                  if(uint(this.i4) <= uint(357913941))
                  {
                     this.i4 = li32(this.i5 + 16);
                     this.i7 = li32(this.i13);
                     this.i9 = li32(this.i4 + 12);
                     this.i10 = li32(this.i4 + 16);
                     mstate.esp = mstate.esp - 16;
                     this.i1 = this.i1 * 12;
                     this.i6 = this.i6 * 12;
                     si32(this.i10,mstate.esp);
                     si32(this.i7,mstate.esp + 4);
                     si32(this.i1,mstate.esp + 8);
                     si32(this.i6,mstate.esp + 12);
                     state = 6;
                     mstate.esp = mstate.esp - 4;
                     mstate.funcs[this.i9]();
                     return;
                  }
                  §§goto(addr838);
               }
               else
               {
                  this.i13 = 1;
                  this.i13 = this.i13 << this.i2;
                  this.i13 = this.i13 + -1;
                  if(this.i13 >= 0)
                  {
                     addr930:
                     this.i1 = this.i13;
                     this.i4 = this.i1 * 28;
                     this.i3 = this.i3 + this.i4;
                     this.i4 = this.i0 + 6;
                     loop1:
                     while(true)
                     {
                        this.i6 = li32(this.i3 + 8);
                        this.i7 = this.i3 + 8;
                        this.i9 = this.i3;
                        if(this.i6 != 0)
                        {
                           this.i6 = 0;
                           mstate.esp = mstate.esp - 8;
                           this.i10 = this.i3 + 12;
                           si32(this.i0,mstate.esp);
                           si32(this.i10,mstate.esp + 4);
                           mstate.esp = mstate.esp - 4;
                           FSM_resize.start();
                        }
                        addr1341:
                        while(true)
                        {
                           this.i3 = this.i3 + -28;
                           this.i1 = this.i1 + -1;
                           if(this.i1 >= 0)
                           {
                              continue loop1;
                           }
                           break loop1;
                        }
                        mstate.esp = mstate.ebp;
                        mstate.ebp = li32(mstate.esp);
                        mstate.esp = mstate.esp + 4;
                        mstate.esp = mstate.esp + 4;
                        mstate.gworker = caller;
                        return;
                     }
                  }
                  addr1359:
                  this.i0 = FSM_resize;
                  if(this.i8 != this.i0)
                  {
                     this.i0 = 28;
                     this.i1 = li32(this.i5 + 16);
                     this.i3 = li32(this.i1 + 12);
                     this.i4 = li32(this.i1 + 16);
                     mstate.esp = mstate.esp - 16;
                     this.i5 = 0;
                     this.i0 = this.i0 << this.i2;
                     si32(this.i4,mstate.esp);
                     si32(this.i8,mstate.esp + 4);
                     si32(this.i0,mstate.esp + 8);
                     si32(this.i5,mstate.esp + 12);
                     state = 15;
                     mstate.esp = mstate.esp - 4;
                     mstate.funcs[this.i3]();
                     return;
                  }
                  §§goto(addr1484);
               }
            case 4:
               while(true)
               {
                  this.i18 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  if(this.i18 != this.i16)
                  {
                     this.i17 = this.i18;
                     addr567:
                     while(true)
                     {
                        this.i16 = this.i17;
                        this.i14 = this.i14 + this.i9;
                        this.f0 = lf64(this.i14);
                        sf64(this.f0,this.i16);
                        this.i14 = li32(this.i15);
                        si32(this.i14,this.i16 + 8);
                        §§goto(addr600);
                     }
                  }
                  else
                  {
                     break;
                  }
               }
               this.i16 = 3;
               this.f0 = Number(this.i17);
               sf64(this.f0,this.i7);
               si32(this.i16,this.i11);
               mstate.esp = mstate.esp - 12;
               this.i17 = mstate.ebp + -16;
               si32(this.i5,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i17,mstate.esp + 8);
               state = 5;
               mstate.esp = mstate.esp - 4;
               FSM_resize.start();
               return;
            case 5:
               this.i17 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               §§goto(addr567);
            case 6:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               if(this.i7 == 0)
               {
                  if(this.i6 != 0)
                  {
                     this.i9 = 4;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i5,mstate.esp);
                     si32(this.i9,mstate.esp + 4);
                     state = 7;
                     mstate.esp = mstate.esp - 4;
                     FSM_resize.start();
                     return;
                  }
               }
               addr783:
               this.i9 = 1;
               this.i10 = li32(this.i4 + 68);
               this.i1 = this.i6 - this.i1;
               this.i1 = this.i1 + this.i10;
               this.i6 = this.i9 << this.i2;
               si32(this.i1,this.i4 + 68);
               si32(this.i7,this.i13);
               this.i13 = this.i6 + -1;
               if(this.i13 >= 0)
               {
                  §§goto(addr930);
               }
               §§goto(addr1359);
            case 7:
               mstate.esp = mstate.esp + 8;
               §§goto(addr783);
            case 8:
               this.i1 = 1;
               this.i1 = this.i1 << this.i2;
               mstate.esp = mstate.esp + 8;
               this.i4 = 0;
               si32(this.i4,this.i13);
               this.i13 = this.i1 + -1;
               if(this.i13 >= 0)
               {
                  §§goto(addr930);
               }
               §§goto(addr1359);
            case 9:
               while(true)
               {
                  this.i11 = mstate.eax;
                  mstate.esp = mstate.esp + 8;
                  si8(this.i6,this.i4);
                  this.i6 = FSM_resize;
                  if(this.i11 != this.i6)
                  {
                     this.i10 = this.i11;
                     addr1315:
                     while(true)
                     {
                        this.i6 = this.i10;
                        this.f0 = lf64(this.i9);
                        sf64(this.f0,this.i6);
                        this.i7 = li32(this.i7);
                        si32(this.i7,this.i6 + 8);
                        §§goto(addr1341);
                     }
                  }
                  else
                  {
                     break;
                  }
               }
               this.i6 = li32(this.i10 + 8);
               if(this.i6 != 3)
               {
                  if(this.i6 == 0)
                  {
                     this.i6 = FSM_resize;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i5,mstate.esp);
                     si32(this.i6,mstate.esp + 4);
                     state = 10;
                     mstate.esp = mstate.esp - 4;
                     FSM_resize.start();
                     return;
                  }
               }
               else
               {
                  this.f0 = 0;
                  this.f1 = lf64(this.i3 + 12);
                  if(!(this.f1 != Number.NaN && this.f0 != Number.NaN))
                  {
                     this.i6 = FSM_resize;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i5,mstate.esp);
                     si32(this.i6,mstate.esp + 4);
                     state = 12;
                     mstate.esp = mstate.esp - 4;
                     FSM_resize.start();
                     return;
                  }
               }
               mstate.esp = mstate.esp - 12;
               si32(this.i5,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i10,mstate.esp + 8);
               state = 14;
               mstate.esp = mstate.esp - 4;
               FSM_resize.start();
               return;
            case 10:
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 12;
               si32(this.i5,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i10,mstate.esp + 8);
               state = 11;
               mstate.esp = mstate.esp - 4;
               FSM_resize.start();
               return;
            case 11:
               this.i10 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               §§goto(addr1315);
            case 12:
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 12;
               si32(this.i5,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i10,mstate.esp + 8);
               state = 13;
               mstate.esp = mstate.esp - 4;
               FSM_resize.start();
               return;
            case 13:
               this.i10 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               §§goto(addr1315);
            case 14:
               this.i10 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               §§goto(addr1315);
            case 15:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               this.i2 = li32(this.i1 + 68);
               this.i0 = this.i2 - this.i0;
               si32(this.i0,this.i1 + 68);
               §§goto(addr1484);
         }
         mstate.esp = mstate.esp - 12;
         si32(this.i5,mstate.esp);
         si32(this.i0,mstate.esp + 4);
         si32(this.i7,mstate.esp + 8);
         state = 3;
         mstate.esp = mstate.esp - 4;
         FSM_resize.start();
      }
   }
}
