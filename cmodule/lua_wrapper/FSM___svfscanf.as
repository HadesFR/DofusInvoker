package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   
   public final class FSM___svfscanf extends Machine
   {
      
      public static const intRegCount:int = 32;
      
      public static const NumberRegCount:int = 4;
       
      
      public var i21:int;
      
      public var i30:int;
      
      public var i31:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f3:Number;
      
      public var f2:Number;
      
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
      
      public function FSM___svfscanf()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___svfscanf = null;
         _loc1_ = new FSM___svfscanf();
         FSM___svfscanf.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 1684;
               this.i2 = mstate.ebp + -1248;
               this.i0 = li32(mstate.ebp + 8);
               si32(this.i0,mstate.ebp + -1656);
               this.i0 = li32(this.i0 + 56);
               this.i1 = li32(this.i0 + 16);
               this.i0 = this.i0 + 16;
               this.i3 = mstate.ebp + -992;
               si32(this.i3,mstate.ebp + -1674);
               this.i3 = mstate.ebp + -328;
               si32(this.i3,mstate.ebp + -1494);
               this.i3 = li32(mstate.ebp + 12);
               if(this.i1 == 0)
               {
                  this.i1 = -1;
                  si32(this.i1,this.i0);
               }
               this.i0 = mstate.ebp + -992;
               si32(this.i0,mstate.ebp + -1575);
               this.i0 = FSM___svfscanf;
               this.i1 = 0;
               this.i5 = mstate.ebp + -328;
               si32(this.i5,mstate.ebp + -1476);
               this.i5 = mstate.ebp + -16;
               si32(this.i5,mstate.ebp + -1458);
               this.i5 = mstate.ebp + -144;
               si32(this.i5,mstate.ebp + -1422);
               this.i5 = mstate.ebp + -160;
               si32(this.i5,mstate.ebp + -1431);
               this.i5 = mstate.ebp + -288;
               si32(this.i5,mstate.ebp + -1440);
               this.i5 = li32(mstate.ebp + -1575);
               this.i5 = this.i5 + -1;
               si32(this.i5,mstate.ebp + -1467);
               this.i5 = mstate.ebp + -464;
               si32(this.i5,mstate.ebp + -1521);
               this.i5 = mstate.ebp + -1248;
               si32(this.i5,mstate.ebp + -1449);
               this.i5 = li32(mstate.ebp + -1656);
               this.i5 = this.i5 + 4;
               this.i6 = li32(mstate.ebp + -1656);
               this.i7 = this.i1;
               this.i8 = this.i1;
               loop0:
               while(true)
               {
                  si32(this.i8,mstate.ebp + -1512);
                  si32(this.i1,mstate.ebp + -1566);
                  this.i1 = this.i3;
                  si32(this.i1,mstate.ebp + -1602);
                  this.i1 = li8(this.i0);
                  if(this.i1 != 0)
                  {
                     this.i3 = 0;
                     this.i8 = this.i1;
                     loop1:
                     while(true)
                     {
                        this.i9 = this.i3;
                        this.i1 = this.i1 & 255;
                        this.i3 = li32(FSM___svfscanf);
                        this.i10 = this.i1 << 2;
                        this.i3 = this.i3 + this.i10;
                        this.i10 = li32(this.i3 + 52);
                        this.i3 = this.i0 + 1;
                        this.i11 = this.i0;
                        this.i10 = this.i10 & 16384;
                        if(this.i10 != 0)
                        {
                           this.i1 = 0;
                           this.i0 = this.i9 + this.i7;
                           loop14:
                           while(true)
                           {
                              this.i8 = li32(this.i5);
                              if(this.i8 <= 0)
                              {
                                 break;
                              }
                              addr528:
                              while(true)
                              {
                                 this.i8 = li32(this.i6);
                                 this.i8 = li8(this.i8);
                                 this.i7 = li32(FSM___svfscanf);
                                 this.i8 = this.i8 << 2;
                                 this.i8 = this.i7 + this.i8;
                                 this.i8 = li32(this.i8 + 52);
                                 this.i8 = this.i8 & 16384;
                                 if(this.i8 != 0)
                                 {
                                    this.i8 = li32(this.i5);
                                    this.i8 = this.i8 + -1;
                                    si32(this.i8,this.i5);
                                    this.i8 = li32(this.i6);
                                    this.i8 = this.i8 + 1;
                                    si32(this.i8,this.i6);
                                    this.i1 = this.i1 + 1;
                                    continue loop14;
                                 }
                                 addr273:
                                 while(true)
                                 {
                                    this.i0 = this.i1 + this.i0;
                                    this.i7 = this.i0;
                                    this.i0 = li32(mstate.ebp + -1512);
                                    this.i8 = this.i0;
                                    this.i0 = li32(mstate.ebp + -1566);
                                    this.i1 = this.i0;
                                    this.i0 = this.i3;
                                    this.i3 = li32(mstate.ebp + -1602);
                                    continue loop0;
                                 }
                              }
                           }
                           mstate.esp = mstate.esp - 4;
                           this.i8 = li32(mstate.ebp + -1656);
                           si32(this.i8,mstate.esp);
                           state = 1;
                           mstate.esp = mstate.esp - 4;
                           FSM___svfscanf.start();
                           return;
                        }
                        addr26325:
                        addr26325:
                        this.i8 = this.i8 & 255;
                        if(this.i8 != 37)
                        {
                           this.i0 = this.i1;
                           this.i1 = this.i3;
                           addr1217:
                           this.i10 = this.i1;
                           this.i1 = li32(this.i5);
                           if(this.i1 <= 0)
                           {
                              break;
                           }
                           addr1278:
                           while(true)
                           {
                              this.i1 = li32(this.i6);
                              this.i3 = li8(this.i1);
                              if(this.i3 == this.i0)
                              {
                                 this.i0 = li32(this.i5);
                                 this.i0 = this.i0 + -1;
                                 si32(this.i0,this.i5);
                                 this.i0 = this.i1 + 1;
                                 si32(this.i0,this.i6);
                                 this.i0 = li8(this.i10);
                                 this.i1 = this.i9 + 1;
                                 if(this.i0 != 0)
                                 {
                                    this.i3 = this.i1;
                                    this.i8 = this.i0;
                                    this.i1 = this.i0;
                                    this.i0 = this.i10;
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 break loop0;
                              }
                           }
                        }
                        else
                        {
                           this.i1 = 0;
                           this.i3 = this.i1;
                           this.i8 = this.i1;
                           while(true)
                           {
                              this.i10 = this.i11 + this.i3;
                              this.i10 = li8(this.i10 + 1);
                              if(this.i10 <= 100)
                              {
                                 if(this.i10 <= 75)
                                 {
                                    if(this.i10 <= 47)
                                    {
                                       if(this.i10 != 0)
                                       {
                                          if(this.i10 != 37)
                                          {
                                             if(this.i10 != 42)
                                             {
                                                break loop0;
                                             }
                                             this.i8 = this.i8 | 8;
                                             continue;
                                          }
                                          this.i0 = this.i3 + this.i0;
                                          this.i1 = this.i0 + 2;
                                          this.i0 = this.i10;
                                          §§goto(addr1217);
                                       }
                                       else
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.i12 = 1;
                                       this.i13 = this.i10 + -48;
                                       this.i12 = this.i12 << this.i13;
                                       if(uint(this.i13) <= uint(23))
                                       {
                                          this.i13 = this.i12 & 1023;
                                          if(this.i13 == 0)
                                          {
                                             this.i10 = this.i12 & 14811136;
                                             if(this.i10 == 0)
                                             {
                                                this.i10 = this.i12 & 524288;
                                                if(this.i10 == 0)
                                                {
                                                   break loop0;
                                                }
                                                this.i10 = 0;
                                                this.i0 = this.i3 + this.i0;
                                                this.i0 = this.i0 + 2;
                                                this.i8 = this.i8 | 33;
                                                this.i7 = this.i9 + this.i7;
                                                this.i3 = this.i4;
                                                this.i4 = this.i10;
                                             }
                                             else
                                             {
                                                addr843:
                                                this.i10 = 4;
                                                this.i0 = this.i3 + this.i0;
                                                this.i0 = this.i0 + 2;
                                                this.i7 = this.i9 + this.i7;
                                                this.i3 = this.i4;
                                                this.i4 = this.i10;
                                             }
                                          }
                                          else
                                          {
                                             this.i1 = this.i1 * 10;
                                             this.i1 = this.i1 + this.i10;
                                             this.i1 = this.i1 + -48;
                                             addr661:
                                             continue;
                                          }
                                       }
                                       break loop0;
                                    }
                                 }
                                 else if(this.i10 <= 90)
                                 {
                                    if(this.i10 != 76)
                                    {
                                       if(this.i10 != 83)
                                       {
                                          if(this.i10 != 88)
                                          {
                                             break loop0;
                                          }
                                       }
                                       else
                                       {
                                          this.i10 = 2;
                                          this.i0 = this.i3 + this.i0;
                                          this.i0 = this.i0 + 2;
                                          this.i8 = this.i8 | 1;
                                          this.i3 = this.i9 + this.i7;
                                          this.i7 = this.i3;
                                          this.i3 = this.i4;
                                          this.i4 = this.i10;
                                       }
                                    }
                                    else
                                    {
                                       this.i8 = this.i8 | 2;
                                       §§goto(addr661);
                                    }
                                 }
                                 else if(this.i10 <= 98)
                                 {
                                    if(this.i10 != 91)
                                    {
                                       if(this.i10 != 97)
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr843);
                                    }
                                    else
                                    {
                                       this.i10 = this.i3 + this.i0;
                                       this.i11 = li8(this.i10 + 2);
                                       this.i10 = this.i10 + 3;
                                       this.i7 = this.i9 + this.i7;
                                       if(this.i11 != 94)
                                       {
                                          this.i0 = 0;
                                          this.i3 = this.i10;
                                          this.i9 = this.i11;
                                       }
                                       else
                                       {
                                          this.i9 = 1;
                                          this.i0 = this.i3 + this.i0;
                                          this.i10 = li8(this.i10);
                                          this.i0 = this.i0 + 4;
                                          this.i3 = this.i0;
                                          this.i0 = this.i9;
                                          this.i9 = this.i10;
                                       }
                                       this.i10 = 256;
                                       this.i11 = li32(mstate.ebp + -1449);
                                       this.i12 = this.i0;
                                       memset(this.i11,this.i12,this.i10);
                                       this.i9 = this.i9 & 255;
                                       if(this.i9 == 0)
                                       {
                                          this.i0 = 1;
                                          this.i8 = this.i8 | 32;
                                          this.i9 = this.i3 + -1;
                                          this.i3 = this.i4;
                                          this.i4 = this.i0;
                                          this.i0 = this.i9;
                                       }
                                       else
                                       {
                                          this.i8 = this.i8 | 32;
                                          this.i0 = 1 - this.i0;
                                          loop11:
                                          while(true)
                                          {
                                             this.i10 = mstate.ebp + -1248;
                                             this.i10 = this.i10 + this.i9;
                                             si8(this.i0,this.i10);
                                             this.i10 = this.i9;
                                             loop12:
                                             while(true)
                                             {
                                                this.i9 = this.i3;
                                                this.i3 = this.i10;
                                                this.i10 = li8(this.i9);
                                                this.i11 = this.i9 + 1;
                                                this.i12 = this.i9;
                                                if(this.i10 != 93)
                                                {
                                                   if(this.i10 != 45)
                                                   {
                                                      if(this.i10 == 0)
                                                      {
                                                         this.i0 = 1;
                                                         this.i3 = this.i4;
                                                         this.i4 = this.i0;
                                                         this.i0 = this.i12;
                                                         break;
                                                      }
                                                      this.i3 = this.i10;
                                                   }
                                                   else
                                                   {
                                                      this.i11 = li8(this.i11);
                                                      this.i10 = this.i11;
                                                      if(this.i11 != 93)
                                                      {
                                                         this.i12 = li8(FSM___svfscanf);
                                                         if(this.i12 == 0)
                                                         {
                                                            if(this.i10 >= this.i3)
                                                            {
                                                               addr1852:
                                                               while(true)
                                                               {
                                                                  this.i12 = li8(FSM___svfscanf);
                                                                  if(this.i12 == 0)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.i11 = this.i2 + this.i3;
                                                                        si8(this.i0,this.i11 + 1);
                                                                        this.i3 = this.i3 + 1;
                                                                        if(this.i3 < this.i10)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.i3 = this.i9 + 2;
                                                                        continue loop12;
                                                                        this.i12 = this.i12 + 1;
                                                                        this.i13 = this.i13 + 1;
                                                                        if(this.i13 != 256)
                                                                        {
                                                                           addr1903:
                                                                           this.i14 = FSM___svfscanf;
                                                                           si8(this.i3,FSM___svfscanf);
                                                                           si8(this.i12,FSM___svfscanf);
                                                                           mstate.esp = mstate.esp - 8;
                                                                           this.i15 = FSM___svfscanf;
                                                                           si32(this.i14,mstate.esp);
                                                                           si32(this.i15,mstate.esp + 4);
                                                                           state = 4;
                                                                           mstate.esp = mstate.esp - 4;
                                                                           FSM___svfscanf.start();
                                                                           return;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i12 = 0;
                                                                     this.i13 = this.i12;
                                                                     §§goto(addr1903);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr1765:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.i12 = FSM___svfscanf;
                                                            si8(this.i11,FSM___svfscanf);
                                                            si8(this.i3,FSM___svfscanf);
                                                            mstate.esp = mstate.esp - 8;
                                                            this.i13 = FSM___svfscanf;
                                                            si32(this.i12,mstate.esp);
                                                            si32(this.i13,mstate.esp + 4);
                                                            state = 3;
                                                            mstate.esp = mstate.esp - 4;
                                                            FSM___svfscanf.start();
                                                            return;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.i3 = 45;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.i10 = this.i3;
                                                      this.i3 = this.i9 + 1;
                                                      this.i9 = this.i10;
                                                      continue loop11;
                                                   }
                                                }
                                                else
                                                {
                                                   this.i0 = 1;
                                                   this.i9 = this.i9 + 1;
                                                   this.i3 = this.i4;
                                                   this.i4 = this.i0;
                                                   this.i0 = this.i9;
                                                   break;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else if(this.i10 != 99)
                                 {
                                    if(this.i10 != 100)
                                    {
                                       break loop0;
                                    }
                                    this.i4 = 3;
                                    this.i0 = this.i3 + this.i0;
                                    this.i0 = this.i0 + 2;
                                    this.i3 = 10;
                                    this.i7 = this.i9 + this.i7;
                                 }
                                 else
                                 {
                                    this.i10 = 0;
                                    this.i0 = this.i3 + this.i0;
                                    this.i0 = this.i0 + 2;
                                    this.i8 = this.i8 | 32;
                                    this.i7 = this.i9 + this.i7;
                                    this.i3 = this.i4;
                                    this.i4 = this.i10;
                                 }
                                 addr2588:
                                 this.i9 = this.i4;
                                 this.i4 = li32(this.i5);
                                 if(this.i4 >= 1)
                                 {
                                    this.i4 = this.i7;
                                    this.i7 = this.i3;
                                    this.i3 = this.i9;
                                    addr2674:
                                    while(true)
                                    {
                                       si32(this.i7,mstate.ebp + -1530);
                                       this.i7 = this.i8;
                                       si32(this.i0,mstate.ebp + -1503);
                                       this.i0 = this.i7 & 32;
                                       if(this.i0 != 0)
                                       {
                                          this.i0 = this.i4;
                                       }
                                       else
                                       {
                                          this.i0 = 0;
                                          loop3:
                                          while(true)
                                          {
                                             this.i8 = li32(this.i6);
                                             this.i8 = li8(this.i8);
                                             this.i9 = li32(FSM___svfscanf);
                                             this.i8 = this.i8 << 2;
                                             this.i8 = this.i9 + this.i8;
                                             this.i8 = li32(this.i8 + 52);
                                             this.i8 = this.i8 & 16384;
                                             if(this.i8 == 0)
                                             {
                                                break;
                                             }
                                             this.i8 = li32(this.i5);
                                             this.i8 = this.i8 + -1;
                                             si32(this.i8,this.i5);
                                             if(this.i8 >= 1)
                                             {
                                                this.i8 = li32(this.i6);
                                                this.i8 = this.i8 + 1;
                                                si32(this.i8,this.i6);
                                                addr2748:
                                                while(true)
                                                {
                                                   this.i0 = this.i0 + 1;
                                                   continue loop3;
                                                }
                                             }
                                             else
                                             {
                                                mstate.esp = mstate.esp - 4;
                                                this.i8 = li32(mstate.ebp + -1656);
                                                si32(this.i8,mstate.esp);
                                                state = 83;
                                                mstate.esp = mstate.esp - 4;
                                                FSM___svfscanf.start();
                                                return;
                                             }
                                          }
                                          this.i0 = this.i0 + this.i4;
                                       }
                                       si32(this.i0,mstate.ebp + -1539);
                                       if(this.i3 <= 1)
                                       {
                                          if(this.i3 != 0)
                                          {
                                             if(this.i3 != 1)
                                             {
                                                addr2935:
                                                this.i0 = li32(mstate.ebp + -1530);
                                                this.i4 = this.i0;
                                                this.i0 = li32(mstate.ebp + -1539);
                                                this.i7 = this.i0;
                                                this.i0 = li32(mstate.ebp + -1512);
                                                this.i8 = this.i0;
                                                this.i0 = li32(mstate.ebp + -1566);
                                                this.i1 = this.i0;
                                                this.i0 = li32(mstate.ebp + -1503);
                                                this.i3 = li32(mstate.ebp + -1602);
                                             }
                                             else
                                             {
                                                this.i0 = this.i1 == 0?-1:int(this.i1);
                                                this.i1 = this.i7 & 8;
                                                this.i7 = this.i7 & 1;
                                                if(this.i7 != 0)
                                                {
                                                   if(this.i1 != 0)
                                                   {
                                                      this.i7 = mstate.ebp + -336;
                                                      this.i3 = 0;
                                                      this.i4 = li32(mstate.ebp + -1602);
                                                      this.i8 = this.i3;
                                                      this.i9 = li32(mstate.ebp + -1539);
                                                      addr2901:
                                                      while(true)
                                                      {
                                                         this.i10 = this.i3;
                                                         if(this.i0 != 0)
                                                         {
                                                            this.i3 = this.i4;
                                                            this.i4 = this.i10;
                                                            addr4153:
                                                            this.i10 = li32(FSM___svfscanf);
                                                            if(this.i4 == this.i10)
                                                            {
                                                               addr3125:
                                                               this.i0 = li32(mstate.ebp + -1656);
                                                               this.i0 = li16(this.i0 + 12);
                                                               this.i0 = this.i0 | 64;
                                                               this.i7 = li32(mstate.ebp + -1656);
                                                               si16(this.i0,this.i7 + 12);
                                                               this.i7 = li32(mstate.ebp + -1512);
                                                               this.i0 = li32(mstate.ebp + -1566);
                                                               addr8294:
                                                               this.i0 = this.i7 == 0?-1:int(this.i0);
                                                            }
                                                            else
                                                            {
                                                               this.i10 = mstate.ebp + -992;
                                                               this.i11 = li32(this.i6);
                                                               this.i12 = li8(this.i11);
                                                               this.i10 = this.i10 + this.i4;
                                                               si8(this.i12,this.i10);
                                                               this.i10 = this.i11 + 1;
                                                               si32(this.i10,this.i6);
                                                               this.i10 = li32(this.i5);
                                                               this.i10 = this.i10 + -1;
                                                               si32(this.i10,this.i5);
                                                               this.i10 = li32(mstate.ebp + -1521);
                                                               this.i11 = FSM___svfscanf;
                                                               this.i12 = 128;
                                                               memcpy(this.i10,this.i11,this.i12);
                                                               this.i10 = li32(FSM___svfscanf);
                                                               mstate.esp = mstate.esp - 16;
                                                               this.i11 = mstate.ebp + -464;
                                                               this.i12 = this.i4 + 1;
                                                               si32(this.i7,mstate.esp);
                                                               this.i13 = li32(mstate.ebp + -1575);
                                                               si32(this.i13,mstate.esp + 4);
                                                               si32(this.i12,mstate.esp + 8);
                                                               si32(this.i11,mstate.esp + 12);
                                                               state = 11;
                                                               mstate.esp = mstate.esp - 4;
                                                               mstate.funcs[this.i10]();
                                                               return;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.i3 = this.i4;
                                                            this.i4 = this.i8;
                                                            this.i8 = this.i9;
                                                            this.i0 = this.i10;
                                                         }
                                                         this.i4 = this.i3;
                                                         this.i8 = this.i10;
                                                         this.i9 = this.i11;
                                                         this.i3 = this.i12;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.i7 = li32(mstate.ebp + -1602);
                                                      this.i7 = li32(this.i7);
                                                      this.i3 = li32(mstate.ebp + -1602);
                                                      this.i3 = this.i3 + 4;
                                                      if(this.i0 != 0)
                                                      {
                                                         this.i4 = 0;
                                                         this.i8 = this.i4;
                                                         this.i9 = li32(mstate.ebp + -1539);
                                                         §§goto(addr4153);
                                                      }
                                                      else
                                                      {
                                                         this.i0 = 0;
                                                         this.i4 = this.i0;
                                                         this.i8 = li32(mstate.ebp + -1539);
                                                      }
                                                   }
                                                   addr4920:
                                                   while(true)
                                                   {
                                                      if(this.i0 != 0)
                                                      {
                                                         this.i0 = li32(mstate.ebp + -1656);
                                                         this.i0 = li16(this.i0 + 12);
                                                         this.i0 = this.i0 | 64;
                                                         this.i1 = li32(mstate.ebp + -1656);
                                                         si16(this.i0,this.i1 + 12);
                                                         this.i1 = li32(mstate.ebp + -1512);
                                                         this.i0 = li32(mstate.ebp + -1566);
                                                         this.i0 = this.i1 == 0?-1:int(this.i0);
                                                      }
                                                      else if(this.i4 != 0)
                                                      {
                                                         if(this.i1 != 0)
                                                         {
                                                            this.i0 = this.i8;
                                                            this.i1 = this.i4;
                                                            this.i7 = this.i3;
                                                            addr5010:
                                                            while(true)
                                                            {
                                                               this.i3 = this.i7;
                                                               this.i7 = li32(mstate.ebp + -1512);
                                                               this.i8 = this.i7 + 1;
                                                               this.i0 = this.i1 + this.i0;
                                                               this.i1 = li32(mstate.ebp + -1530);
                                                               this.i4 = this.i1;
                                                               this.i7 = this.i0;
                                                               this.i0 = li32(mstate.ebp + -1566);
                                                               this.i1 = this.i0;
                                                               this.i0 = li32(mstate.ebp + -1503);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.i0 = 0;
                                                            si32(this.i0,this.i7);
                                                            this.i0 = li32(mstate.ebp + -1512);
                                                            this.i0 = this.i0 + 1;
                                                            this.i1 = this.i8 + this.i4;
                                                            this.i7 = li32(mstate.ebp + -1566);
                                                            this.i9 = this.i7 + 1;
                                                            this.i7 = li32(mstate.ebp + -1530);
                                                            this.i4 = this.i7;
                                                            this.i7 = this.i1;
                                                            this.i8 = this.i0;
                                                            this.i1 = this.i9;
                                                            this.i0 = li32(mstate.ebp + -1503);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                }
                                                else if(this.i1 != 0)
                                                {
                                                   this.i1 = 0;
                                                   loop10:
                                                   while(true)
                                                   {
                                                      this.i7 = this.i0;
                                                      this.i3 = mstate.ebp + -1248;
                                                      this.i0 = li32(this.i6);
                                                      this.i4 = li8(this.i0);
                                                      this.i3 = this.i3 + this.i4;
                                                      this.i3 = li8(this.i3);
                                                      if(this.i3 == 0)
                                                      {
                                                         this.i0 = this.i1;
                                                         break;
                                                      }
                                                      this.i3 = li32(this.i5);
                                                      this.i3 = this.i3 + -1;
                                                      si32(this.i3,this.i5);
                                                      this.i0 = this.i0 + 1;
                                                      si32(this.i0,this.i6);
                                                      this.i0 = this.i1 + 1;
                                                      if(this.i7 != 1)
                                                      {
                                                         if(this.i3 >= 1)
                                                         {
                                                            addr5235:
                                                            while(true)
                                                            {
                                                               this.i0 = this.i7 + -1;
                                                               this.i1 = this.i1 + 1;
                                                               continue loop10;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            mstate.esp = mstate.esp - 4;
                                                            this.i3 = li32(mstate.ebp + -1656);
                                                            si32(this.i3,mstate.esp);
                                                            state = 16;
                                                            mstate.esp = mstate.esp - 4;
                                                            FSM___svfscanf.start();
                                                            return;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.i0 = this.i1 + 1;
                                                         break;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.i1 = this.i0;
                                                      if(this.i1 != 0)
                                                      {
                                                         this.i0 = li32(mstate.ebp + -1539);
                                                         this.i7 = li32(mstate.ebp + -1602);
                                                         §§goto(addr5010);
                                                      }
                                                      else
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   this.i1 = li32(mstate.ebp + -1602);
                                                   this.i1 = li32(this.i1);
                                                   si32(this.i1,mstate.ebp + -1252);
                                                   this.i7 = li32(mstate.ebp + -1602);
                                                   this.i3 = this.i7 + 4;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.i7 = this.i0;
                                                      this.i4 = mstate.ebp + -1248;
                                                      this.i0 = li32(this.i6);
                                                      this.i8 = li8(this.i0);
                                                      this.i4 = this.i4 + this.i8;
                                                      this.i4 = li8(this.i4);
                                                      if(this.i4 != 0)
                                                      {
                                                         this.i4 = li32(this.i5);
                                                         this.i4 = this.i4 + -1;
                                                         si32(this.i4,this.i5);
                                                         this.i4 = li32(mstate.ebp + -1252);
                                                         this.i8 = li8(this.i0);
                                                         si8(this.i8,this.i4);
                                                         this.i4 = this.i4 + 1;
                                                         si32(this.i4,mstate.ebp + -1252);
                                                         this.i0 = this.i0 + 1;
                                                         si32(this.i0,this.i6);
                                                         if(this.i7 != 1)
                                                         {
                                                            this.i0 = li32(this.i5);
                                                            if(this.i0 >= 1)
                                                            {
                                                               addr5416:
                                                               while(true)
                                                               {
                                                                  this.i0 = this.i7 + -1;
                                                                  continue loop9;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               mstate.esp = mstate.esp - 4;
                                                               this.i0 = li32(mstate.ebp + -1656);
                                                               si32(this.i0,mstate.esp);
                                                               state = 17;
                                                               mstate.esp = mstate.esp - 4;
                                                               FSM___svfscanf.start();
                                                               return;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      this.i0 = li32(mstate.ebp + -1252);
                                                      if(this.i0 != this.i1)
                                                      {
                                                         this.i7 = 0;
                                                         this.i4 = li32(mstate.ebp + -1539);
                                                         this.i1 = this.i4 - this.i1;
                                                         si8(this.i7,this.i0);
                                                         this.i7 = li32(mstate.ebp + -1512);
                                                         this.i8 = this.i7 + 1;
                                                         this.i0 = this.i0 + this.i1;
                                                         this.i1 = li32(mstate.ebp + -1566);
                                                         this.i1 = this.i1 + 1;
                                                         this.i7 = li32(mstate.ebp + -1530);
                                                         this.i4 = this.i7;
                                                         this.i7 = this.i0;
                                                         this.i0 = li32(mstate.ebp + -1503);
                                                      }
                                                      else
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.i0 = this.i1 == 0?1:int(this.i1);
                                             this.i1 = this.i7 & 8;
                                             this.i7 = this.i7 & 1;
                                             if(this.i7 != 0)
                                             {
                                                if(this.i1 != 0)
                                                {
                                                   this.i7 = 0;
                                                   this.i3 = this.i7;
                                                   this.i4 = li32(mstate.ebp + -1602);
                                                   this.i8 = li32(mstate.ebp + -1539);
                                                   addr3051:
                                                   while(true)
                                                   {
                                                      this.i9 = this.i3;
                                                      if(this.i0 != 0)
                                                      {
                                                         this.i3 = this.i4;
                                                         this.i4 = this.i9;
                                                         addr3111:
                                                         this.i9 = li32(FSM___svfscanf);
                                                         if(this.i4 == this.i9)
                                                         {
                                                            §§goto(addr3125);
                                                         }
                                                         else
                                                         {
                                                            this.i9 = mstate.ebp + -992;
                                                            this.i10 = li32(this.i6);
                                                            this.i11 = li8(this.i10);
                                                            this.i9 = this.i9 + this.i4;
                                                            si8(this.i11,this.i9);
                                                            this.i9 = this.i10 + 1;
                                                            si32(this.i9,this.i6);
                                                            this.i9 = li32(this.i5);
                                                            this.i9 = this.i9 + -1;
                                                            si32(this.i9,this.i5);
                                                            this.i9 = li32(mstate.ebp + -1521);
                                                            this.i10 = FSM___svfscanf;
                                                            this.i11 = 128;
                                                            memcpy(this.i9,this.i10,this.i11);
                                                            this.i9 = li32(FSM___svfscanf);
                                                            mstate.esp = mstate.esp - 16;
                                                            this.i10 = mstate.ebp + -464;
                                                            this.i4 = this.i4 + 1;
                                                            si32(this.i7,mstate.esp);
                                                            this.i11 = li32(mstate.ebp + -1575);
                                                            si32(this.i11,mstate.esp + 4);
                                                            si32(this.i4,mstate.esp + 8);
                                                            si32(this.i10,mstate.esp + 12);
                                                            state = 7;
                                                            mstate.esp = mstate.esp - 4;
                                                            mstate.funcs[this.i9]();
                                                            return;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.i0 = this.i4;
                                                         this.i7 = this.i8;
                                                      }
                                                      this.i4 = this.i3;
                                                      this.i3 = this.i9;
                                                   }
                                                }
                                                else
                                                {
                                                   this.i7 = li32(mstate.ebp + -1602);
                                                   this.i7 = li32(this.i7);
                                                   this.i3 = li32(mstate.ebp + -1602);
                                                   this.i3 = this.i3 + 4;
                                                   if(this.i0 != 0)
                                                   {
                                                      this.i4 = 0;
                                                      this.i8 = li32(mstate.ebp + -1539);
                                                      §§goto(addr3111);
                                                   }
                                                   else
                                                   {
                                                      this.i0 = this.i3;
                                                      this.i7 = li32(mstate.ebp + -1539);
                                                   }
                                                }
                                                addr3530:
                                                while(true)
                                                {
                                                   this.i3 = this.i0;
                                                   this.i0 = this.i7;
                                                   if(this.i1 == 0)
                                                   {
                                                      this.i1 = li32(mstate.ebp + -1512);
                                                      this.i1 = this.i1 + 1;
                                                      this.i7 = li32(mstate.ebp + -1566);
                                                      this.i9 = this.i7 + 1;
                                                      this.i7 = li32(mstate.ebp + -1530);
                                                      this.i4 = this.i7;
                                                      this.i7 = this.i0;
                                                      this.i8 = this.i1;
                                                      this.i1 = this.i9;
                                                      this.i0 = li32(mstate.ebp + -1503);
                                                   }
                                                   else
                                                   {
                                                      this.i1 = li32(mstate.ebp + -1512);
                                                      this.i1 = this.i1 + 1;
                                                      this.i7 = li32(mstate.ebp + -1530);
                                                      this.i4 = this.i7;
                                                      this.i7 = this.i0;
                                                      this.i8 = this.i1;
                                                      this.i0 = li32(mstate.ebp + -1566);
                                                      this.i1 = this.i0;
                                                      this.i0 = li32(mstate.ebp + -1503);
                                                   }
                                                }
                                             }
                                             else if(this.i1 != 0)
                                             {
                                                this.i1 = 0;
                                                addr3611:
                                                while(true)
                                                {
                                                   this.i3 = li32(this.i5);
                                                   if(uint(this.i3) < uint(this.i0))
                                                   {
                                                      this.i7 = li32(this.i6);
                                                      this.i7 = this.i7 + this.i3;
                                                      si32(this.i7,this.i6);
                                                      mstate.esp = mstate.esp - 4;
                                                      this.i7 = li32(mstate.ebp + -1656);
                                                      si32(this.i7,mstate.esp);
                                                      state = 9;
                                                      mstate.esp = mstate.esp - 4;
                                                      FSM___svfscanf.start();
                                                      return;
                                                   }
                                                   this.i3 = this.i3 - this.i0;
                                                   si32(this.i3,this.i5);
                                                   this.i3 = li32(this.i6);
                                                   this.i7 = li32(mstate.ebp + -1539);
                                                   this.i1 = this.i1 + this.i7;
                                                   this.i3 = this.i3 + this.i0;
                                                   si32(this.i3,this.i6);
                                                   this.i3 = li32(mstate.ebp + -1512);
                                                   this.i3 = this.i3 + 1;
                                                   this.i0 = this.i1 + this.i0;
                                                   this.i1 = li32(mstate.ebp + -1530);
                                                   this.i4 = this.i1;
                                                   this.i7 = this.i0;
                                                   this.i8 = this.i3;
                                                   this.i0 = li32(mstate.ebp + -1566);
                                                   this.i1 = this.i0;
                                                   this.i0 = li32(mstate.ebp + -1503);
                                                   this.i3 = li32(mstate.ebp + -1602);
                                                }
                                             }
                                             else
                                             {
                                                this.i1 = 1;
                                                this.i3 = li32(mstate.ebp + -1602);
                                                this.i3 = li32(this.i3);
                                                mstate.esp = mstate.esp - 16;
                                                si32(this.i3,mstate.esp);
                                                si32(this.i1,mstate.esp + 4);
                                                si32(this.i0,mstate.esp + 8);
                                                this.i0 = li32(mstate.ebp + -1656);
                                                si32(this.i0,mstate.esp + 12);
                                                state = 10;
                                                mstate.esp = mstate.esp - 4;
                                                FSM___svfscanf.start();
                                                return;
                                             }
                                          }
                                       }
                                       else if(this.i3 != 2)
                                       {
                                          if(this.i3 != 3)
                                          {
                                             if(this.i3 != 4)
                                             {
                                                §§goto(addr2935);
                                             }
                                             else
                                             {
                                                mstate.esp = mstate.esp - 4;
                                                FSM___svfscanf.start();
                                             }
                                          }
                                          else
                                          {
                                             this.i0 = this.i1 + -1;
                                             this.i3 = li32(mstate.ebp + -1575);
                                             si32(this.i3,mstate.ebp + -1252);
                                             this.i0 = uint(this.i0) > uint(511)?512:int(this.i1);
                                             this.i1 = this.i7 | 704;
                                             if(this.i0 == 0)
                                             {
                                                this.i0 = li32(mstate.ebp + -1530);
                                             }
                                             else
                                             {
                                                this.i0 = this.i0 + 1;
                                                this.i7 = li32(mstate.ebp + -1530);
                                                loop6:
                                                while(true)
                                                {
                                                   this.i3 = li32(this.i6);
                                                   this.i3 = li8(this.i3);
                                                   this.i4 = this.i3;
                                                   if(this.i3 <= 55)
                                                   {
                                                      if(this.i4 <= 47)
                                                      {
                                                         if(this.i4 != 43)
                                                         {
                                                            if(this.i4 != 45)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         this.i4 = this.i1 & 64;
                                                         if(this.i4 != 0)
                                                         {
                                                            this.i1 = this.i1 | 65536;
                                                            this.i1 = this.i1 & -65;
                                                         }
                                                         else
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else if(this.i4 != 48)
                                                      {
                                                         this.i4 = this.i4 + -49;
                                                         if(uint(this.i4) >= uint(7))
                                                         {
                                                            break;
                                                         }
                                                         this.i4 = FSM___svfscanf;
                                                         this.i7 = this.i7 << 1;
                                                         this.i7 = this.i4 + this.i7;
                                                         this.i7 = si16(li16(this.i7));
                                                         this.i1 = this.i1 & -449;
                                                      }
                                                      else
                                                      {
                                                         this.i4 = this.i7 == 0?256:0;
                                                         this.i1 = this.i4 | this.i1;
                                                         this.i7 = this.i7 == 0?8:int(this.i7);
                                                         this.i4 = this.i1 & 512;
                                                         if(this.i4 != 0)
                                                         {
                                                            this.i1 = this.i1 & -705;
                                                         }
                                                         else
                                                         {
                                                            this.i1 = this.i1 & -449;
                                                         }
                                                      }
                                                   }
                                                   else if(this.i4 <= 87)
                                                   {
                                                      this.i8 = this.i4 + -56;
                                                      if(uint(this.i8) >= uint(2))
                                                      {
                                                         this.i4 = this.i4 + -65;
                                                         if(uint(this.i4) >= uint(6))
                                                         {
                                                            break;
                                                         }
                                                         addr7840:
                                                         if(this.i7 >= 11)
                                                         {
                                                            this.i1 = this.i1 & -449;
                                                         }
                                                         else
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.i4 = FSM___svfscanf;
                                                         this.i7 = this.i7 << 1;
                                                         this.i7 = this.i4 + this.i7;
                                                         this.i7 = li16(this.i7);
                                                         this.i7 = this.i7 << 16;
                                                         this.i7 = this.i7 >> 16;
                                                         if(this.i7 <= 8)
                                                         {
                                                            this.i0 = this.i7;
                                                         }
                                                         else
                                                         {
                                                            this.i1 = this.i1 & -449;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(this.i4 != 88)
                                                      {
                                                         this.i8 = this.i4 + -97;
                                                         if(uint(this.i8) >= uint(6))
                                                         {
                                                            if(this.i4 != 120)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr7840);
                                                         }
                                                      }
                                                      this.i4 = this.i1 & 256;
                                                      if(this.i4 != 0)
                                                      {
                                                         this.i4 = mstate.ebp + -992;
                                                         this.i8 = this.i1 >>> 16;
                                                         this.i8 = this.i8 & 1;
                                                         this.i4 = this.i8 + this.i4;
                                                         this.i8 = li32(mstate.ebp + -1252);
                                                         this.i4 = this.i4 + 1;
                                                         if(this.i4 == this.i8)
                                                         {
                                                            this.i7 = 16;
                                                            this.i1 = this.i1 & -257;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   this.i4 = li32(mstate.ebp + -1252);
                                                   si8(this.i3,this.i4);
                                                   this.i3 = this.i4 + 1;
                                                   si32(this.i3,mstate.ebp + -1252);
                                                   this.i3 = li32(this.i5);
                                                   this.i3 = this.i3 + -1;
                                                   si32(this.i3,this.i5);
                                                   if(this.i3 >= 1)
                                                   {
                                                      this.i3 = li32(this.i6);
                                                      this.i3 = this.i3 + 1;
                                                      si32(this.i3,this.i6);
                                                      addr8118:
                                                      while(true)
                                                      {
                                                         this.i0 = this.i0 + -1;
                                                         if(this.i0 != 1)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr8177:
                                                         while(true)
                                                         {
                                                            this.i0 = this.i7;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      mstate.esp = mstate.esp - 4;
                                                      this.i3 = li32(mstate.ebp + -1656);
                                                      si32(this.i3,mstate.esp);
                                                      state = 27;
                                                      mstate.esp = mstate.esp - 4;
                                                      FSM___svfscanf.start();
                                                      return;
                                                   }
                                                }
                                                this.i0 = this.i7;
                                             }
                                             while(true)
                                             {
                                                this.i7 = li32(mstate.ebp + -1252);
                                                this.i3 = this.i1 & 128;
                                                if(this.i3 != 0)
                                                {
                                                   this.i0 = li32(mstate.ebp + -1575);
                                                   if(uint(this.i0) < uint(this.i7))
                                                   {
                                                      this.i0 = this.i7 + -1;
                                                      si32(this.i0,mstate.ebp + -1252);
                                                      this.i0 = li8(this.i7 + -1);
                                                      mstate.esp = mstate.esp - 8;
                                                      si32(this.i0,mstate.esp);
                                                      this.i0 = li32(mstate.ebp + -1656);
                                                      si32(this.i0,mstate.esp + 4);
                                                      state = 28;
                                                      mstate.esp = mstate.esp - 4;
                                                      FSM___svfscanf.start();
                                                      return;
                                                   }
                                                   break loop0;
                                                }
                                                this.i3 = li8(this.i7 + -1);
                                                this.i7 = this.i7 + -1;
                                                this.i4 = this.i3;
                                                if(this.i3 != 88)
                                                {
                                                   this.i3 = this.i3 & 255;
                                                   if(this.i3 != 120)
                                                   {
                                                      addr8380:
                                                      while(true)
                                                      {
                                                         this.i7 = this.i1 & 8;
                                                         if(this.i7 != 0)
                                                         {
                                                            this.i1 = li32(mstate.ebp + -1566);
                                                            this.i7 = li32(mstate.ebp + -1602);
                                                         }
                                                         else
                                                         {
                                                            this.i7 = 0;
                                                            this.i3 = li32(mstate.ebp + -1252);
                                                            si8(this.i7,this.i3);
                                                            this.i7 = li32(FSM___svfscanf);
                                                            this.i3 = this.i1 & 16;
                                                            this.i4 = this.i1 & 32768;
                                                            if(this.i4 != 0)
                                                            {
                                                               this.i4 = 0;
                                                               while(true)
                                                               {
                                                                  this.i8 = li32(mstate.ebp + -1674);
                                                                  this.i8 = this.i8 + this.i4;
                                                                  this.i8 = li8(this.i8);
                                                                  this.i9 = this.i8 << 2;
                                                                  this.i9 = this.i7 + this.i9;
                                                                  this.i9 = li32(this.i9 + 52);
                                                                  this.i4 = this.i4 + 1;
                                                                  this.i9 = this.i9 & 16384;
                                                                  if(this.i9 != 0)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  break;
                                                               }
                                                               this.i7 = mstate.ebp + -992;
                                                               this.i7 = this.i7 + this.i4;
                                                               this.i9 = this.i8 & 255;
                                                               if(this.i9 != 43)
                                                               {
                                                                  this.i9 = this.i8 & 255;
                                                                  if(this.i9 != 45)
                                                                  {
                                                                     this.i4 = this.i8;
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i8 = mstate.ebp + -992;
                                                                     this.i4 = this.i4 << 0;
                                                                     this.i4 = this.i4 + this.i8;
                                                                     this.i7 = li8(this.i7);
                                                                     this.i4 = this.i4 + 1;
                                                                     if(this.i0 != 0)
                                                                     {
                                                                        if(this.i0 != 16)
                                                                        {
                                                                           this.i8 = 1;
                                                                           this.i9 = this.i0;
                                                                        }
                                                                        addr9882:
                                                                        if(this.i9 == 0)
                                                                        {
                                                                           this.i9 = this.i7 & 255;
                                                                           if(this.i9 == 48)
                                                                           {
                                                                              this.i9 = 8;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i9 = 10;
                                                                           }
                                                                        }
                                                                        this.i10 = this.i9 + -2;
                                                                        addr10625:
                                                                        if(uint(this.i10) >= uint(35))
                                                                        {
                                                                           this.i7 = 0;
                                                                           this.i4 = this.i7;
                                                                           addr10561:
                                                                           this.i8 = 22;
                                                                           si32(this.i8,FSM___svfscanf);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = -1;
                                                                           mstate.esp = mstate.esp - 16;
                                                                           this.i11 = this.i9 >> 31;
                                                                           si32(this.i10,mstate.esp);
                                                                           si32(this.i10,mstate.esp + 4);
                                                                           si32(this.i9,mstate.esp + 8);
                                                                           si32(this.i11,mstate.esp + 12);
                                                                           mstate.esp = mstate.esp - 4;
                                                                           mstate.funcs[FSM___svfscanf]();
                                                                        }
                                                                        if(this.i3 != 0)
                                                                        {
                                                                           this.i1 = this.i4;
                                                                           addr10635:
                                                                           this.i1 = li32(mstate.ebp + -1602);
                                                                           this.i1 = li32(this.i1);
                                                                           si32(this.i7,this.i1);
                                                                           this.i1 = li32(mstate.ebp + -1566);
                                                                           this.i1 = this.i1 + 1;
                                                                           this.i7 = li32(mstate.ebp + -1602);
                                                                           this.i7 = this.i7 + 4;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i3 = this.i4;
                                                                        }
                                                                     }
                                                                     this.i8 = 1;
                                                                  }
                                                                  addr9753:
                                                                  this.i9 = this.i7 & 255;
                                                                  if(this.i9 != 48)
                                                                  {
                                                                     addr9766:
                                                                     this.i9 = this.i0;
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i9 = li8(this.i4);
                                                                     if(this.i9 != 88)
                                                                     {
                                                                        this.i9 = this.i9 & 255;
                                                                        if(this.i9 == 120)
                                                                        {
                                                                        }
                                                                        addr9765:
                                                                        §§goto(addr9766);
                                                                     }
                                                                     this.i9 = li8(this.i4 + 1);
                                                                     this.i10 = this.i9 + -48;
                                                                     this.i10 = this.i10 & 255;
                                                                     if(uint(this.i10) >= uint(10))
                                                                     {
                                                                        this.i10 = this.i9 + -65;
                                                                        this.i10 = this.i10 & 255;
                                                                        if(uint(this.i10) >= uint(6))
                                                                        {
                                                                           this.i10 = this.i9 + -97;
                                                                           this.i10 = this.i10 & 255;
                                                                           if(uint(this.i10) > uint(5))
                                                                           {
                                                                              §§goto(addr9765);
                                                                           }
                                                                        }
                                                                     }
                                                                     this.i10 = 16;
                                                                     this.i4 = this.i4 + 2;
                                                                     this.i7 = this.i9;
                                                                     this.i9 = this.i10;
                                                                  }
                                                                  §§goto(addr9882);
                                                               }
                                                               else
                                                               {
                                                                  this.i8 = mstate.ebp + -992;
                                                                  this.i4 = this.i4 << 0;
                                                                  this.i4 = this.i4 + this.i8;
                                                                  this.i7 = li8(this.i7);
                                                                  this.i8 = this.i4 + 1;
                                                                  this.i4 = this.i7;
                                                                  this.i7 = this.i8;
                                                               }
                                                               this.i9 = this.i7;
                                                               if(this.i0 != 0)
                                                               {
                                                                  if(this.i0 != 16)
                                                                  {
                                                                     this.i7 = 0;
                                                                     this.i8 = this.i7;
                                                                     this.i7 = this.i4;
                                                                     this.i4 = this.i9;
                                                                     this.i9 = this.i0;
                                                                  }
                                                                  §§goto(addr9882);
                                                               }
                                                               this.i8 = 0;
                                                               this.i7 = this.i4;
                                                               this.i4 = this.i9;
                                                               §§goto(addr9753);
                                                            }
                                                            else
                                                            {
                                                               this.i4 = 0;
                                                               while(true)
                                                               {
                                                                  this.i8 = li32(mstate.ebp + -1674);
                                                                  this.i8 = this.i8 + this.i4;
                                                                  this.i8 = li8(this.i8);
                                                                  this.i9 = this.i8 << 2;
                                                                  this.i9 = this.i7 + this.i9;
                                                                  this.i9 = li32(this.i9 + 52);
                                                                  this.i4 = this.i4 + 1;
                                                                  this.i9 = this.i9 & 16384;
                                                                  if(this.i9 != 0)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  break;
                                                               }
                                                               this.i7 = mstate.ebp + -992;
                                                               this.i7 = this.i7 + this.i4;
                                                               this.i9 = this.i8 & 255;
                                                               if(this.i9 != 43)
                                                               {
                                                                  this.i9 = this.i8 & 255;
                                                                  if(this.i9 != 45)
                                                                  {
                                                                     this.i4 = this.i8;
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i8 = mstate.ebp + -992;
                                                                     this.i4 = this.i4 << 0;
                                                                     this.i4 = this.i4 + this.i8;
                                                                     this.i7 = li8(this.i7);
                                                                     this.i4 = this.i4 + 1;
                                                                     if(this.i0 != 0)
                                                                     {
                                                                        if(this.i0 != 16)
                                                                        {
                                                                           this.i8 = 1;
                                                                           this.i9 = this.i0;
                                                                        }
                                                                        addr8856:
                                                                        if(this.i9 == 0)
                                                                        {
                                                                           this.i9 = this.i7 & 255;
                                                                           if(this.i9 == 48)
                                                                           {
                                                                              this.i9 = 8;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i9 = 10;
                                                                           }
                                                                        }
                                                                        this.i10 = this.i9 + -2;
                                                                        addr9531:
                                                                        if(uint(this.i10) >= uint(35))
                                                                        {
                                                                           this.i7 = 0;
                                                                           this.i4 = this.i7;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = 0;
                                                                           mstate.esp = mstate.esp - 16;
                                                                           this.i11 = this.i8 == 0?2147483647:-2147483648;
                                                                           addr8930:
                                                                           this.i12 = this.i8 == 0?-1:0;
                                                                           this.i13 = this.i9 >> 31;
                                                                           si32(this.i12,mstate.esp);
                                                                           si32(this.i11,mstate.esp + 4);
                                                                           si32(this.i9,mstate.esp + 8);
                                                                           si32(this.i13,mstate.esp + 12);
                                                                           mstate.esp = mstate.esp - 4;
                                                                           mstate.funcs[FSM___svfscanf]();
                                                                        }
                                                                        this.i8 = 22;
                                                                        addr9585:
                                                                        si32(this.i8,FSM___svfscanf);
                                                                        if(this.i3 != 0)
                                                                        {
                                                                           this.i1 = this.i4;
                                                                           §§goto(addr10635);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i3 = this.i4;
                                                                        }
                                                                     }
                                                                     this.i8 = 1;
                                                                  }
                                                                  addr8723:
                                                                  this.i9 = this.i7 & 255;
                                                                  if(this.i9 != 48)
                                                                  {
                                                                     addr8736:
                                                                     this.i9 = this.i0;
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i9 = li8(this.i4);
                                                                     if(this.i9 != 88)
                                                                     {
                                                                        this.i9 = this.i9 & 255;
                                                                        if(this.i9 == 120)
                                                                        {
                                                                        }
                                                                        addr8735:
                                                                        §§goto(addr8736);
                                                                     }
                                                                     this.i9 = li8(this.i4 + 1);
                                                                     this.i10 = this.i9 + -48;
                                                                     this.i10 = this.i10 & 255;
                                                                     if(uint(this.i10) >= uint(10))
                                                                     {
                                                                        this.i10 = this.i9 + -65;
                                                                        this.i10 = this.i10 & 255;
                                                                        if(uint(this.i10) >= uint(6))
                                                                        {
                                                                           this.i10 = this.i9 + -97;
                                                                           this.i10 = this.i10 & 255;
                                                                           if(uint(this.i10) > uint(5))
                                                                           {
                                                                              §§goto(addr8735);
                                                                           }
                                                                        }
                                                                     }
                                                                     this.i10 = 16;
                                                                     this.i7 = this.i4 + 2;
                                                                     this.i4 = this.i7;
                                                                     this.i7 = this.i9;
                                                                     this.i9 = this.i10;
                                                                  }
                                                                  §§goto(addr8856);
                                                               }
                                                               else
                                                               {
                                                                  this.i8 = mstate.ebp + -992;
                                                                  this.i4 = this.i4 << 0;
                                                                  this.i4 = this.i4 + this.i8;
                                                                  this.i8 = li8(this.i7);
                                                                  this.i7 = this.i4 + 1;
                                                                  this.i4 = this.i8;
                                                               }
                                                               this.i9 = this.i4;
                                                               if(this.i0 != 0)
                                                               {
                                                                  if(this.i0 != 16)
                                                                  {
                                                                     this.i4 = 0;
                                                                     this.i8 = this.i4;
                                                                     this.i4 = this.i7;
                                                                     this.i7 = this.i9;
                                                                     this.i9 = this.i0;
                                                                  }
                                                                  §§goto(addr8856);
                                                               }
                                                               this.i8 = 0;
                                                               this.i4 = this.i7;
                                                               this.i7 = this.i9;
                                                               §§goto(addr8723);
                                                            }
                                                            this.i4 = this.i1 & 16384;
                                                            if(this.i4 != 0)
                                                            {
                                                               this.i1 = li32(mstate.ebp + -1602);
                                                               this.i1 = li32(this.i1);
                                                               si8(this.i7,this.i1);
                                                               this.i1 = li32(mstate.ebp + -1566);
                                                               this.i1 = this.i1 + 1;
                                                               this.i7 = li32(mstate.ebp + -1602);
                                                               this.i7 = this.i7 + 4;
                                                            }
                                                            else
                                                            {
                                                               this.i4 = this.i1 & 4;
                                                               if(this.i4 != 0)
                                                               {
                                                                  this.i1 = li32(mstate.ebp + -1602);
                                                                  this.i1 = li32(this.i1);
                                                                  si16(this.i7,this.i1);
                                                                  this.i1 = li32(mstate.ebp + -1566);
                                                                  this.i1 = this.i1 + 1;
                                                                  this.i7 = li32(mstate.ebp + -1602);
                                                                  this.i7 = this.i7 + 4;
                                                               }
                                                               else
                                                               {
                                                                  this.i4 = this.i1 & 1;
                                                                  if(this.i4 != 0)
                                                                  {
                                                                     this.i1 = li32(mstate.ebp + -1602);
                                                                     this.i1 = li32(this.i1);
                                                                     si32(this.i7,this.i1);
                                                                     this.i1 = li32(mstate.ebp + -1566);
                                                                     this.i1 = this.i1 + 1;
                                                                     this.i7 = li32(mstate.ebp + -1602);
                                                                     this.i7 = this.i7 + 4;
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i4 = this.i1 & 1024;
                                                                     if(this.i4 != 0)
                                                                     {
                                                                        this.i1 = li32(mstate.ebp + -1602);
                                                                        this.i1 = li32(this.i1);
                                                                        si32(this.i7,this.i1);
                                                                        si32(this.i3,this.i1 + 4);
                                                                        this.i1 = li32(mstate.ebp + -1566);
                                                                        this.i1 = this.i1 + 1;
                                                                        this.i7 = li32(mstate.ebp + -1602);
                                                                        this.i7 = this.i7 + 4;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i1 = this.i1 & 2048;
                                                                        if(this.i1 != 0)
                                                                        {
                                                                           this.i1 = li32(mstate.ebp + -1602);
                                                                           this.i1 = li32(this.i1);
                                                                           si32(this.i7,this.i1);
                                                                           si32(this.i3,this.i1 + 4);
                                                                           this.i7 = li32(mstate.ebp + -1566);
                                                                           this.i7 = this.i7 + 1;
                                                                           this.i1 = li32(mstate.ebp + -1602);
                                                                           this.i3 = this.i1 + 4;
                                                                           this.i1 = this.i7;
                                                                           this.i7 = this.i3;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i1 = li32(mstate.ebp + -1602);
                                                                           this.i1 = li32(this.i1);
                                                                           si32(this.i7,this.i1);
                                                                           this.i1 = li32(mstate.ebp + -1566);
                                                                           this.i1 = this.i1 + 1;
                                                                           this.i7 = li32(mstate.ebp + -1602);
                                                                           this.i7 = this.i7 + 4;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         this.i3 = this.i7;
                                                         this.i7 = li32(mstate.ebp + -1252);
                                                         this.i4 = li32(mstate.ebp + -1539);
                                                         this.i8 = li32(mstate.ebp + -1674);
                                                         this.i4 = this.i4 - this.i8;
                                                         this.i8 = li32(mstate.ebp + -1512);
                                                         this.i8 = this.i8 + 1;
                                                         this.i7 = this.i7 + this.i4;
                                                         this.i4 = this.i0;
                                                         this.i0 = li32(mstate.ebp + -1503);
                                                      }
                                                   }
                                                }
                                                si32(this.i7,mstate.ebp + -1252);
                                                mstate.esp = mstate.esp - 8;
                                                si32(this.i4,mstate.esp);
                                                this.i7 = li32(mstate.ebp + -1656);
                                                si32(this.i7,mstate.esp + 4);
                                                state = 29;
                                                mstate.esp = mstate.esp - 4;
                                                FSM___svfscanf.start();
                                                return;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          this.i0 = this.i1 == 0?-1:int(this.i1);
                                          this.i1 = this.i7 & 8;
                                          this.i7 = this.i7 & 1;
                                          if(this.i7 != 0)
                                          {
                                             if(this.i1 != 0)
                                             {
                                                this.i7 = mstate.ebp + -332;
                                                this.i3 = li32(mstate.ebp + -1602);
                                             }
                                             else
                                             {
                                                this.i7 = li32(mstate.ebp + -1602);
                                                this.i7 = li32(this.i7);
                                                this.i3 = li32(mstate.ebp + -1602);
                                                this.i3 = this.i3 + 4;
                                             }
                                             if(this.i1 != 0)
                                             {
                                                this.i4 = 0;
                                                this.i8 = li32(mstate.ebp + -1539);
                                                addr5735:
                                                while(true)
                                                {
                                                   this.i9 = this.i0;
                                                   this.i0 = this.i4;
                                                   this.i4 = this.i8;
                                                   this.i8 = li32(this.i6);
                                                   this.i8 = li8(this.i8);
                                                   this.i10 = li32(FSM___svfscanf);
                                                   this.i8 = this.i8 << 2;
                                                   this.i8 = this.i10 + this.i8;
                                                   this.i8 = li32(this.i8 + 52);
                                                   this.i8 = this.i8 & 16384;
                                                   if(this.i8 == 0)
                                                   {
                                                      if(this.i9 != 0)
                                                      {
                                                         this.i8 = li32(FSM___svfscanf);
                                                         if(this.i0 == this.i8)
                                                         {
                                                            addr6504:
                                                            §§goto(addr3125);
                                                         }
                                                         else
                                                         {
                                                            this.i8 = mstate.ebp + -992;
                                                            this.i10 = li32(this.i6);
                                                            this.i11 = li8(this.i10);
                                                            this.i8 = this.i8 + this.i0;
                                                            si8(this.i11,this.i8);
                                                            this.i8 = this.i10 + 1;
                                                            si32(this.i8,this.i6);
                                                            this.i8 = li32(this.i5);
                                                            this.i8 = this.i8 + -1;
                                                            si32(this.i8,this.i5);
                                                            this.i8 = li32(mstate.ebp + -1521);
                                                            this.i10 = FSM___svfscanf;
                                                            this.i11 = 128;
                                                            memcpy(this.i8,this.i10,this.i11);
                                                            this.i8 = li32(FSM___svfscanf);
                                                            mstate.esp = mstate.esp - 16;
                                                            this.i10 = mstate.ebp + -464;
                                                            this.i0 = this.i0 + 1;
                                                            si32(this.i7,mstate.esp);
                                                            this.i11 = li32(mstate.ebp + -1575);
                                                            si32(this.i11,mstate.esp + 4);
                                                            si32(this.i0,mstate.esp + 8);
                                                            si32(this.i10,mstate.esp + 12);
                                                            state = 22;
                                                            mstate.esp = mstate.esp - 4;
                                                            mstate.funcs[this.i8]();
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   this.i0 = this.i7;
                                                   this.i7 = this.i4;
                                                   this.i8 = this.i9;
                                                }
                                             }
                                             else
                                             {
                                                this.i4 = 0;
                                                this.i8 = li32(mstate.ebp + -1539);
                                                addr5823:
                                                while(true)
                                                {
                                                   this.i9 = li32(this.i6);
                                                   this.i9 = li8(this.i9);
                                                   this.i10 = li32(FSM___svfscanf);
                                                   this.i9 = this.i9 << 2;
                                                   this.i9 = this.i10 + this.i9;
                                                   this.i9 = li32(this.i9 + 52);
                                                   this.i9 = this.i9 & 16384;
                                                   if(this.i9 == 0)
                                                   {
                                                      if(this.i0 != 0)
                                                      {
                                                         this.i9 = li32(FSM___svfscanf);
                                                         if(this.i4 != this.i9)
                                                         {
                                                            this.i9 = mstate.ebp + -992;
                                                            this.i10 = li32(this.i6);
                                                            this.i11 = li8(this.i10);
                                                            this.i9 = this.i9 + this.i4;
                                                            si8(this.i11,this.i9);
                                                            this.i9 = this.i10 + 1;
                                                            si32(this.i9,this.i6);
                                                            this.i9 = li32(this.i5);
                                                            this.i9 = this.i9 + -1;
                                                            si32(this.i9,this.i5);
                                                            this.i9 = li32(mstate.ebp + -1521);
                                                            this.i10 = FSM___svfscanf;
                                                            this.i11 = 128;
                                                            memcpy(this.i9,this.i10,this.i11);
                                                            this.i10 = li32(FSM___svfscanf);
                                                            mstate.esp = mstate.esp - 16;
                                                            this.i11 = mstate.ebp + -464;
                                                            this.i9 = this.i4 + 1;
                                                            si32(this.i7,mstate.esp);
                                                            this.i4 = li32(mstate.ebp + -1575);
                                                            si32(this.i4,mstate.esp + 4);
                                                            si32(this.i9,mstate.esp + 8);
                                                            si32(this.i11,mstate.esp + 12);
                                                            state = 19;
                                                            mstate.esp = mstate.esp - 4;
                                                            mstate.funcs[this.i10]();
                                                            return;
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   this.i0 = this.i7;
                                                   this.i7 = this.i8;
                                                   this.i8 = this.i9;
                                                }
                                                §§goto(addr6504);
                                             }
                                             addr5887:
                                             while(true)
                                             {
                                                if(this.i1 == 0)
                                                {
                                                   this.i1 = 0;
                                                   si32(this.i1,this.i0);
                                                   this.i0 = li32(mstate.ebp + -1512);
                                                   this.i0 = this.i0 + 1;
                                                   this.i1 = li32(mstate.ebp + -1566);
                                                   this.i1 = this.i1 + 1;
                                                   this.i4 = li32(mstate.ebp + -1530);
                                                   this.i8 = this.i0;
                                                   this.i0 = li32(mstate.ebp + -1503);
                                                }
                                                else
                                                {
                                                   this.i0 = li32(mstate.ebp + -1512);
                                                   this.i0 = this.i0 + 1;
                                                   this.i1 = li32(mstate.ebp + -1530);
                                                   this.i4 = this.i1;
                                                   this.i8 = this.i0;
                                                   this.i0 = li32(mstate.ebp + -1566);
                                                   this.i1 = this.i0;
                                                   this.i0 = li32(mstate.ebp + -1503);
                                                }
                                             }
                                          }
                                          else if(this.i1 != 0)
                                          {
                                             this.i7 = 0;
                                             loop5:
                                             while(true)
                                             {
                                                this.i1 = this.i0;
                                                this.i0 = this.i7;
                                                this.i7 = li32(this.i6);
                                                this.i7 = li8(this.i7);
                                                this.i3 = li32(FSM___svfscanf);
                                                this.i7 = this.i7 << 2;
                                                this.i7 = this.i3 + this.i7;
                                                this.i7 = li32(this.i7 + 52);
                                                this.i7 = this.i7 & 16384;
                                                if(this.i7 != 0)
                                                {
                                                   break;
                                                }
                                                this.i7 = li32(this.i5);
                                                this.i7 = this.i7 + -1;
                                                si32(this.i7,this.i5);
                                                this.i3 = li32(this.i6);
                                                this.i3 = this.i3 + 1;
                                                si32(this.i3,this.i6);
                                                if(this.i1 != 1)
                                                {
                                                   if(this.i7 >= 1)
                                                   {
                                                      addr7057:
                                                      while(true)
                                                      {
                                                         this.i7 = this.i1 + -1;
                                                         this.i1 = this.i0 + 1;
                                                         this.i0 = this.i7;
                                                         this.i7 = this.i1;
                                                         continue loop5;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      mstate.esp = mstate.esp - 4;
                                                      this.i7 = li32(mstate.ebp + -1656);
                                                      si32(this.i7,mstate.esp);
                                                      state = 25;
                                                      mstate.esp = mstate.esp - 4;
                                                      FSM___svfscanf.start();
                                                      return;
                                                   }
                                                }
                                                else
                                                {
                                                   this.i0 = this.i0 + 1;
                                                   break;
                                                }
                                             }
                                             while(true)
                                             {
                                                this.i7 = li32(mstate.ebp + -1512);
                                                this.i1 = this.i7 + 1;
                                                this.i7 = li32(mstate.ebp + -1539);
                                                this.i0 = this.i0 + this.i7;
                                                this.i7 = li32(mstate.ebp + -1530);
                                                this.i4 = this.i7;
                                                this.i7 = this.i0;
                                                this.i8 = this.i1;
                                                this.i0 = li32(mstate.ebp + -1566);
                                                this.i1 = this.i0;
                                                this.i0 = li32(mstate.ebp + -1503);
                                                this.i3 = li32(mstate.ebp + -1602);
                                             }
                                          }
                                          else
                                          {
                                             this.i7 = li32(mstate.ebp + -1602);
                                             this.i7 = li32(this.i7);
                                             si32(this.i7,mstate.ebp + -1252);
                                             this.i1 = li32(mstate.ebp + -1602);
                                             this.i3 = this.i1 + 4;
                                             loop4:
                                             while(true)
                                             {
                                                this.i1 = li32(this.i6);
                                                this.i1 = li8(this.i1);
                                                this.i4 = li32(FSM___svfscanf);
                                                this.i1 = this.i1 << 2;
                                                this.i1 = this.i4 + this.i1;
                                                this.i1 = li32(this.i1 + 52);
                                                this.i1 = this.i1 & 16384;
                                                if(this.i1 == 0)
                                                {
                                                   this.i1 = li32(this.i5);
                                                   this.i1 = this.i1 + -1;
                                                   si32(this.i1,this.i5);
                                                   this.i1 = li32(this.i6);
                                                   this.i4 = li32(mstate.ebp + -1252);
                                                   this.i8 = li8(this.i1);
                                                   si8(this.i8,this.i4);
                                                   this.i4 = this.i4 + 1;
                                                   si32(this.i4,mstate.ebp + -1252);
                                                   this.i1 = this.i1 + 1;
                                                   si32(this.i1,this.i6);
                                                   if(this.i0 != 1)
                                                   {
                                                      this.i1 = li32(this.i5);
                                                      if(this.i1 >= 1)
                                                      {
                                                         addr7345:
                                                         while(true)
                                                         {
                                                            this.i0 = this.i0 + -1;
                                                            continue loop4;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         mstate.esp = mstate.esp - 4;
                                                         this.i1 = li32(mstate.ebp + -1656);
                                                         si32(this.i1,mstate.esp);
                                                         state = 26;
                                                         mstate.esp = mstate.esp - 4;
                                                         FSM___svfscanf.start();
                                                         return;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      break;
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                this.i0 = 0;
                                                this.i1 = li32(mstate.ebp + -1252);
                                                si8(this.i0,this.i1);
                                                this.i0 = li32(mstate.ebp + -1252);
                                                this.i1 = li32(mstate.ebp + -1539);
                                                this.i7 = this.i1 - this.i7;
                                                this.i1 = li32(mstate.ebp + -1512);
                                                this.i1 = this.i1 + 1;
                                                this.i4 = li32(mstate.ebp + -1566);
                                                this.i9 = this.i4 + 1;
                                                this.i7 = this.i0 + this.i7;
                                                this.i0 = li32(mstate.ebp + -1530);
                                                this.i4 = this.i0;
                                                this.i8 = this.i1;
                                                this.i1 = this.i9;
                                                this.i0 = li32(mstate.ebp + -1503);
                                             }
                                          }
                                       }
                                       addr319:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.i4 = this.i7;
                                    this.i7 = this.i3;
                                    this.i3 = this.i9;
                                    addr2627:
                                    mstate.esp = mstate.esp - 4;
                                    this.i9 = li32(mstate.ebp + -1656);
                                    si32(this.i9,mstate.esp);
                                    state = 6;
                                    mstate.esp = mstate.esp - 4;
                                    FSM___svfscanf.start();
                                    return;
                                 }
                              }
                              else
                              {
                                 if(this.i10 <= 111)
                                 {
                                    if(this.i10 <= 105)
                                    {
                                       this.i12 = this.i10 + -101;
                                       if(uint(this.i12) >= uint(3))
                                       {
                                          if(this.i10 != 104)
                                          {
                                             if(this.i10 != 105)
                                             {
                                                break loop0;
                                             }
                                             this.i0 = this.i3 + this.i0;
                                             this.i3 = li32(this.i5);
                                             this.i0 = this.i0 + 2;
                                             this.i4 = this.i9 + this.i7;
                                             if(this.i3 >= 1)
                                             {
                                                this.i3 = 3;
                                                this.i7 = 0;
                                                §§goto(addr2674);
                                             }
                                             else
                                             {
                                                this.i3 = 3;
                                                this.i7 = 0;
                                             }
                                          }
                                          else
                                          {
                                             this.i10 = this.i8 & 4;
                                             if(this.i10 != 0)
                                             {
                                                this.i8 = this.i8 | 16384;
                                                this.i8 = this.i8 & -5;
                                             }
                                             else
                                             {
                                                this.i8 = this.i8 | 4;
                                             }
                                             §§goto(addr661);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr843);
                                       }
                                       §§goto(addr2627);
                                    }
                                    else if(this.i10 <= 109)
                                    {
                                       if(this.i10 != 106)
                                       {
                                          if(this.i10 != 108)
                                          {
                                             break loop0;
                                          }
                                          this.i10 = this.i8 & 1;
                                          if(this.i10 != 0)
                                          {
                                             this.i8 = this.i8 | 1024;
                                             this.i8 = this.i8 & -2;
                                          }
                                          else
                                          {
                                             this.i8 = this.i8 | 1;
                                          }
                                       }
                                       else
                                       {
                                          this.i8 = this.i8 | 2048;
                                       }
                                       §§goto(addr661);
                                    }
                                    else if(this.i10 != 110)
                                    {
                                       if(this.i10 != 111)
                                       {
                                          break loop0;
                                       }
                                       this.i4 = 3;
                                       this.i0 = this.i3 + this.i0;
                                       this.i0 = this.i0 + 2;
                                       this.i3 = 8;
                                       this.i8 = this.i8 | 32768;
                                       this.i7 = this.i9 + this.i7;
                                    }
                                    else
                                    {
                                       this.i0 = this.i3 + this.i0;
                                       this.i0 = this.i0 + 2;
                                       this.i3 = li32(mstate.ebp + -1512);
                                       this.i3 = this.i3 + 1;
                                       this.i7 = this.i9 + this.i7;
                                       this.i1 = this.i8 & 8;
                                       if(this.i1 != 0)
                                       {
                                          this.i8 = this.i3;
                                          this.i3 = li32(mstate.ebp + -1566);
                                          this.i1 = this.i3;
                                          this.i3 = li32(mstate.ebp + -1602);
                                       }
                                       else
                                       {
                                          this.i1 = this.i8 & 16384;
                                          if(this.i1 != 0)
                                          {
                                             this.i8 = li32(mstate.ebp + -1602);
                                             this.i8 = li32(this.i8);
                                             si8(this.i7,this.i8);
                                             this.i8 = li32(mstate.ebp + -1602);
                                             this.i9 = this.i8 + 4;
                                             this.i8 = this.i3;
                                             this.i3 = li32(mstate.ebp + -1566);
                                             this.i1 = this.i3;
                                             this.i3 = this.i9;
                                          }
                                          else
                                          {
                                             this.i1 = this.i8 & 4;
                                             if(this.i1 != 0)
                                             {
                                                this.i8 = li32(mstate.ebp + -1602);
                                                this.i8 = li32(this.i8);
                                                si16(this.i7,this.i8);
                                                this.i8 = li32(mstate.ebp + -1602);
                                                this.i9 = this.i8 + 4;
                                                this.i8 = this.i3;
                                                this.i3 = li32(mstate.ebp + -1566);
                                                this.i1 = this.i3;
                                                this.i3 = this.i9;
                                             }
                                             else
                                             {
                                                this.i1 = this.i8 & 1;
                                                if(this.i1 != 0)
                                                {
                                                   this.i8 = li32(mstate.ebp + -1602);
                                                   this.i8 = li32(this.i8);
                                                   si32(this.i7,this.i8);
                                                   this.i8 = li32(mstate.ebp + -1602);
                                                   this.i9 = this.i8 + 4;
                                                   this.i8 = this.i3;
                                                   this.i3 = li32(mstate.ebp + -1566);
                                                   this.i1 = this.i3;
                                                   this.i3 = this.i9;
                                                }
                                                else
                                                {
                                                   this.i1 = this.i8 & 1024;
                                                   if(this.i1 != 0)
                                                   {
                                                      this.i8 = li32(mstate.ebp + -1602);
                                                      this.i8 = li32(this.i8);
                                                      this.i1 = this.i7 >> 31;
                                                      si32(this.i7,this.i8);
                                                      si32(this.i1,this.i8 + 4);
                                                      this.i8 = li32(mstate.ebp + -1602);
                                                      this.i9 = this.i8 + 4;
                                                      this.i8 = this.i3;
                                                      this.i3 = li32(mstate.ebp + -1566);
                                                      this.i1 = this.i3;
                                                      this.i3 = this.i9;
                                                   }
                                                   else
                                                   {
                                                      this.i1 = li32(mstate.ebp + -1602);
                                                      this.i9 = this.i1 + 4;
                                                      this.i8 = this.i8 & 2048;
                                                      if(this.i8 != 0)
                                                      {
                                                         this.i8 = li32(mstate.ebp + -1602);
                                                         this.i8 = li32(this.i8);
                                                         this.i1 = this.i7 >> 31;
                                                         si32(this.i7,this.i8);
                                                         si32(this.i1,this.i8 + 4);
                                                         this.i8 = this.i3;
                                                         this.i3 = li32(mstate.ebp + -1566);
                                                         this.i1 = this.i3;
                                                         this.i3 = this.i9;
                                                      }
                                                      else
                                                      {
                                                         this.i8 = li32(mstate.ebp + -1602);
                                                         this.i8 = li32(this.i8);
                                                         si32(this.i7,this.i8);
                                                         this.i8 = this.i3;
                                                         this.i3 = li32(mstate.ebp + -1566);
                                                         this.i1 = this.i3;
                                                         this.i3 = this.i9;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr319);
                                 }
                                 else if(this.i10 <= 115)
                                 {
                                    if(this.i10 != 112)
                                    {
                                       if(this.i10 != 113)
                                       {
                                          if(this.i10 != 115)
                                          {
                                             break loop0;
                                          }
                                          this.i10 = 2;
                                          this.i0 = this.i3 + this.i0;
                                          this.i0 = this.i0 + 2;
                                          this.i3 = this.i9 + this.i7;
                                          this.i7 = this.i3;
                                          this.i3 = this.i4;
                                          this.i4 = this.i10;
                                       }
                                       else
                                       {
                                          this.i8 = this.i8 | 1024;
                                          §§goto(addr661);
                                       }
                                    }
                                    else
                                    {
                                       this.i4 = 3;
                                       this.i0 = this.i3 + this.i0;
                                       this.i0 = this.i0 + 2;
                                       this.i3 = 16;
                                       this.i8 = this.i8 | 33040;
                                       this.i7 = this.i9 + this.i7;
                                    }
                                 }
                                 else if(this.i10 <= 119)
                                 {
                                    if(this.i10 != 116)
                                    {
                                       if(this.i10 != 117)
                                       {
                                          break loop0;
                                       }
                                       this.i4 = 3;
                                       this.i0 = this.i3 + this.i0;
                                       this.i0 = this.i0 + 2;
                                       this.i3 = 10;
                                       this.i8 = this.i8 | 32768;
                                       this.i7 = this.i9 + this.i7;
                                    }
                                    else
                                    {
                                       this.i8 = this.i8 | 4096;
                                       §§goto(addr661);
                                    }
                                 }
                                 else if(this.i10 != 120)
                                 {
                                    if(this.i10 != 122)
                                    {
                                       break loop0;
                                    }
                                    this.i8 = this.i8 | 8192;
                                    §§goto(addr661);
                                 }
                                 §§goto(addr2588);
                              }
                              this.i4 = 3;
                              this.i0 = this.i3 + this.i0;
                              this.i0 = this.i0 + 2;
                              this.i3 = 16;
                              this.i8 = this.i8 | 33024;
                              this.i7 = this.i9 + this.i7;
                              §§goto(addr2588);
                           }
                           this.i0 = -1;
                        }
                        mstate.eax = this.i0;
                        mstate.esp = mstate.ebp;
                        mstate.ebp = li32(mstate.esp);
                        mstate.esp = mstate.esp + 4;
                        mstate.esp = mstate.esp + 4;
                        mstate.gworker = caller;
                        return;
                     }
                     mstate.esp = mstate.esp - 4;
                     this.i1 = li32(mstate.ebp + -1656);
                     si32(this.i1,mstate.esp);
                     state = 2;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
                  this.i0 = li32(mstate.ebp + -1566);
                  §§goto(addr26325);
               }
               this.i0 = li32(mstate.ebp + -1566);
               §§goto(addr8294);
            case 1:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i8 == 0)
               {
                  §§goto(addr528);
               }
               §§goto(addr273);
            case 2:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i1 == 0)
               {
                  §§goto(addr1278);
               }
               else
               {
                  addr26291:
                  this.i0 = li32(mstate.ebp + -1512);
                  this.i1 = li32(mstate.ebp + -1566);
                  this.i0 = this.i0 == 0?-1:int(this.i1);
               }
               §§goto(addr8294);
            case 3:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i12 >= 0)
               {
                  §§goto(addr1852);
               }
               §§goto(addr1765);
            case 4:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i14 <= -1)
               {
                  this.i14 = FSM___svfscanf;
                  si8(this.i12,FSM___svfscanf);
                  si8(this.i11,FSM___svfscanf);
                  mstate.esp = mstate.esp - 8;
                  this.i15 = FSM___svfscanf;
                  si32(this.i14,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  state = 5;
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
                  return;
               }
               §§goto(addr2043);
            case 5:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i14 <= 0)
               {
                  this.i14 = this.i2 + this.i13;
                  si8(this.i0,this.i14);
               }
               §§goto(addr2043);
            case 6:
               this.i9 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i9 == 0)
               {
                  §§goto(addr2674);
               }
               else
               {
                  §§goto(addr26291);
               }
               §§goto(addr8294);
            case 7:
               this.i9 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               if(this.i9 != 0)
               {
                  if(this.i9 != -1)
                  {
                     if(this.i9 == -2)
                     {
                        addr3364:
                     }
                     addr3431:
                     this.i9 = this.i4;
                     this.i4 = li32(this.i5);
                     if(this.i4 >= 1)
                     {
                        §§goto(addr3447);
                     }
                     else
                     {
                        mstate.esp = mstate.esp - 4;
                        this.i4 = li32(mstate.ebp + -1656);
                        si32(this.i4,mstate.esp);
                        state = 8;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                  }
                  §§goto(addr3125);
               }
               else
               {
                  if(this.i1 == 0)
                  {
                     this.i10 = 0;
                     si32(this.i10,this.i7);
                  }
                  if(this.i9 == -2)
                  {
                     §§goto(addr3364);
                  }
                  §§goto(addr3431);
               }
               this.i0 = this.i0 + -1;
               this.i4 = this.i4 + this.i8;
               if(this.i1 != 0)
               {
                  this.i9 = 0;
                  this.i8 = this.i4;
                  this.i4 = this.i9;
               }
               else
               {
                  this.i9 = 0;
                  this.i7 = this.i7 + 4;
                  this.i8 = this.i4;
                  this.i4 = this.i9;
               }
               §§goto(addr3431);
            case 8:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i4 != 0)
               {
                  if(this.i9 == 0)
                  {
                     this.i0 = this.i3;
                     this.i7 = this.i8;
                     §§goto(addr3530);
                  }
                  §§goto(addr3125);
               }
               else
               {
                  §§goto(addr3447);
               }
               §§goto(addr3051);
            case 9:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i0 = this.i0 - this.i3;
               this.i1 = this.i3 + this.i1;
               if(this.i7 == 0)
               {
                  §§goto(addr3611);
               }
               else if(this.i1 != 0)
               {
                  this.i0 = li32(mstate.ebp + -1512);
                  this.i0 = this.i0 + 1;
                  this.i3 = li32(mstate.ebp + -1539);
                  this.i1 = this.i1 + this.i3;
                  this.i3 = li32(mstate.ebp + -1530);
                  this.i4 = this.i3;
                  this.i7 = this.i1;
                  this.i8 = this.i0;
                  this.i0 = li32(mstate.ebp + -1566);
                  this.i1 = this.i0;
                  this.i0 = li32(mstate.ebp + -1503);
                  this.i3 = li32(mstate.ebp + -1602);
                  §§goto(addr319);
               }
               else
               {
                  §§goto(addr26291);
               }
               §§goto(addr8294);
            case 10:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               this.i1 = li32(mstate.ebp + -1602);
               this.i3 = this.i1 + 4;
               if(this.i0 != 0)
               {
                  this.i1 = li32(mstate.ebp + -1512);
                  this.i1 = this.i1 + 1;
                  this.i7 = li32(mstate.ebp + -1566);
                  this.i9 = this.i7 + 1;
                  this.i7 = li32(mstate.ebp + -1539);
                  this.i0 = this.i0 + this.i7;
                  this.i7 = li32(mstate.ebp + -1530);
                  this.i4 = this.i7;
                  this.i7 = this.i0;
                  this.i8 = this.i1;
                  this.i1 = this.i9;
                  this.i0 = li32(mstate.ebp + -1503);
                  §§goto(addr319);
               }
               else
               {
                  §§goto(addr26291);
               }
               §§goto(addr8294);
            case 11:
               this.i10 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               if(this.i10 != 0)
               {
                  if(this.i10 != -1)
                  {
                     if(this.i10 == -2)
                     {
                        this.i4 = this.i8;
                        this.i8 = this.i9;
                        this.i9 = this.i12;
                     }
                     addr4793:
                     this.i10 = this.i4;
                     this.i11 = this.i8;
                     this.i12 = this.i9;
                     this.i4 = li32(this.i5);
                     if(this.i4 >= 1)
                     {
                        §§goto(addr4817);
                     }
                     else
                     {
                        mstate.esp = mstate.esp - 4;
                        this.i4 = li32(mstate.ebp + -1656);
                        si32(this.i4,mstate.esp);
                        state = 15;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                  }
                  §§goto(addr6504);
               }
               else
               {
                  this.i10 = 0;
                  si32(this.i10,this.i7);
               }
               this.i10 = FSM___svfscanf;
               this.i11 = li32(this.i7);
               this.i13 = li32(mstate.ebp + -1440);
               this.i14 = 128;
               memcpy(this.i13,this.i10,this.i14);
               if(this.i11 != -1)
               {
                  this.i10 = mstate.ebp + -288;
                  this.i13 = li32(FSM___svfscanf);
                  mstate.esp = mstate.esp - 12;
                  this.i14 = li32(mstate.ebp + -1431);
                  si32(this.i14,mstate.esp);
                  si32(this.i11,mstate.esp + 4);
                  si32(this.i10,mstate.esp + 8);
                  state = 12;
                  mstate.esp = mstate.esp - 4;
                  mstate.funcs[this.i13]();
                  return;
               }
               addr4751:
               this.i0 = this.i0 + -1;
               this.i9 = this.i12 + this.i9;
               if(this.i1 == 0)
               {
                  this.i7 = this.i7 + 4;
               }
               this.i10 = 0;
               this.i4 = this.i8 + 1;
               this.i8 = this.i9;
               this.i9 = this.i10;
               §§goto(addr4793);
            case 12:
               this.i10 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               if(this.i10 == 1)
               {
                  this.i10 = FSM___svfscanf;
                  this.i13 = li32(mstate.ebp + -1422);
                  this.i14 = 128;
                  memcpy(this.i13,this.i10,this.i14);
                  if(this.i11 == -1)
                  {
                     addr4505:
                     addr4598:
                     this.i11 = -1;
                     this.i10 = this.i11;
                     this.i11 = mstate.ebp + -1248;
                     this.i10 = this.i11 + this.i10;
                     this.i10 = li8(this.i10);
                     if(this.i10 == 0)
                     {
                        if(this.i12 == 0)
                        {
                           this.i4 = this.i8;
                           this.i8 = this.i9;
                           this.i0 = this.i12;
                        }
                        else
                        {
                           this.i10 = 0;
                           this.i0 = li32(mstate.ebp + -1674);
                           this.i0 = this.i4 + this.i0;
                           this.i4 = this.i10;
                           addr4670:
                           this.i10 = si8(li8(this.i0));
                           mstate.esp = mstate.esp - 8;
                           si32(this.i10,mstate.esp);
                           this.i10 = li32(mstate.ebp + -1656);
                           si32(this.i10,mstate.esp + 4);
                           state = 14;
                           mstate.esp = mstate.esp - 4;
                           FSM___svfscanf.start();
                           return;
                        }
                     }
                     §§goto(addr4920);
                  }
                  else
                  {
                     this.i10 = mstate.ebp + -144;
                     this.i13 = li32(FSM___svfscanf);
                     mstate.esp = mstate.esp - 12;
                     this.i14 = li32(mstate.ebp + -1458);
                     si32(this.i14,mstate.esp);
                     si32(this.i11,mstate.esp + 4);
                     si32(this.i10,mstate.esp + 8);
                     state = 13;
                     mstate.esp = mstate.esp - 4;
                     mstate.funcs[this.i13]();
                     return;
                  }
               }
               §§goto(addr4751);
            case 13:
               this.i11 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               if(this.i11 == 1)
               {
                  this.i11 = li32(mstate.ebp + -1458);
                  this.i11 = li8(this.i11);
               }
               else
               {
                  §§goto(addr4505);
               }
               §§goto(addr4598);
            case 14:
               mstate.esp = mstate.esp + 8;
               this.i0 = this.i0 + -1;
               this.i4 = this.i4 + 1;
               if(this.i4 != this.i12)
               {
                  §§goto(addr4670);
               }
               else
               {
                  this.i0 = 0;
                  this.i4 = this.i8;
                  this.i8 = this.i9;
                  §§goto(addr4920);
               }
            case 15:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i4 != 0)
               {
                  if(this.i12 == 0)
                  {
                     this.i4 = this.i10;
                     this.i8 = this.i11;
                     this.i0 = this.i12;
                     §§goto(addr4920);
                  }
                  §§goto(addr6504);
               }
               else
               {
                  §§goto(addr4817);
               }
               §§goto(addr2901);
            case 16:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i3 != 0)
               {
                  if(this.i0 != 0)
                  {
                     this.i0 = this.i1 + 1;
                     §§goto(addr5317);
                  }
                  else
                  {
                     §§goto(addr26291);
                  }
                  §§goto(addr8294);
               }
               §§goto(addr5235);
            case 17:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i0 != 0)
               {
                  this.i0 = li32(mstate.ebp + -1252);
                  if(this.i0 != this.i1)
                  {
                     §§goto(addr5554);
                  }
                  else
                  {
                     §§goto(addr26291);
                  }
                  §§goto(addr8294);
               }
               §§goto(addr5416);
            case 18:
               mstate.esp = mstate.esp + 8;
               this.i4 = this.i4 + -1;
               this.i0 = this.i0 + 1;
               if(this.i0 != this.i9)
               {
                  addr6058:
                  this.i10 = si8(li8(this.i4));
                  mstate.esp = mstate.esp - 8;
                  si32(this.i10,mstate.esp);
                  this.i10 = li32(mstate.ebp + -1656);
                  si32(this.i10,mstate.esp + 4);
                  state = 18;
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
                  return;
               }
               addr6924:
               this.i0 = this.i7;
               addr5886:
               this.i7 = this.i8;
               §§goto(addr5887);
            case 19:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               if(this.i4 != 0)
               {
                  if(this.i4 != -1)
                  {
                     if(this.i4 == -2)
                     {
                        this.i4 = this.i8;
                        this.i8 = this.i9;
                     }
                     else
                     {
                        this.i4 = li32(this.i7);
                        if(uint(this.i4) >= uint(256))
                        {
                           mstate.esp = mstate.esp - 4;
                           si32(this.i4,mstate.esp);
                           mstate.esp = mstate.esp - 4;
                           FSM___svfscanf.start();
                        }
                        else
                        {
                           this.i10 = li32(FSM___svfscanf);
                           this.i4 = this.i4 << 2;
                           this.i4 = this.i10 + this.i4;
                           this.i4 = li32(this.i4 + 52);
                        }
                        addr6396:
                        this.i4 = this.i4 & 16384;
                        if(this.i4 != 0)
                        {
                           addr6007:
                           this.i0 = this.i9;
                           addr6018:
                           this.i4 = this.i8;
                           this.i9 = this.i0;
                           this.i8 = this.i4;
                           if(this.i9 != 0)
                           {
                              this.i0 = 0;
                              this.i4 = li32(mstate.ebp + -1674);
                              this.i4 = this.i9 + this.i4;
                              this.i4 = this.i4 + -1;
                              §§goto(addr6058);
                           }
                           else
                           {
                              §§goto(addr6924);
                           }
                        }
                        §§goto(addr5823);
                     }
                     addr5947:
                     this.i9 = this.i4;
                     this.i4 = this.i8;
                     this.i8 = li32(this.i5);
                     if(this.i8 >= 1)
                     {
                        §§goto(addr5968);
                     }
                     else
                     {
                        mstate.esp = mstate.esp - 4;
                        this.i8 = li32(mstate.ebp + -1656);
                        si32(this.i8,mstate.esp);
                        state = 21;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                  }
                  else
                  {
                     addr6719:
                     this.i0 = li32(mstate.ebp + -1656);
                     this.i0 = li16(this.i0 + 12);
                     this.i0 = this.i0 | 64;
                     this.i4 = li32(mstate.ebp + -1656);
                     si16(this.i0,this.i4 + 12);
                     this.i4 = li32(mstate.ebp + -1512);
                     this.i0 = li32(mstate.ebp + -1566);
                     this.i0 = this.i4 == 0?-1:int(this.i0);
                  }
                  §§goto(addr8294);
               }
               else
               {
                  this.i4 = 0;
                  si32(this.i4,this.i7);
                  this.i4 = li32(FSM___svfscanf);
                  this.i4 = li32(this.i4 + 52);
                  this.i4 = this.i4 & 16384;
                  if(this.i4 != 0)
                  {
                     §§goto(addr6007);
                  }
                  §§goto(addr5823);
               }
               this.i10 = 0;
               this.i7 = this.i7 + 4;
               this.i0 = this.i0 + -1;
               this.i4 = this.i9 + this.i8;
               this.i8 = this.i10;
               §§goto(addr5947);
            case 20:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               §§goto(addr6396);
            case 21:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i8 != 0)
               {
                  this.i0 = this.i4;
                  this.i4 = this.i9;
                  addr6987:
                  if(this.i0 == 0)
                  {
                     this.i0 = this.i7;
                     this.i7 = this.i4;
                     §§goto(addr5886);
                  }
                  §§goto(addr6504);
               }
               else
               {
                  §§goto(addr5968);
               }
               §§goto(addr5823);
            case 22:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               if(this.i8 != 0)
               {
                  if(this.i8 != -1)
                  {
                     if(this.i8 == -2)
                     {
                        this.i8 = this.i9;
                     }
                     else
                     {
                        this.i8 = li32(this.i7);
                        if(uint(this.i8) >= uint(256))
                        {
                           mstate.esp = mstate.esp - 4;
                           si32(this.i8,mstate.esp);
                           mstate.esp = mstate.esp - 4;
                           FSM___svfscanf.start();
                        }
                        else
                        {
                           this.i10 = li32(FSM___svfscanf);
                           this.i8 = this.i8 << 2;
                           this.i8 = this.i10 + this.i8;
                           this.i8 = li32(this.i8 + 52);
                        }
                        addr6883:
                        this.i8 = this.i8 & 16384;
                        if(this.i8 != 0)
                        {
                           addr6812:
                           §§goto(addr6018);
                        }
                        §§goto(addr5735);
                     }
                     addr6689:
                     this.i9 = this.i4;
                     this.i4 = this.i0;
                     this.i0 = this.i8;
                     this.i8 = li32(this.i5);
                     if(this.i8 >= 1)
                     {
                        §§goto(addr6714);
                     }
                     else
                     {
                        mstate.esp = mstate.esp - 4;
                        this.i8 = li32(mstate.ebp + -1656);
                        si32(this.i8,mstate.esp);
                        state = 24;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                  }
                  else
                  {
                     §§goto(addr6719);
                  }
                  §§goto(addr8294);
               }
               else
               {
                  this.i8 = 0;
                  si32(this.i8,this.i7);
                  this.i8 = li32(FSM___svfscanf);
                  this.i8 = li32(this.i8 + 52);
                  this.i8 = this.i8 & 16384;
                  if(this.i8 != 0)
                  {
                     §§goto(addr6812);
                  }
                  §§goto(addr5735);
               }
               this.i8 = 0;
               this.i9 = this.i9 + -1;
               this.i0 = this.i0 + this.i4;
               this.i4 = this.i0;
               this.i0 = this.i8;
               this.i8 = this.i9;
               §§goto(addr6689);
            case 23:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               §§goto(addr6883);
            case 24:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i8 != 0)
               {
                  this.i0 = this.i4;
                  this.i4 = this.i9;
                  §§goto(addr6987);
               }
               else
               {
                  §§goto(addr6714);
               }
               §§goto(addr5735);
            case 25:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i7 != 0)
               {
                  this.i0 = this.i0 + 1;
                  §§goto(addr7193);
               }
               §§goto(addr7057);
            case 26:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i1 != 0)
               {
                  §§goto(addr7478);
               }
               §§goto(addr7345);
            case 27:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i3 == 0)
               {
                  §§goto(addr8118);
               }
               §§goto(addr8177);
            case 28:
               mstate.esp = mstate.esp + 8;
               §§goto(addr8284);
            case 29:
               mstate.esp = mstate.esp + 8;
               §§goto(addr8380);
            case 30:
               while(true)
               {
                  this.i14 = mstate.eax;
                  this.i15 = mstate.edx;
                  mstate.esp = mstate.esp + 16;
                  mstate.esp = mstate.esp - 16;
                  si32(this.i12,mstate.esp);
                  si32(this.i11,mstate.esp + 4);
                  si32(this.i9,mstate.esp + 8);
                  si32(this.i13,mstate.esp + 12);
                  mstate.esp = mstate.esp - 4;
                  mstate.funcs[FSM___svfscanf]();
                  §§goto(addr8930);
               }
            case 31:
               while(true)
               {
                  this.i16 = mstate.eax;
                  this.i17 = this.i10;
                  this.i18 = this.i10;
                  this.i19 = this.i9;
                  loop48:
                  while(true)
                  {
                     this.i20 = this.i7 + -48;
                     this.i20 = this.i20 & 255;
                     if(uint(this.i20) >= uint(10))
                     {
                        addr9079:
                        while(true)
                        {
                           this.i20 = this.i7 + -65;
                           this.i20 = this.i20 & 255;
                           if(uint(this.i20) <= uint(25))
                           {
                              this.i7 = this.i7 + -55;
                              this.i20 = this.i7 << 24;
                              this.i20 = this.i20 >> 24;
                              if(this.i20 >= this.i9)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.i20 = this.i7 + -97;
                              this.i20 = this.i20 & 255;
                              if(uint(this.i20) <= uint(25))
                              {
                                 this.i7 = this.i7 + -87;
                                 this.i20 = this.i7 << 24;
                                 this.i20 = this.i20 >> 24;
                                 if(this.i20 < this.i9)
                                 {
                                 }
                              }
                              break;
                           }
                           addr9265:
                           while(this.i17 >= 0)
                           {
                              this.i17 = uint(this.i18) > uint(this.i15)?1:0;
                              this.i20 = uint(this.i10) > uint(this.i14)?1:0;
                              this.i21 = this.i18 == this.i15?1:0;
                              this.i17 = this.i21 != 0?int(this.i20):int(this.i17);
                              if(this.i17 == 0)
                              {
                                 this.i17 = this.i18 ^ this.i15;
                                 this.i20 = this.i10 ^ this.i14;
                                 this.i17 = this.i20 | this.i17;
                                 if(this.i17 == 0)
                                 {
                                    this.i17 = this.i7 << 24;
                                    this.i17 = this.i17 >> 24;
                                    if(this.i17 > this.i16)
                                    {
                                       break;
                                    }
                                 }
                                 mstate.esp = mstate.esp - 16;
                                 si32(this.i10,mstate.esp);
                                 si32(this.i18,mstate.esp + 4);
                                 si32(this.i19,mstate.esp + 8);
                                 si32(this.i13,mstate.esp + 12);
                                 this.i7 = this.i7 << 24;
                                 mstate.esp = mstate.esp - 4;
                                 mstate.funcs[FSM___svfscanf]();
                              }
                              break;
                           }
                           this.i17 = -1;
                           this.i7 = li8(this.i4);
                           this.i4 = this.i4 + 1;
                           continue loop48;
                        }
                        this.i7 = this.i10;
                        this.i4 = this.i18;
                        this.i10 = this.i17;
                        this.i9 = this.i10;
                        if(this.i9 <= -1)
                        {
                           this.i7 = 34;
                           si32(this.i7,FSM___svfscanf);
                           this.i7 = this.i12;
                           this.i4 = this.i11;
                           §§goto(addr9585);
                        }
                        else if(this.i9 != 0)
                        {
                           this.i9 = 0;
                           this.i10 = __subc(this.i9,this.i7);
                           this.i9 = __sube(this.i9,this.i4);
                           this.i4 = this.i8 == 0?int(this.i4):int(this.i9);
                           this.i7 = this.i8 == 0?int(this.i7):int(this.i10);
                           §§goto(addr9585);
                        }
                        §§goto(addr9531);
                     }
                     addr9154:
                     while(true)
                     {
                        this.i7 = this.i7 + -48;
                        this.i20 = this.i7 << 24;
                        this.i20 = this.i20 >> 24;
                        if(this.i20 >= this.i9)
                        {
                           this.i7 = this.i10;
                           this.i4 = this.i18;
                           this.i10 = this.i17;
                        }
                        else
                        {
                           §§goto(addr9265);
                        }
                        §§goto(addr9191);
                     }
                  }
               }
            case 32:
               while(true)
               {
                  this.i10 = mstate.eax;
                  this.i18 = mstate.edx;
                  this.i17 = this.i7 >> 31;
                  this.i7 = this.i7 >> 24;
                  this.i20 = li8(this.i4);
                  this.i7 = __addc(this.i10,this.i7);
                  this.i18 = __adde(this.i18,this.i17);
                  this.i4 = this.i4 + 1;
                  this.i10 = this.i20 + -48;
                  mstate.esp = mstate.esp + 16;
                  this.i10 = this.i10 & 255;
                  if(uint(this.i10) >= uint(10))
                  {
                     this.i17 = 1;
                     this.i10 = this.i7;
                     this.i7 = this.i20;
                     §§goto(addr9079);
                  }
                  else
                  {
                     this.i17 = 1;
                     this.i10 = this.i7;
                     this.i7 = this.i20;
                  }
                  §§goto(addr9154);
               }
            case 33:
               while(true)
               {
                  this.i12 = mstate.eax;
                  this.i13 = mstate.edx;
                  mstate.esp = mstate.esp + 16;
                  mstate.esp = mstate.esp - 16;
                  si32(this.i10,mstate.esp);
                  si32(this.i10,mstate.esp + 4);
                  si32(this.i9,mstate.esp + 8);
                  si32(this.i11,mstate.esp + 12);
                  mstate.esp = mstate.esp - 4;
                  mstate.funcs[FSM___svfscanf]();
               }
            case 34:
               while(true)
               {
                  this.i10 = mstate.eax;
                  this.i13 = mstate.edx;
                  this.i14 = 0;
                  this.i15 = this.i14;
                  this.i16 = this.i14;
                  this.i17 = this.i9;
                  loop55:
                  while(true)
                  {
                     this.i18 = this.i7 + -48;
                     this.i18 = this.i18 & 255;
                     if(uint(this.i18) >= uint(10))
                     {
                        addr10094:
                        while(true)
                        {
                           this.i18 = this.i7 + -65;
                           this.i18 = this.i18 & 255;
                           if(uint(this.i18) <= uint(25))
                           {
                              this.i7 = this.i7 + -55;
                              this.i18 = this.i7 << 24;
                              this.i18 = this.i18 >> 24;
                              if(this.i18 >= this.i9)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.i18 = this.i7 + -97;
                              this.i18 = this.i18 & 255;
                              if(uint(this.i18) <= uint(25))
                              {
                                 this.i7 = this.i7 + -87;
                                 this.i18 = this.i7 << 24;
                                 this.i18 = this.i18 >> 24;
                                 if(this.i18 < this.i9)
                                 {
                                 }
                              }
                              break;
                           }
                           addr10279:
                           while(true)
                           {
                              this.i18 = uint(this.i14) > uint(this.i13)?1:0;
                              this.i19 = uint(this.i15) > uint(this.i10)?1:0;
                              this.i20 = this.i14 == this.i13?1:0;
                              this.i18 = this.i20 != 0?int(this.i19):int(this.i18);
                              if(this.i18 == 0)
                              {
                                 if(this.i16 >= 0)
                                 {
                                    this.i16 = this.i14 ^ this.i13;
                                    this.i18 = this.i15 ^ this.i10;
                                    this.i16 = this.i18 | this.i16;
                                    if(this.i16 == 0)
                                    {
                                       this.i16 = this.i7 << 24;
                                       this.i16 = this.i16 >> 24;
                                       if(this.i16 > this.i12)
                                       {
                                          break;
                                       }
                                    }
                                    mstate.esp = mstate.esp - 16;
                                    si32(this.i15,mstate.esp);
                                    si32(this.i14,mstate.esp + 4);
                                    si32(this.i17,mstate.esp + 8);
                                    si32(this.i11,mstate.esp + 12);
                                    this.i7 = this.i7 << 24;
                                    mstate.esp = mstate.esp - 4;
                                    mstate.funcs[FSM___svfscanf]();
                                 }
                                 break;
                              }
                              break;
                           }
                           this.i16 = -1;
                           this.i7 = li8(this.i4);
                           this.i4 = this.i4 + 1;
                           continue loop55;
                        }
                        this.i7 = this.i16;
                        this.i4 = this.i15;
                        this.i9 = this.i14;
                        if(this.i7 <= -1)
                        {
                           this.i7 = 34;
                           si32(this.i7,FSM___svfscanf);
                           this.i7 = -1;
                           this.i4 = this.i7;
                        }
                        else if(this.i7 == 0)
                        {
                           this.i7 = this.i4;
                           this.i4 = this.i9;
                           §§goto(addr10561);
                        }
                        else
                        {
                           this.i7 = 0;
                           this.i10 = __subc(this.i7,this.i4);
                           this.i7 = __sube(this.i7,this.i9);
                           this.i8 = this.i8 & 1;
                           this.i9 = this.i8 != 0?int(this.i7):int(this.i9);
                           this.i7 = this.i8 != 0?int(this.i10):int(this.i4);
                           this.i4 = this.i9;
                        }
                        §§goto(addr10625);
                     }
                     addr10173:
                     while(true)
                     {
                        this.i7 = this.i7 + -48;
                        this.i18 = this.i7 << 24;
                        this.i18 = this.i18 >> 24;
                        if(this.i18 >= this.i9)
                        {
                           this.i7 = this.i16;
                           this.i4 = this.i15;
                        }
                        else
                        {
                           §§goto(addr10279);
                        }
                        §§goto(addr10206);
                     }
                  }
               }
            case 35:
               while(true)
               {
                  this.i14 = mstate.eax;
                  this.i15 = mstate.edx;
                  this.i16 = this.i7 >> 31;
                  this.i7 = this.i7 >> 24;
                  this.i18 = li8(this.i4);
                  this.i14 = __addc(this.i14,this.i7);
                  this.i19 = __adde(this.i15,this.i16);
                  this.i4 = this.i4 + 1;
                  this.i7 = this.i18 + -48;
                  mstate.esp = mstate.esp + 16;
                  this.i7 = this.i7 & 255;
                  if(uint(this.i7) >= uint(10))
                  {
                     this.i15 = 1;
                     this.i7 = this.i18;
                     this.i16 = this.i15;
                     this.i15 = this.i14;
                     this.i14 = this.i19;
                     §§goto(addr10094);
                  }
                  else
                  {
                     this.i15 = 1;
                     this.i7 = this.i18;
                     this.i16 = this.i15;
                     this.i15 = this.i14;
                     this.i14 = this.i19;
                  }
                  §§goto(addr10173);
               }
            case 36:
               loop60:
               while(true)
               {
                  this.i0 = this.i1 + -1;
                  this.i0 = uint(this.i0) > uint(511)?512:int(this.i1);
                  if(this.i0 <= 0)
                  {
                     this.i0 = li32(mstate.ebp + -1575);
                     this.i1 = li32(mstate.ebp + -1467);
                  }
                  else
                  {
                     this.i1 = 0;
                     this.i3 = li32(FSM___svfscanf);
                     this.i3 = si8(li8(this.i3));
                     this.i4 = this.i1;
                     this.i8 = this.i1;
                     this.i9 = this.i4;
                     this.i10 = this.i1;
                     this.i11 = li32(mstate.ebp + -1467);
                     loop61:
                     while(true)
                     {
                        this.i12 = FSM___svfscanf;
                        this.i13 = li32(this.i6);
                        this.i14 = li8(this.i13);
                        this.i15 = this.i14 << 2;
                        this.i12 = this.i12 + this.i15;
                        this.i12 = this.i12 + 52;
                        this.i15 = li32(mstate.ebp + -1674);
                        this.i15 = this.i15 + this.i8;
                        this.i16 = this.i14;
                        loop62:
                        while(true)
                        {
                           this.i17 = this.i14 & 255;
                           if(this.i17 != 45)
                           {
                              while(true)
                              {
                                 if(this.i10 <= 3)
                                 {
                                    if(this.i10 <= 1)
                                    {
                                       if(this.i10 != 0)
                                       {
                                          if(this.i10 != 1)
                                          {
                                             addr12844:
                                             state = 37;
                                             mstate.esp = mstate.esp - 4;
                                             FSM___svfscanf.start();
                                             return;
                                          }
                                          if(this.i16 <= 77)
                                          {
                                             if(this.i16 != 48)
                                             {
                                                if(this.i16 != 73)
                                                {
                                                   addr12173:
                                                   this.i10 = 5;
                                                   continue;
                                                }
                                                addr11580:
                                                addr11580:
                                                this.i10 = 2;
                                             }
                                             else
                                             {
                                                this.i10 = 4;
                                                this.i11 = li32(mstate.ebp + -1674);
                                                this.i11 = this.i11 + this.i8;
                                             }
                                          }
                                          else
                                          {
                                             if(this.i16 != 78)
                                             {
                                                if(this.i16 != 105)
                                                {
                                                   if(this.i16 != 110)
                                                   {
                                                      §§goto(addr12173);
                                                   }
                                                }
                                                else
                                                {
                                                   addr11579:
                                                   §§goto(addr11580);
                                                }
                                             }
                                             this.i10 = 3;
                                          }
                                       }
                                       else
                                       {
                                          this.i10 = this.i14 & 255;
                                          if(this.i10 != 43)
                                          {
                                             this.i10 = 1;
                                             continue;
                                          }
                                          this.i10 = 1;
                                       }
                                    }
                                    else if(this.i10 != 2)
                                    {
                                       if(this.i10 != 3)
                                       {
                                          §§goto(addr12844);
                                       }
                                       else
                                       {
                                          addr11410:
                                          if(this.i1 <= 0)
                                          {
                                             if(this.i1 != -1)
                                             {
                                                if(this.i1 != 0)
                                                {
                                                   addr12367:
                                                   this.i12 = this.i14 & 255;
                                                   addr11459:
                                                   if(this.i12 == 41)
                                                   {
                                                      this.i11 = -2;
                                                      this.i1 = li32(mstate.ebp + -1674);
                                                      this.i12 = this.i1 + this.i8;
                                                      this.i1 = this.i11;
                                                      this.i11 = this.i12;
                                                   }
                                                   else
                                                   {
                                                      this.i12 = li32(FSM___svfscanf);
                                                      this.i16 = this.i16 << 2;
                                                      this.i12 = this.i12 + this.i16;
                                                      this.i12 = li32(this.i12 + 52);
                                                      this.i12 = this.i12 & 1280;
                                                      if(this.i12 == 0)
                                                      {
                                                         this.i12 = this.i14 & 255;
                                                         if(this.i12 != 95)
                                                         {
                                                            this.i0 = li32(mstate.ebp + -1674);
                                                            this.i0 = this.i0 + this.i8;
                                                            this.i1 = this.i11;
                                                         }
                                                      }
                                                      addr11455:
                                                   }
                                                   addr11459:
                                                   this.i1 = this.i1 + 1;
                                                }
                                                else
                                                {
                                                   this.i12 = this.i14 & 255;
                                                   if(this.i12 != 65)
                                                   {
                                                      this.i12 = this.i14 & 255;
                                                      if(this.i12 != 97)
                                                      {
                                                         this.i0 = li32(mstate.ebp + -1674);
                                                         this.i0 = this.i0 + this.i8;
                                                         this.i1 = this.i11;
                                                      }
                                                   }
                                                }
                                                §§goto(addr11459);
                                             }
                                             else
                                             {
                                                this.i0 = li32(mstate.ebp + -1674);
                                                this.i0 = this.i0 + this.i8;
                                                this.i1 = this.i11;
                                             }
                                          }
                                          else if(this.i1 != 1)
                                          {
                                             if(this.i1 != 2)
                                             {
                                                §§goto(addr12367);
                                             }
                                             else
                                             {
                                                this.i12 = this.i14 & 255;
                                                if(this.i12 != 40)
                                                {
                                                   this.i0 = li32(mstate.ebp + -1674);
                                                   this.i0 = this.i0 + this.i8;
                                                   this.i1 = this.i11;
                                                }
                                             }
                                             §§goto(addr11455);
                                          }
                                          else
                                          {
                                             this.i12 = this.i14 & 255;
                                             if(this.i12 != 78)
                                             {
                                                this.i12 = this.i14 & 255;
                                                if(this.i12 != 110)
                                                {
                                                   this.i0 = li32(mstate.ebp + -1674);
                                                   this.i0 = this.i0 + this.i8;
                                                   this.i1 = this.i11;
                                                }
                                             }
                                             this.i11 = li32(mstate.ebp + -1674);
                                             this.i11 = this.i11 + this.i8;
                                          }
                                          §§goto(addr11459);
                                       }
                                    }
                                    else
                                    {
                                       addr12196:
                                       if(this.i1 <= 6)
                                       {
                                          this.i12 = FSM___svfscanf;
                                          this.i12 = this.i12 + this.i1;
                                          this.i12 = si8(li8(this.i12));
                                          if(this.i16 != this.i12)
                                          {
                                             this.i12 = FSM___svfscanf;
                                             this.i12 = this.i12 + this.i1;
                                             this.i12 = si8(li8(this.i12));
                                             if(this.i16 != this.i12)
                                             {
                                                this.i0 = li32(mstate.ebp + -1674);
                                                this.i0 = this.i0 + this.i8;
                                                this.i1 = this.i11;
                                             }
                                          }
                                          if(this.i1 != 1)
                                          {
                                             if(this.i1 != 6)
                                             {
                                                this.i1 = this.i1 + 1;
                                             }
                                          }
                                          this.i11 = li32(mstate.ebp + -1674);
                                          this.i11 = this.i11 + this.i8;
                                          this.i1 = this.i1 + 1;
                                       }
                                       else
                                       {
                                          this.i0 = li32(mstate.ebp + -1674);
                                          this.i0 = this.i0 + this.i8;
                                          this.i1 = this.i11;
                                       }
                                    }
                                 }
                                 else if(this.i10 <= 5)
                                 {
                                    if(this.i10 != 4)
                                    {
                                       if(this.i10 != 5)
                                       {
                                          break;
                                       }
                                       this.i17 = this.i9 & 255;
                                       if(this.i17 != 0)
                                       {
                                          this.i17 = li32(this.i12);
                                          this.i17 = this.i17 & 65536;
                                          if(this.i17 != 0)
                                          {
                                             this.i4 = 1;
                                          }
                                          addr12578:
                                          this.i12 = this.i4 & 255;
                                          if(this.i12 != 0)
                                          {
                                             this.i11 = li32(mstate.ebp + -1674);
                                             this.i11 = this.i11 + this.i8;
                                          }
                                       }
                                       this.i17 = li32(this.i12);
                                       this.i17 = this.i17 & 1024;
                                       this.i10 = this.i17 == 0?6:int(this.i10);
                                       this.i18 = this.i17 == 0?int(this.i4):1;
                                       this.i17 = this.i17 != 0?1:0;
                                       if(this.i16 != this.i3)
                                       {
                                          this.i17 = this.i17 & 1;
                                          if(this.i17 == 0)
                                          {
                                             this.i10 = 6;
                                             continue;
                                          }
                                       }
                                       this.i4 = this.i18;
                                       §§goto(addr12578);
                                    }
                                    else
                                    {
                                       addr12473:
                                       this.i10 = this.i14 & 255;
                                       if(this.i10 != 88)
                                       {
                                          this.i10 = this.i14 & 255;
                                          if(this.i10 != 120)
                                          {
                                             this.i10 = 5;
                                             this.i4 = 1;
                                             continue loop62;
                                          }
                                       }
                                       this.i10 = 5;
                                       this.i9 = 1;
                                    }
                                 }
                                 else if(this.i10 != 6)
                                 {
                                    if(this.i10 != 7)
                                    {
                                       if(this.i10 == 8)
                                       {
                                          addr11524:
                                          this.i12 = li32(this.i12);
                                          this.i12 = this.i12 & 1024;
                                          if(this.i12 != 0)
                                          {
                                             this.i11 = li32(mstate.ebp + -1674);
                                             this.i11 = this.i11 + this.i8;
                                          }
                                          else
                                          {
                                             this.i0 = li32(mstate.ebp + -1674);
                                             this.i0 = this.i0 + this.i8;
                                             this.i1 = this.i11;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12844);
                                       }
                                    }
                                    else
                                    {
                                       this.i10 = this.i14 & 255;
                                       if(this.i10 != 43)
                                       {
                                          this.i10 = 8;
                                          continue;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    break loop62;
                                 }
                                 addr12896:
                                 while(true)
                                 {
                                    si8(this.i14,this.i15);
                                    this.i12 = li32(this.i5);
                                    this.i12 = this.i12 + -1;
                                    si32(this.i12,this.i5);
                                    this.i14 = this.i8 + 1;
                                    if(this.i12 >= 1)
                                    {
                                       this.i12 = this.i13 + 1;
                                       si32(this.i12,this.i6);
                                       if(this.i14 < this.i0)
                                       {
                                          addr12947:
                                          while(true)
                                          {
                                             this.i8 = this.i8 + 1;
                                             continue loop61;
                                          }
                                       }
                                       else
                                       {
                                          this.i0 = li32(mstate.ebp + -1674);
                                          this.i0 = this.i0 + this.i8;
                                          this.i0 = this.i0 + 1;
                                          this.i1 = this.i11;
                                       }
                                    }
                                    else
                                    {
                                       break loop61;
                                    }
                                 }
                              }
                              §§goto(addr12844);
                           }
                           else if(this.i16 == this.i3)
                           {
                              this.i17 = this.i9 & 255;
                              if(this.i17 != 0)
                              {
                                 while(true)
                                 {
                                    if(this.i10 <= 3)
                                    {
                                       if(this.i10 <= 1)
                                       {
                                          if(this.i10 != 0)
                                          {
                                             if(this.i10 != 1)
                                             {
                                                break;
                                             }
                                             if(this.i16 <= 77)
                                             {
                                                if(this.i16 != 48)
                                                {
                                                   if(this.i16 != 73)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr11580);
                                                }
                                                else
                                                {
                                                   this.i10 = 4;
                                                   this.i11 = li32(mstate.ebp + -1674);
                                                   this.i11 = this.i11 + this.i8;
                                                }
                                             }
                                             else if(this.i16 != 78)
                                             {
                                                if(this.i16 != 105)
                                                {
                                                   if(this.i16 != 110)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr11579);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.i10 = 1;
                                          }
                                       }
                                       else if(this.i10 != 2)
                                       {
                                          if(this.i10 != 3)
                                          {
                                             §§goto(addr12844);
                                          }
                                          else
                                          {
                                             §§goto(addr11410);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12196);
                                       }
                                    }
                                    else if(this.i10 <= 5)
                                    {
                                       if(this.i10 != 4)
                                       {
                                          if(this.i10 != 5)
                                          {
                                             §§goto(addr12844);
                                          }
                                          else
                                          {
                                             this.i16 = li32(this.i12);
                                             this.i16 = this.i16 & 65536;
                                             if(this.i16 != 0)
                                             {
                                                this.i4 = 1;
                                             }
                                             else
                                             {
                                                this.i12 = li32(this.i12);
                                                this.i12 = this.i12 & 1024;
                                                if(this.i12 != 0)
                                                {
                                                   addr11502:
                                                   this.i4 = 1;
                                                }
                                                else
                                                {
                                                   addr11603:
                                                   this.i10 = 6;
                                                }
                                             }
                                             §§goto(addr12578);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12473);
                                       }
                                    }
                                    else if(this.i10 != 6)
                                    {
                                       if(this.i10 != 7)
                                       {
                                          if(this.i10 == 8)
                                          {
                                             §§goto(addr11524);
                                          }
                                          else
                                          {
                                             §§goto(addr12844);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       break loop62;
                                    }
                                    §§goto(addr12896);
                                 }
                                 §§goto(addr12844);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(this.i10 <= 3)
                                    {
                                       if(this.i10 <= 1)
                                       {
                                          if(this.i10 != 0)
                                          {
                                             if(this.i10 != 1)
                                             {
                                                break;
                                             }
                                             if(this.i16 <= 77)
                                             {
                                                if(this.i16 != 48)
                                                {
                                                   if(this.i16 != 73)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr11580);
                                                }
                                                else
                                                {
                                                   this.i10 = 4;
                                                   this.i11 = li32(mstate.ebp + -1674);
                                                   this.i11 = this.i11 + this.i8;
                                                }
                                             }
                                             else
                                             {
                                                if(this.i16 != 78)
                                                {
                                                   if(this.i16 != 110)
                                                   {
                                                      if(this.i16 == 105)
                                                      {
                                                         §§goto(addr11580);
                                                      }
                                                      else
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                this.i10 = 3;
                                             }
                                          }
                                          else
                                          {
                                             this.i10 = 1;
                                          }
                                       }
                                       else if(this.i10 != 2)
                                       {
                                          if(this.i10 != 3)
                                          {
                                             §§goto(addr12844);
                                          }
                                          else
                                          {
                                             §§goto(addr11410);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12196);
                                       }
                                    }
                                    else if(this.i10 <= 5)
                                    {
                                       if(this.i10 != 4)
                                       {
                                          if(this.i10 != 5)
                                          {
                                             §§goto(addr12844);
                                          }
                                          else
                                          {
                                             this.i12 = li32(this.i12);
                                             this.i12 = this.i12 & 1024;
                                             if(this.i12 != 0)
                                             {
                                                §§goto(addr11502);
                                             }
                                             else
                                             {
                                                §§goto(addr11603);
                                             }
                                             §§goto(addr12578);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12473);
                                       }
                                    }
                                    else if(this.i10 != 6)
                                    {
                                       if(this.i10 != 7)
                                       {
                                          if(this.i10 == 8)
                                          {
                                             §§goto(addr11524);
                                          }
                                          else
                                          {
                                             §§goto(addr12844);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       break loop62;
                                    }
                                    §§goto(addr12896);
                                 }
                                 §§goto(addr12844);
                              }
                              addr11558:
                              this.i10 = 8;
                              §§goto(addr12896);
                           }
                           else
                           {
                              this.i17 = this.i9 & 255;
                              if(this.i17 != 0)
                              {
                                 while(true)
                                 {
                                    if(this.i10 <= 3)
                                    {
                                       if(this.i10 <= 1)
                                       {
                                          if(this.i10 != 0)
                                          {
                                             if(this.i10 != 1)
                                             {
                                                §§goto(addr12844);
                                             }
                                             else if(this.i16 <= 77)
                                             {
                                                if(this.i16 != 48)
                                                {
                                                   if(this.i16 != 73)
                                                   {
                                                      addr12016:
                                                      this.i10 = 5;
                                                      continue;
                                                   }
                                                   §§goto(addr11579);
                                                }
                                                else
                                                {
                                                   this.i10 = 4;
                                                   this.i11 = li32(mstate.ebp + -1674);
                                                   this.i11 = this.i11 + this.i8;
                                                }
                                             }
                                             else
                                             {
                                                if(this.i16 != 78)
                                                {
                                                   if(this.i16 != 105)
                                                   {
                                                      if(this.i16 != 110)
                                                      {
                                                         §§goto(addr12016);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr11579);
                                                   }
                                                }
                                                this.i10 = 3;
                                             }
                                          }
                                          else
                                          {
                                             this.i10 = 1;
                                          }
                                       }
                                       else if(this.i10 != 2)
                                       {
                                          if(this.i10 != 3)
                                          {
                                             §§goto(addr12844);
                                          }
                                          else
                                          {
                                             §§goto(addr11410);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12196);
                                       }
                                    }
                                    else if(this.i10 <= 5)
                                    {
                                       if(this.i10 != 4)
                                       {
                                          if(this.i10 != 5)
                                          {
                                             break;
                                          }
                                          this.i17 = li32(this.i12);
                                          this.i17 = this.i17 & 65536;
                                          if(this.i17 != 0)
                                          {
                                             this.i4 = 1;
                                          }
                                          else
                                          {
                                             this.i17 = li32(this.i12);
                                             this.i17 = this.i17 & 1024;
                                             if(this.i17 != 0)
                                             {
                                                §§goto(addr11502);
                                             }
                                             else
                                             {
                                                this.i10 = 6;
                                                continue;
                                             }
                                          }
                                          §§goto(addr12578);
                                       }
                                       else
                                       {
                                          §§goto(addr12473);
                                       }
                                    }
                                    else if(this.i10 != 6)
                                    {
                                       if(this.i10 != 7)
                                       {
                                          if(this.i10 == 8)
                                          {
                                             §§goto(addr11524);
                                          }
                                          else
                                          {
                                             §§goto(addr12844);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       break loop62;
                                    }
                                    §§goto(addr12896);
                                 }
                                 §§goto(addr12844);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(this.i10 <= 3)
                                    {
                                       if(this.i10 <= 1)
                                       {
                                          if(this.i10 != 0)
                                          {
                                             if(this.i10 != 1)
                                             {
                                                §§goto(addr12844);
                                             }
                                             else if(this.i16 <= 77)
                                             {
                                                if(this.i16 != 48)
                                                {
                                                   if(this.i16 != 73)
                                                   {
                                                      addr11911:
                                                      this.i10 = 5;
                                                      continue;
                                                   }
                                                   §§goto(addr11579);
                                                }
                                                else
                                                {
                                                   this.i10 = 4;
                                                   this.i11 = li32(mstate.ebp + -1674);
                                                   this.i11 = this.i11 + this.i8;
                                                }
                                             }
                                             else
                                             {
                                                if(this.i16 != 78)
                                                {
                                                   if(this.i16 != 105)
                                                   {
                                                      if(this.i16 != 110)
                                                      {
                                                         §§goto(addr11911);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr11579);
                                                   }
                                                }
                                                this.i10 = 3;
                                             }
                                          }
                                          else
                                          {
                                             this.i10 = 1;
                                          }
                                       }
                                       else if(this.i10 != 2)
                                       {
                                          if(this.i10 != 3)
                                          {
                                             §§goto(addr12844);
                                          }
                                          else
                                          {
                                             §§goto(addr11410);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12196);
                                       }
                                    }
                                    else if(this.i10 <= 5)
                                    {
                                       if(this.i10 != 4)
                                       {
                                          if(this.i10 != 5)
                                          {
                                             §§goto(addr12844);
                                          }
                                          else
                                          {
                                             this.i17 = li32(this.i12);
                                             this.i17 = this.i17 & 1024;
                                             if(this.i17 != 0)
                                             {
                                                §§goto(addr11502);
                                             }
                                             else
                                             {
                                                this.i10 = 6;
                                                continue;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr12473);
                                       }
                                    }
                                    else if(this.i10 != 6)
                                    {
                                       if(this.i10 != 7)
                                       {
                                          if(this.i10 == 8)
                                          {
                                             §§goto(addr11524);
                                          }
                                          else
                                          {
                                             §§goto(addr12844);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       break loop62;
                                    }
                                    §§goto(addr12896);
                                 }
                              }
                           }
                           §§goto(addr11558);
                        }
                        this.i16 = this.i14 << 24;
                        this.i16 = this.i16 >> 24;
                        if(this.i16 <= 100)
                        {
                           this.i16 = this.i14 & 255;
                           if(this.i16 != 69)
                           {
                              this.i16 = this.i14 & 255;
                              if(this.i16 != 80)
                              {
                                 addr12649:
                                 this.i4 = this.i9 & 255;
                                 if(this.i4 != 0)
                                 {
                                    this.i4 = li32(this.i12);
                                    this.i4 = this.i4 & 65536;
                                    if(this.i4 != 0)
                                    {
                                       this.i11 = 1;
                                       this.i4 = li32(mstate.ebp + -1674);
                                       this.i12 = this.i4 + this.i8;
                                       this.i4 = this.i11;
                                       this.i11 = this.i12;
                                       §§goto(addr12896);
                                    }
                                 }
                              }
                              addr12787:
                              this.i4 = li32(this.i12);
                              this.i4 = this.i4 & 1024;
                              if(this.i4 != 0)
                              {
                                 this.i11 = 1;
                                 this.i4 = li32(mstate.ebp + -1674);
                                 this.i12 = this.i4 + this.i8;
                                 this.i4 = this.i11;
                                 this.i11 = this.i12;
                                 §§goto(addr12896);
                              }
                              else
                              {
                                 this.i0 = li32(mstate.ebp + -1674);
                                 this.i0 = this.i0 + this.i8;
                                 this.i1 = this.i11;
                              }
                           }
                           else
                           {
                              addr12727:
                              this.i16 = this.i9 & 255;
                              if(this.i16 != 0)
                              {
                                 this.i16 = this.i14 & 255;
                                 if(this.i16 != 80)
                                 {
                                    this.i16 = this.i14 & 255;
                                    if(this.i16 != 112)
                                    {
                                       addr12648:
                                       §§goto(addr12649);
                                    }
                                    §§goto(addr12787);
                                 }
                              }
                           }
                           addr12772:
                           this.i10 = this.i4 & 255;
                           if(this.i10 != 0)
                           {
                              this.i10 = 7;
                              §§goto(addr12896);
                           }
                           else
                           {
                              this.i0 = li32(mstate.ebp + -1674);
                              this.i0 = this.i0 + this.i8;
                              this.i1 = this.i11;
                           }
                        }
                        else
                        {
                           this.i16 = this.i14 & 255;
                           if(this.i16 != 112)
                           {
                              this.i16 = this.i14 & 255;
                              if(this.i16 == 101)
                              {
                                 §§goto(addr12727);
                              }
                              §§goto(addr12648);
                           }
                        }
                        this.i16 = this.i9 & 255;
                        if(this.i16 != 0)
                        {
                           §§goto(addr12772);
                        }
                        else
                        {
                           §§goto(addr12787);
                        }
                     }
                     mstate.esp = mstate.esp - 4;
                     this.i12 = li32(mstate.ebp + -1656);
                     si32(this.i12,mstate.esp);
                     state = 38;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
                  addr13209:
                  while(true)
                  {
                     this.i3 = this.i0;
                     this.i4 = this.i0 + -1;
                     if(uint(this.i4) > uint(this.i1))
                     {
                        this.i4 = 0;
                        this.i3 = this.i3 + -1;
                        addr13240:
                        this.i8 = this.i4 ^ -1;
                        this.i8 = this.i0 + this.i8;
                        this.i8 = li8(this.i8);
                        mstate.esp = mstate.esp - 8;
                        si32(this.i8,mstate.esp);
                        this.i8 = li32(mstate.ebp + -1656);
                        si32(this.i8,mstate.esp + 4);
                        state = 39;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                     addr13325:
                     while(true)
                     {
                        this.i0 = 0;
                        this.i3 = this.i1 + 1;
                        si8(this.i0,this.i1 + 1);
                        this.i0 = li32(mstate.ebp + -1674);
                        this.i0 = this.i3 - this.i0;
                        si32(this.i0,mstate.ebp + -1485);
                        this.i0 = li32(mstate.ebp + -1575);
                        if(this.i3 != this.i0)
                        {
                           this.i0 = this.i7 & 8;
                           if(this.i0 == 0)
                           {
                              this.i0 = this.i7 & 2;
                              if(this.i0 != 0)
                              {
                                 this.i0 = FSM___svfscanf;
                                 this.i7 = 4;
                                 this.i1 = this.i7;
                                 log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                                 this.i0 = li32(mstate.ebp + -1602);
                                 this.i0 = li32(this.i0);
                                 this.i7 = -1074790400;
                                 this.i1 = 0;
                                 si32(this.i1,this.i0);
                                 si32(this.i7,this.i0 + 4);
                              }
                              else
                              {
                                 this.i0 = this.i7 & 1;
                                 if(this.i0 != 0)
                                 {
                                    this.i0 = mstate.ebp + -1252;
                                    mstate.esp = mstate.esp - 8;
                                    this.i1 = li32(mstate.ebp + -1575);
                                    si32(this.i1,mstate.esp);
                                    si32(this.i0,mstate.esp + 4);
                                    state = 40;
                                    mstate.esp = mstate.esp - 4;
                                    FSM___svfscanf.start();
                                    return;
                                 }
                                 this.i0 = 0;
                                 si32(this.i0,mstate.ebp + -312);
                                 si32(this.i0,mstate.ebp + -296);
                                 this.i0 = li32(FSM___svfscanf);
                                 this.i1 = li32(mstate.ebp + -1575);
                                 si32(this.i1,mstate.ebp + -300);
                                 this.i1 = si8(li8(this.i1));
                                 if(this.i1 <= 31)
                                 {
                                    if(this.i1 != 0)
                                    {
                                       this.i1 = this.i1 + -9;
                                       if(uint(this.i1) >= uint(5))
                                       {
                                          addr13750:
                                          this.i1 = 0;
                                          addr13817:
                                          this.i3 = li32(mstate.ebp + -1575);
                                          si32(this.i1,mstate.ebp + -1548);
                                          this.i1 = li8(this.i3);
                                          if(this.i1 != 48)
                                          {
                                             this.i1 = 0;
                                          }
                                          else
                                          {
                                             this.i1 = si8(li8(this.i3 + 1));
                                             if(this.i1 != 88)
                                             {
                                                if(this.i1 != 120)
                                                {
                                                   this.i1 = this.i3;
                                                   while(true)
                                                   {
                                                      this.i3 = this.i1 + 1;
                                                      si32(this.i3,mstate.ebp + -300);
                                                      this.i1 = li8(this.i1 + 1);
                                                      if(this.i1 != 0)
                                                      {
                                                         this.i1 = this.i1 & 255;
                                                         if(this.i1 == 48)
                                                         {
                                                            this.i1 = this.i3;
                                                            continue;
                                                         }
                                                         this.i1 = 1;
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      this.i1 = li32(mstate.ebp + -1548);
                                                   }
                                                }
                                                else
                                                {
                                                   break loop60;
                                                }
                                             }
                                             break loop60;
                                          }
                                          this.i4 = li8(this.i3);
                                          this.i7 = li32(FSM___svfscanf + 16);
                                          si32(this.i7,mstate.ebp + -1584);
                                          this.i7 = this.i4 << 24;
                                          this.i7 = this.i7 >> 24;
                                          this.i8 = this.i4 + -48;
                                          addr14260:
                                          this.i8 = this.i8 & 255;
                                          if(uint(this.i8) >= uint(10))
                                          {
                                             this.i8 = 0;
                                             this.i9 = this.i8;
                                             this.i10 = this.i8;
                                          }
                                          else
                                          {
                                             this.i4 = 0;
                                             this.i8 = this.i4;
                                             this.i9 = this.i3;
                                             this.i10 = this.i4;
                                             while(true)
                                             {
                                                if(this.i8 <= 8)
                                                {
                                                   this.i10 = this.i10 * 10;
                                                   this.i7 = this.i10 + this.i7;
                                                   this.i7 = this.i7 + -48;
                                                }
                                                else if(this.i8 >= 16)
                                                {
                                                   this.i7 = this.i10;
                                                }
                                                else
                                                {
                                                   this.i4 = this.i4 * 10;
                                                   this.i4 = this.i7 + this.i4;
                                                   this.i4 = this.i4 + -48;
                                                   this.i7 = this.i10;
                                                }
                                                this.i10 = this.i9 + 1;
                                                si32(this.i10,mstate.ebp + -300);
                                                this.i11 = li8(this.i9 + 1);
                                                this.i9 = this.i11 << 24;
                                                this.i12 = this.i9 >> 24;
                                                this.i8 = this.i8 + 1;
                                                this.i9 = this.i11 + -48;
                                                this.i9 = this.i9 & 255;
                                                if(uint(this.i9) >= uint(10))
                                                {
                                                   break;
                                                }
                                                this.i9 = this.i10;
                                                this.i10 = this.i7;
                                                this.i7 = this.i12;
                                             }
                                             this.i9 = this.i8;
                                             this.i10 = this.i7;
                                             this.i8 = this.i4;
                                             this.i4 = this.i11;
                                             this.i7 = this.i12;
                                          }
                                          mstate.esp = mstate.esp - 4;
                                          FSM___svfscanf.start();
                                       }
                                       addr25471:
                                       while(true)
                                       {
                                          this.i3 = li32(mstate.ebp + -300);
                                          si32(this.i3,mstate.ebp + -1252);
                                          if(this.i1 != 0)
                                          {
                                             this.i1 = li32(mstate.ebp + -312);
                                             this.i1 = this.i1 | 8;
                                             si32(this.i1,mstate.ebp + -312);
                                          }
                                          this.i1 = li32(mstate.ebp + -296);
                                          this.i3 = this.i1;
                                          if(this.i1 != 0)
                                          {
                                             this.i4 = mstate.ebp + -328;
                                             this.i0 = this.i0 + -1;
                                             this.i0 = this.i0 >> 5;
                                             this.i0 = this.i0 << 2;
                                             this.i0 = this.i0 + this.i4;
                                             this.i3 = li32(this.i3 + 16);
                                             this.i0 = this.i0 + 4;
                                             if(this.i3 <= 0)
                                             {
                                                this.i1 = li32(mstate.ebp + -1476);
                                             }
                                             else
                                             {
                                                this.i4 = 0;
                                                this.i7 = this.i4;
                                                while(true)
                                                {
                                                   this.i8 = this.i1 + this.i7;
                                                   this.i8 = li32(this.i8 + 20);
                                                   this.i9 = li32(mstate.ebp + -1494);
                                                   this.i9 = this.i9 + this.i7;
                                                   si32(this.i8,this.i9);
                                                   this.i7 = this.i7 + 4;
                                                   this.i4 = this.i4 + 1;
                                                   if(this.i4 < this.i3)
                                                   {
                                                      continue;
                                                   }
                                                   break;
                                                }
                                                this.i1 = mstate.ebp + -328;
                                                this.i3 = this.i4 << 2;
                                                this.i1 = this.i1 + this.i3;
                                             }
                                             this.i3 = this.i1;
                                             if(uint(this.i1) < uint(this.i0))
                                             {
                                                this.i1 = this.i3;
                                                while(true)
                                                {
                                                   this.i4 = 0;
                                                   si32(this.i4,this.i1);
                                                   this.i1 = this.i1 + 4;
                                                   if(uint(this.i1) < uint(this.i0))
                                                   {
                                                      continue;
                                                   }
                                                   break;
                                                }
                                             }
                                             this.i0 = li32(mstate.ebp + -296);
                                             if(this.i0 != 0)
                                             {
                                                this.i1 = FSM___svfscanf;
                                                this.i3 = li32(this.i0 + 4);
                                                this.i3 = this.i3 << 2;
                                                this.i1 = this.i1 + this.i3;
                                                this.i3 = li32(this.i1);
                                                si32(this.i3,this.i0);
                                                si32(this.i0,this.i1);
                                             }
                                          }
                                          this.i0 = li32(mstate.ebp + -312);
                                          this.i1 = this.i0 & 8;
                                          this.i0 = this.i0 & 7;
                                          if(this.i0 <= 2)
                                          {
                                             if(this.i0 != 0)
                                             {
                                                if(this.i0 != 1)
                                                {
                                                   if(this.i0 != 2)
                                                   {
                                                      addr26016:
                                                      this.f0 = FSM___svfscanf;
                                                      this.f1 = FSM___svfscanf;
                                                      this.f0 = this.f0;
                                                      this.f1 = this.f1;
                                                      this.f1 = this.f1;
                                                      this.f0 = this.f0;
                                                      this.f0 = this.i1 == 0?Number(this.f0):Number(this.f1);
                                                      this.f0 = this.f0;
                                                   }
                                                   else
                                                   {
                                                      this.i0 = li32(mstate.ebp + -1476);
                                                      this.i0 = li32(this.i0);
                                                      this.i1 = this.i1 == 0?0:-2147483648;
                                                      this.i0 = this.i0 | this.i1;
                                                      si32(this.i0,mstate.ebp + -1416);
                                                      this.f0 = lf32(mstate.ebp + -1416);
                                                   }
                                                }
                                                else
                                                {
                                                   addr25898:
                                                   this.i0 = li32(mstate.ebp + -1476);
                                                   this.i0 = li32(this.i0);
                                                   this.i3 = li32(mstate.ebp + -324);
                                                   this.i3 = this.i3 << 23;
                                                   this.i1 = this.i1 == 0?0:-2147483648;
                                                   this.i0 = this.i0 & 8388607;
                                                   this.i0 = this.i0 | this.i1;
                                                   this.i1 = this.i3 + 1258291200;
                                                   this.i0 = this.i0 | this.i1;
                                                   si32(this.i0,mstate.ebp + -1412);
                                                   this.f0 = lf32(mstate.ebp + -1412);
                                                }
                                             }
                                             else
                                             {
                                                addr25858:
                                                this.f0 = 0;
                                                this.f1 = 0;
                                                this.f0 = this.f0;
                                                this.f1 = this.f1;
                                                this.f1 = this.f1;
                                                this.f0 = this.f0;
                                                this.f0 = this.i1 == 0?Number(this.f0):Number(this.f1);
                                                this.f0 = this.f0;
                                             }
                                          }
                                          else if(this.i0 != 3)
                                          {
                                             if(this.i0 != 5)
                                             {
                                                if(this.i0 == 6)
                                                {
                                                   §§goto(addr25858);
                                                }
                                                else
                                                {
                                                   §§goto(addr26016);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr25898);
                                             }
                                          }
                                          else
                                          {
                                             this.f0 = FSM___svfscanf;
                                             this.f1 = -FSM___svfscanf;
                                             this.f0 = this.f0;
                                             this.f1 = this.f1;
                                             this.f1 = this.f1;
                                             this.f0 = this.f0;
                                             this.f0 = this.i1 == 0?Number(this.f0):Number(this.f1);
                                             this.f0 = this.f0;
                                          }
                                          this.i0 = li32(mstate.ebp + -1602);
                                          this.i0 = li32(this.i0);
                                          sf32(this.f0,this.i0);
                                       }
                                    }
                                    addr13761:
                                    this.i1 = 6;
                                    si32(this.i1,mstate.ebp + -312);
                                    this.i1 = li32(mstate.ebp + -1575);
                                    si32(this.i1,mstate.ebp + -300);
                                    this.i1 = 0;
                                    §§goto(addr25471);
                                 }
                                 else
                                 {
                                    if(this.i1 != 32)
                                    {
                                       if(this.i1 != 43)
                                       {
                                          if(this.i1 == 45)
                                          {
                                             this.i1 = li32(mstate.ebp + -1575);
                                             addr13694:
                                             this.i4 = 1;
                                             this.i3 = this.i1;
                                             this.i1 = this.i4;
                                          }
                                          else
                                          {
                                             §§goto(addr13750);
                                          }
                                          §§goto(addr13817);
                                       }
                                       else
                                       {
                                          this.i1 = 0;
                                          this.i3 = li32(mstate.ebp + -1575);
                                       }
                                    }
                                    addr13719:
                                    this.i4 = this.i3 + 1;
                                    si32(this.i4,mstate.ebp + -300);
                                    this.i3 = li8(this.i3 + 1);
                                    if(this.i3 != 0)
                                    {
                                       this.i3 = this.i4;
                                       §§goto(addr13817);
                                    }
                                    else
                                    {
                                       §§goto(addr13761);
                                    }
                                    §§goto(addr25471);
                                 }
                                 this.i1 = li32(mstate.ebp + -1575);
                                 while(true)
                                 {
                                    this.i3 = this.i1 + 1;
                                    si32(this.i3,mstate.ebp + -300);
                                    this.i1 = si8(li8(this.i1 + 1));
                                    if(this.i1 <= 31)
                                    {
                                       if(this.i1 != 0)
                                       {
                                          this.i1 = this.i1 + -9;
                                          if(uint(this.i1) >= uint(5))
                                          {
                                             addr13814:
                                             this.i1 = 0;
                                             §§goto(addr13817);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr13761);
                                       }
                                    }
                                    else if(this.i1 != 32)
                                    {
                                       if(this.i1 != 43)
                                       {
                                          if(this.i1 == 45)
                                          {
                                             this.i1 = this.i3;
                                             §§goto(addr13694);
                                          }
                                          else
                                          {
                                             §§goto(addr13814);
                                          }
                                          §§goto(addr13817);
                                       }
                                       else
                                       {
                                          this.i1 = 0;
                                       }
                                       §§goto(addr13719);
                                    }
                                    this.i1 = this.i3;
                                 }
                                 §§goto(addr25471);
                              }
                              addr26074:
                              while(true)
                              {
                                 this.i0 = li32(mstate.ebp + -1512);
                                 this.i0 = this.i0 + 1;
                                 this.i3 = li32(mstate.ebp + -1485);
                                 this.i1 = li32(mstate.ebp + -1539);
                                 this.i1 = this.i3 + this.i1;
                                 this.i3 = li32(mstate.ebp + -1566);
                                 this.i3 = this.i3 + 1;
                                 this.i4 = li32(mstate.ebp + -1602);
                                 this.i9 = this.i4 + 4;
                                 this.i4 = li32(mstate.ebp + -1530);
                                 this.i7 = this.i1;
                                 this.i8 = this.i0;
                                 this.i1 = this.i3;
                                 this.i0 = li32(mstate.ebp + -1503);
                                 this.i3 = this.i9;
                              }
                           }
                           else
                           {
                              this.i0 = li32(mstate.ebp + -1512);
                              this.i0 = this.i0 + 1;
                              this.i3 = li32(mstate.ebp + -1485);
                              this.i1 = li32(mstate.ebp + -1539);
                              this.i1 = this.i3 + this.i1;
                              this.i3 = li32(mstate.ebp + -1530);
                              this.i4 = this.i3;
                              this.i7 = this.i1;
                              this.i8 = this.i0;
                              this.i0 = li32(mstate.ebp + -1566);
                              this.i1 = this.i0;
                              this.i0 = li32(mstate.ebp + -1503);
                              this.i3 = li32(mstate.ebp + -1602);
                           }
                           §§goto(addr319);
                        }
                        §§goto(addr8284);
                     }
                  }
               }
               this.i1 = FSM___svfscanf;
               mstate.esp = mstate.esp - 20;
               this.i3 = mstate.ebp + -296;
               this.i4 = mstate.ebp + -324;
               this.i7 = mstate.ebp + -300;
               si32(this.i7,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               this.i1 = li32(mstate.ebp + -1548);
               si32(this.i1,mstate.esp + 16);
               state = 41;
               mstate.esp = mstate.esp - 4;
               FSM___svfscanf.start();
               return;
            case 37:
               while(true)
               {
                  this.i10 = 3;
                  §§goto(addr12896);
               }
            case 38:
               this.i12 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i12 == 0)
               {
                  if(this.i14 >= this.i0)
                  {
                  }
                  §§goto(addr12947);
               }
               this.i0 = li32(mstate.ebp + -1674);
               this.i0 = this.i0 + this.i8;
               this.i0 = this.i0 + 1;
               this.i1 = this.i11;
               §§goto(addr13209);
            case 39:
               mstate.esp = mstate.esp + 8;
               this.i3 = this.i3 + -1;
               this.i4 = this.i4 + 1;
               if(uint(this.i3) <= uint(this.i1))
               {
                  §§goto(addr13325);
               }
               §§goto(addr13240);
            case 40:
               this.f0 = mstate.st0;
               mstate.esp = mstate.esp + 8;
               this.i0 = li32(mstate.ebp + -1602);
               this.i0 = li32(this.i0);
               sf64(this.f0,this.i0);
               §§goto(addr26074);
            case 41:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 20;
               si32(this.i1,mstate.ebp + -312);
               if(this.i1 != 6)
               {
                  §§goto(addr14012);
               }
               else
               {
                  this.i1 = 0;
                  this.i3 = li32(mstate.ebp + -1575);
                  si32(this.i3,mstate.ebp + -300);
               }
               §§goto(addr25471);
            case 42:
               while(true)
               {
                  this.i11 = li32(FSM___svfscanf);
                  this.i11 = li8(this.i11);
                  this.i4 = this.i4 & 255;
                  if(this.i11 != this.i4)
                  {
                     this.i4 = 0;
                     this.i11 = this.i9;
                     this.i12 = this.i4;
                  }
                  else
                  {
                     this.i4 = li32(mstate.ebp + -300);
                     this.i7 = this.i4 + 1;
                     si32(this.i7,mstate.ebp + -300);
                     this.i4 = li8(this.i4 + 1);
                     this.i11 = this.i4 << 24;
                     this.i11 = this.i11 >> 24;
                     if(this.i9 != 0)
                     {
                        this.i4 = 0;
                        this.i12 = this.i9;
                        this.i13 = this.i4;
                        addr14906:
                        while(true)
                        {
                           this.i14 = this.i12;
                           this.i15 = this.i13;
                           this.i16 = this.i4;
                           this.i17 = this.i3;
                           this.i3 = this.i11 + -48;
                           if(uint(this.i3) >= uint(10))
                           {
                              this.i7 = this.i11;
                              this.i11 = this.i14;
                              this.i12 = this.i15;
                              this.i4 = this.i16;
                              this.i3 = this.i17;
                              break;
                           }
                           this.i12 = this.i7;
                           this.i13 = this.i14;
                           this.i4 = this.i15;
                           this.i3 = this.i16;
                           this.i7 = this.i17;
                        }
                     }
                     else
                     {
                        this.i4 = this.i4 & 255;
                        if(this.i4 != 48)
                        {
                           this.i4 = 0;
                        }
                        else
                        {
                           this.i4 = 0;
                           while(true)
                           {
                              this.i11 = this.i7 + 1;
                              si32(this.i11,mstate.ebp + -300);
                              this.i7 = li8(this.i7 + 1);
                              this.i4 = this.i4 + 1;
                              if(this.i7 == 48)
                              {
                                 this.i7 = this.i11;
                                 continue;
                              }
                              break;
                           }
                           this.i7 = this.i7 << 24;
                           this.i12 = this.i7 >> 24;
                           this.i7 = this.i11;
                           this.i11 = this.i12;
                        }
                        this.i12 = this.i11 + -49;
                        if(uint(this.i12) >= uint(9))
                        {
                           this.i12 = 0;
                           this.i7 = this.i11;
                           this.i11 = this.i9;
                        }
                        else
                        {
                           this.i3 = 0;
                           this.i12 = this.i7;
                           this.i13 = this.i9;
                        }
                     }
                     while(true)
                     {
                        this.i14 = this.i7;
                        this.i7 = this.i10;
                        this.i10 = this.i12;
                        this.i12 = this.i13;
                        while(true)
                        {
                           this.i13 = this.i11 + -48;
                           this.i15 = this.i3 + 1;
                           if(this.i11 == 48)
                           {
                              this.i3 = this.i12;
                              this.i12 = this.i15;
                              break;
                           }
                           this.i11 = this.i12 < 9?1:0;
                           this.i4 = this.i15 + this.i4;
                           if(this.i15 <= 1)
                           {
                              this.i3 = this.i7;
                              this.i7 = this.i8;
                              this.i8 = this.i11;
                           }
                           else
                           {
                              this.i15 = 0;
                              this.i16 = this.i12 + 1;
                              while(true)
                              {
                                 this.i11 = this.i11 ^ 1;
                                 this.i17 = this.i16 + this.i15;
                                 this.i11 = this.i11 & 1;
                                 if(this.i11 == 0)
                                 {
                                    this.i7 = this.i7 * 10;
                                 }
                                 else if(this.i17 < 17)
                                 {
                                    this.i8 = this.i8 * 10;
                                 }
                                 this.i11 = this.i17 < 9?1:0;
                                 this.i15 = this.i15 + 1;
                                 if(this.i15 != this.i3)
                                 {
                                    continue;
                                 }
                                 break;
                              }
                              this.i12 = this.i3 + this.i12;
                              this.i3 = this.i7;
                              this.i7 = this.i8;
                              this.i8 = this.i11;
                           }
                           this.i11 = this.i3;
                           this.i15 = this.i7;
                           this.i3 = this.i8;
                           this.i7 = this.i12;
                           this.i3 = this.i3 ^ 1;
                           this.i8 = this.i7 + 1;
                           this.i3 = this.i3 & 1;
                           if(this.i3 == 0)
                           {
                              this.i3 = this.i10 + 1;
                              si32(this.i3,mstate.ebp + -300);
                              this.i7 = this.i11 * 10;
                              this.i11 = si8(li8(this.i10 + 1));
                              this.i13 = this.i7 + this.i13;
                              this.i7 = this.i11 + -48;
                              if(uint(this.i7) >= uint(10))
                              {
                                 this.i3 = 0;
                                 this.i7 = this.i11;
                                 this.i11 = this.i8;
                                 this.i12 = this.i4;
                                 this.i4 = this.i3;
                                 this.i3 = this.i14;
                                 this.i10 = this.i13;
                                 this.i8 = this.i15;
                              }
                              else
                              {
                                 this.i7 = 0;
                                 this.i10 = this.i3;
                                 this.i12 = this.i8;
                                 this.i3 = this.i7;
                                 this.i7 = this.i13;
                                 this.i8 = this.i15;
                                 continue;
                              }
                           }
                           else
                           {
                              if(this.i8 >= 17)
                              {
                                 this.i7 = 0;
                                 this.i3 = this.i8;
                                 this.i12 = this.i7;
                                 this.i7 = this.i11;
                                 this.i8 = this.i15;
                                 break;
                              }
                              this.i7 = 0;
                              this.i3 = this.i15 * 10;
                              this.i13 = this.i3 + this.i13;
                              this.i3 = this.i8;
                              this.i12 = this.i7;
                              this.i7 = this.i11;
                              this.i8 = this.i13;
                              break;
                           }
                        }
                        this.i15 = this.i12;
                        this.i16 = this.i7;
                        this.i7 = this.i10 + 1;
                        si32(this.i7,mstate.ebp + -300);
                        this.i10 = si8(li8(this.i10 + 1));
                        this.i11 = this.i10;
                        this.i12 = this.i3;
                        this.i13 = this.i4;
                        this.i4 = this.i15;
                        this.i3 = this.i14;
                        this.i10 = this.i16;
                        §§goto(addr14906);
                     }
                  }
                  if(this.i7 != 69)
                  {
                     if(this.i7 != 101)
                     {
                        this.i13 = 0;
                        this.i14 = li32(mstate.ebp + -1575);
                        addr14981:
                        if(this.i11 != 0)
                        {
                           break;
                        }
                        this.i3 = this.i14;
                     }
                     addr15567:
                     this.i8 = this.i7;
                     addr14011:
                     if(this.i4 == 0)
                     {
                        if(this.i1 == 0)
                        {
                           if(this.i8 <= 104)
                           {
                              if(this.i8 != 73)
                              {
                                 if(this.i8 != 78)
                                 {
                                 }
                              }
                              else
                              {
                                 addr15724:
                                 this.i1 = FSM___svfscanf;
                                 this.i8 = li32(mstate.ebp + -300);
                                 this.i4 = 110;
                                 this.i7 = 0;
                                 this.i9 = this.i8;
                                 while(true)
                                 {
                                    this.i10 = this.i9 + this.i7;
                                    this.i10 = li8(this.i10 + 1);
                                    this.i11 = this.i10 << 24;
                                    this.i11 = this.i11 >> 24;
                                    this.i10 = this.i10 + -65;
                                    this.i4 = this.i4 << 24;
                                    this.i10 = this.i10 & 255;
                                    this.i12 = this.i11 + 32;
                                    this.i10 = uint(this.i10) > uint(25)?int(this.i11):int(this.i12);
                                    this.i4 = this.i4 >> 24;
                                    if(this.i10 != this.i4)
                                    {
                                       this.i1 = 1;
                                       this.i7 = this.i8;
                                       break;
                                    }
                                    this.i4 = this.i1 + this.i7;
                                    this.i4 = li8(this.i4 + 1);
                                    this.i7 = this.i7 + 1;
                                    if(this.i4 != 0)
                                    {
                                       continue;
                                    }
                                    this.i1 = 0;
                                    this.i7 = this.i7 << 0;
                                    this.i7 = this.i7 + this.i8;
                                    this.i7 = this.i7 + 1;
                                    si32(this.i7,mstate.ebp + -300);
                                    break;
                                 }
                                 this.i8 = this.i7;
                                 this.i1 = this.i1 & 1;
                                 this.i4 = this.i8;
                                 if(this.i1 == 0)
                                 {
                                    this.i1 = FSM___svfscanf;
                                    this.i3 = this.i8 + -1;
                                    si32(this.i3,mstate.ebp + -300);
                                    this.i7 = 105;
                                    this.i9 = 0;
                                    while(true)
                                    {
                                       this.i10 = this.i4 + this.i9;
                                       this.i10 = li8(this.i10);
                                       this.i11 = this.i10 << 24;
                                       this.i11 = this.i11 >> 24;
                                       this.i10 = this.i10 + -65;
                                       this.i7 = this.i7 << 24;
                                       this.i10 = this.i10 & 255;
                                       this.i12 = this.i11 + 32;
                                       this.i10 = uint(this.i10) > uint(25)?int(this.i11):int(this.i12);
                                       this.i7 = this.i7 >> 24;
                                       if(this.i10 != this.i7)
                                       {
                                          this.i1 = 1;
                                          break;
                                       }
                                       this.i7 = this.i1 + this.i9;
                                       this.i7 = li8(this.i7 + 1);
                                       this.i9 = this.i9 + 1;
                                       if(this.i7 != 0)
                                       {
                                          continue;
                                       }
                                       this.i1 = 0;
                                       this.i3 = this.i8 + this.i9;
                                       si32(this.i3,mstate.ebp + -300);
                                       break;
                                    }
                                    this.i1 = this.i1 ^ 1;
                                    this.i1 = this.i1 & 1;
                                    if(this.i1 == 0)
                                    {
                                       this.i1 = 3;
                                       this.i3 = this.i3 + 1;
                                       si32(this.i3,mstate.ebp + -300);
                                       si32(this.i1,mstate.ebp + -312);
                                       this.i1 = li32(FSM___svfscanf + 8);
                                       this.i1 = this.i1 + 1;
                                       si32(this.i1,mstate.ebp + -324);
                                       this.i1 = li32(mstate.ebp + -1548);
                                    }
                                    else
                                    {
                                       this.i1 = 3;
                                       si32(this.i1,mstate.ebp + -312);
                                       this.i1 = li32(FSM___svfscanf + 8);
                                       this.i1 = this.i1 + 1;
                                       si32(this.i1,mstate.ebp + -324);
                                       this.i1 = li32(mstate.ebp + -1548);
                                    }
                                 }
                                 §§goto(addr25471);
                              }
                              addr16373:
                              this.i1 = 6;
                              si32(this.i1,mstate.ebp + -312);
                              si32(this.i3,mstate.ebp + -300);
                              this.i1 = li32(mstate.ebp + -1548);
                              §§goto(addr25471);
                           }
                           else
                           {
                              if(this.i8 != 110)
                              {
                                 if(this.i8 == 105)
                                 {
                                    §§goto(addr15724);
                                 }
                              }
                              §§goto(addr16373);
                           }
                           this.i1 = FSM___svfscanf;
                           this.i8 = li32(mstate.ebp + -300);
                           this.i4 = 97;
                           this.i7 = 0;
                           this.i9 = this.i8;
                           while(true)
                           {
                              this.i10 = this.i9 + this.i7;
                              this.i10 = li8(this.i10 + 1);
                              this.i11 = this.i10 << 24;
                              this.i11 = this.i11 >> 24;
                              this.i10 = this.i10 + -65;
                              this.i4 = this.i4 << 24;
                              this.i10 = this.i10 & 255;
                              this.i12 = this.i11 + 32;
                              this.i10 = uint(this.i10) > uint(25)?int(this.i11):int(this.i12);
                              this.i4 = this.i4 >> 24;
                              if(this.i10 != this.i4)
                              {
                                 this.i1 = 1;
                                 this.i7 = this.i8;
                                 break;
                              }
                              this.i4 = this.i1 + this.i7;
                              this.i4 = li8(this.i4 + 1);
                              this.i7 = this.i7 + 1;
                              if(this.i4 != 0)
                              {
                                 continue;
                              }
                              this.i1 = 0;
                              this.i7 = this.i7 << 0;
                              this.i7 = this.i7 + this.i8;
                              this.i7 = this.i7 + 1;
                              si32(this.i7,mstate.ebp + -300);
                              break;
                           }
                           this.i8 = this.i7;
                           this.i1 = this.i1 & 1;
                           if(this.i1 == 0)
                           {
                              this.i1 = 4;
                              si32(this.i1,mstate.ebp + -312);
                              this.i1 = li32(FSM___svfscanf + 8);
                              this.i1 = this.i1 + 1;
                              si32(this.i1,mstate.ebp + -324);
                              this.i3 = li8(this.i8);
                              if(this.i3 == 40)
                              {
                                 this.i1 = FSM___svfscanf;
                                 mstate.esp = mstate.esp - 12;
                                 this.i3 = mstate.ebp + -300;
                                 si32(this.i3,mstate.esp);
                                 si32(this.i1,mstate.esp + 4);
                                 this.i1 = li32(mstate.ebp + -1476);
                                 si32(this.i1,mstate.esp + 8);
                                 mstate.esp = mstate.esp - 4;
                                 FSM___svfscanf.start();
                              }
                              else
                              {
                                 si32(this.i1,mstate.ebp + -324);
                                 this.i1 = li32(mstate.ebp + -1548);
                              }
                           }
                           else
                           {
                              §§goto(addr16373);
                           }
                           §§goto(addr25471);
                        }
                        §§goto(addr14012);
                     }
                     while(true)
                     {
                        §§goto(addr14012);
                     }
                  }
                  if(this.i11 == 0)
                  {
                     if(this.i1 == 0)
                     {
                        if(this.i4 == 0)
                        {
                           this.i1 = 6;
                           si32(this.i1,mstate.ebp + -312);
                           this.i1 = li32(mstate.ebp + -1575);
                           si32(this.i1,mstate.ebp + -300);
                           this.i1 = li32(mstate.ebp + -1548);
                           §§goto(addr25471);
                        }
                        §§goto(addr14012);
                     }
                  }
                  this.i14 = li32(mstate.ebp + -300);
                  this.i7 = this.i14 + 1;
                  si32(this.i7,mstate.ebp + -300);
                  this.i13 = si8(li8(this.i14 + 1));
                  if(this.i13 != 45)
                  {
                     if(this.i13 == 43)
                     {
                        this.i7 = 0;
                     }
                     else
                     {
                        this.i16 = this.i13 + -48;
                        if(uint(this.i16) >= uint(10))
                        {
                           this.i7 = this.i13;
                           addr15131:
                           this.i13 = 0;
                           si32(this.i14,mstate.ebp + -300);
                           addr14980:
                           §§goto(addr14981);
                        }
                        else
                        {
                           this.i15 = 0;
                           this.i16 = this.i7;
                           this.i7 = this.i15;
                        }
                        §§goto(addr15567);
                     }
                     addr15182:
                     this.i15 = this.i16;
                     if(this.i13 == 48)
                     {
                        this.i13 = this.i15;
                        while(true)
                        {
                           this.i15 = this.i13 + 1;
                           si32(this.i15,mstate.ebp + -300);
                           this.i13 = li8(this.i13 + 1);
                           if(this.i13 == 48)
                           {
                              this.i13 = this.i15;
                              continue;
                           }
                           break;
                        }
                        this.i13 = this.i13 << 24;
                        this.i13 = this.i13 >> 24;
                     }
                     this.i16 = this.i13;
                     this.i13 = this.i16 + -49;
                     if(uint(this.i13) >= uint(9))
                     {
                        this.i7 = 0;
                        this.i13 = this.i7;
                        this.i7 = this.i16;
                        §§goto(addr14980);
                     }
                     else
                     {
                        this.i13 = this.i15 + 1;
                        si32(this.i13,mstate.ebp + -300);
                        this.i17 = li8(this.i15 + 1);
                        this.i18 = this.i17 << 24;
                        this.i18 = this.i18 >> 24;
                        this.i16 = this.i16 + -48;
                        this.i17 = this.i17 + -48;
                        this.i17 = this.i17 & 255;
                        if(uint(this.i17) < uint(10))
                        {
                           while(true)
                           {
                              this.i17 = this.i13 + 1;
                              si32(this.i17,mstate.ebp + -300);
                              this.i13 = li8(this.i13 + 1);
                              this.i16 = this.i16 * 10;
                              this.i19 = this.i13 << 24;
                              this.i16 = this.i18 + this.i16;
                              this.i18 = this.i19 >> 24;
                              this.i16 = this.i16 + -48;
                              this.i13 = this.i13 + -48;
                              this.i13 = this.i13 & 255;
                              if(uint(this.i13) >= uint(10))
                              {
                                 break;
                              }
                              this.i13 = this.i17;
                           }
                           this.i13 = this.i17;
                        }
                        this.i17 = this.i18;
                        this.i13 = this.i13 - this.i15;
                        this.i13 = this.i13 > 8?1:0;
                        this.i15 = this.i16 > 19999?1:0;
                        this.i13 = this.i13 | this.i15;
                        this.i13 = this.i13 & 1;
                        this.i13 = this.i13 != 0?19999:int(this.i16);
                        if(this.i7 == 0)
                        {
                           this.i7 = this.i17;
                           §§goto(addr14980);
                        }
                        else
                        {
                           this.i7 = 0 - this.i13;
                           if(this.i11 != 0)
                           {
                              this.i1 = this.i7;
                              addr15495:
                              this.i4 = 1;
                              si32(this.i4,mstate.ebp + -312);
                              this.i4 = li32(FSM___svfscanf + 12);
                              this.i4 = this.i4 & 3;
                              this.i7 = this.i1 - this.i12;
                              si32(this.i7,mstate.ebp + -1683);
                              if(this.i4 != 0)
                              {
                                 if(this.i4 != 2)
                                 {
                                    if(this.i4 != 3)
                                    {
                                       this.i4 = 0;
                                    }
                                    else
                                    {
                                       this.i4 = li32(mstate.ebp + -1548);
                                       this.i4 = this.i4 + 1;
                                    }
                                 }
                                 else
                                 {
                                    this.i4 = li32(mstate.ebp + -1548);
                                    this.i4 = 2 - this.i4;
                                 }
                              }
                              else
                              {
                                 this.i4 = 1;
                              }
                              this.i7 = this.i9 == 0?int(this.i11):int(this.i9);
                              this.i9 = this.i11 < 17?int(this.i11):16;
                              this.f0 = Number(uint(this.i10));
                              if(this.i9 > 9)
                              {
                                 this.i13 = FSM___svfscanf;
                                 this.i14 = this.i9 << 3;
                                 this.i13 = this.i14 + this.i13;
                                 this.f1 = lf64(this.i13 + -72);
                                 this.f2 = Number(uint(this.i8));
                                 this.f0 = this.f1 * this.f0;
                                 this.f0 = this.f0 + this.f2;
                              }
                              sf64(this.f0,mstate.ebp + -1264);
                              this.i8 = li32(mstate.ebp + -1264);
                              this.i13 = li32(mstate.ebp + -1260);
                              if(this.i11 <= 15)
                              {
                                 if(this.i0 < 54)
                                 {
                                    if(this.i1 == this.i12)
                                    {
                                       this.i1 = mstate.ebp + -312;
                                       mstate.esp = mstate.esp - 28;
                                       this.i12 = 1;
                                       this.i14 = mstate.ebp + -324;
                                       sf64(this.f0,mstate.esp);
                                       si32(this.i14,mstate.esp + 8);
                                       this.i14 = li32(mstate.ebp + -1476);
                                       si32(this.i14,mstate.esp + 12);
                                       si32(this.i12,mstate.esp + 16);
                                       si32(this.i4,mstate.esp + 20);
                                       si32(this.i1,mstate.esp + 24);
                                       state = 44;
                                       mstate.esp = mstate.esp - 4;
                                       FSM___svfscanf.start();
                                       return;
                                    }
                                    addr16545:
                                    this.i1 = li32(mstate.ebp + -1683);
                                    if(this.i1 >= 1)
                                    {
                                       this.i1 = li32(mstate.ebp + -1683);
                                       if(this.i1 <= 22)
                                       {
                                          this.i1 = FSM___svfscanf;
                                          this.i12 = li32(mstate.ebp + -1683);
                                          this.i12 = this.i12 << 2;
                                          this.i1 = this.i1 + this.i12;
                                          this.i1 = li32(this.i1);
                                          si32(this.i8,mstate.ebp + -292);
                                          if(this.i8 != 0)
                                          {
                                             this.i8 = mstate.ebp + -292;
                                             mstate.esp = mstate.esp - 4;
                                             si32(this.i8,mstate.esp);
                                             mstate.esp = mstate.esp - 4;
                                             FSM___svfscanf.start();
                                          }
                                          else
                                          {
                                             this.i8 = mstate.ebp + -292;
                                             this.i12 = this.i13 | 1048576;
                                             si32(this.i12,mstate.ebp + -292);
                                             mstate.esp = mstate.esp - 4;
                                             si32(this.i8,mstate.esp);
                                             mstate.esp = mstate.esp - 4;
                                             FSM___svfscanf.start();
                                          }
                                          addr16823:
                                          this.i13 = FSM___svfscanf;
                                          this.i14 = li32(mstate.ebp + -1683);
                                          this.i14 = this.i14 << 3;
                                          this.i1 = this.i12 + this.i1;
                                          this.i1 = this.i1 - this.i8;
                                          this.i8 = this.i13 + this.i14;
                                          this.f1 = lf64(this.i8);
                                          this.i1 = this.i1 < 54?1:0;
                                          mstate.esp = mstate.esp - 28;
                                          this.i1 = this.i1 & 1;
                                          this.i8 = mstate.ebp + -312;
                                          this.i12 = mstate.ebp + -324;
                                          this.f0 = this.f0 * this.f1;
                                          sf64(this.f0,mstate.esp);
                                          si32(this.i12,mstate.esp + 8);
                                          this.i12 = li32(mstate.ebp + -1476);
                                          si32(this.i12,mstate.esp + 12);
                                          si32(this.i1,mstate.esp + 16);
                                          si32(this.i4,mstate.esp + 20);
                                          si32(this.i8,mstate.esp + 24);
                                          sf64(this.f0,mstate.ebp + -1272);
                                          state = 47;
                                          mstate.esp = mstate.esp - 4;
                                          FSM___svfscanf.start();
                                          return;
                                       }
                                       this.i1 = 15 - this.i11;
                                       this.i12 = 37 - this.i11;
                                       this.i14 = li32(mstate.ebp + -1683);
                                       if(this.i12 >= this.i14)
                                       {
                                          this.i8 = FSM___svfscanf;
                                          this.i12 = li32(mstate.ebp + -1683);
                                          this.i12 = this.i12 - this.i1;
                                          this.i12 = this.i12 << 3;
                                          this.i1 = this.i1 << 3;
                                          this.i12 = this.i8 + this.i12;
                                          this.i1 = this.i8 + this.i1;
                                          this.f1 = lf64(this.i1);
                                          this.f2 = lf64(this.i12);
                                          this.f0 = this.f0 * this.f1;
                                          mstate.esp = mstate.esp - 28;
                                          this.i1 = mstate.ebp + -312;
                                          this.i8 = 0;
                                          this.i12 = mstate.ebp + -324;
                                          this.f0 = this.f0 * this.f2;
                                          sf64(this.f0,mstate.esp);
                                          si32(this.i12,mstate.esp + 8);
                                          this.i12 = li32(mstate.ebp + -1476);
                                          si32(this.i12,mstate.esp + 12);
                                          si32(this.i8,mstate.esp + 16);
                                          si32(this.i4,mstate.esp + 20);
                                          si32(this.i1,mstate.esp + 24);
                                          state = 48;
                                          mstate.esp = mstate.esp - 4;
                                          FSM___svfscanf.start();
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       this.i1 = li32(mstate.ebp + -1683);
                                       if(this.i1 >= -22)
                                       {
                                          this.i1 = FSM___svfscanf;
                                          this.i8 = li32(mstate.ebp + -1683);
                                          this.i8 = 0 - this.i8;
                                          this.i8 = this.i8 << 3;
                                          this.i1 = this.i1 + this.i8;
                                          this.f1 = lf64(this.i1);
                                          mstate.esp = mstate.esp - 28;
                                          this.i1 = mstate.ebp + -312;
                                          this.i8 = mstate.ebp + -324;
                                          this.f0 = this.f0 / this.f1;
                                          this.i12 = 0;
                                          sf64(this.f0,mstate.esp);
                                          si32(this.i8,mstate.esp + 8);
                                          this.i8 = li32(mstate.ebp + -1476);
                                          si32(this.i8,mstate.esp + 12);
                                          si32(this.i12,mstate.esp + 16);
                                          si32(this.i4,mstate.esp + 20);
                                          si32(this.i1,mstate.esp + 24);
                                          sf64(this.f0,mstate.ebp + -1288);
                                          state = 49;
                                          mstate.esp = mstate.esp - 4;
                                          FSM___svfscanf.start();
                                          return;
                                       }
                                    }
                                 }
                              }
                              this.i1 = this.i8;
                              this.i8 = this.i13;
                              addr17459:
                              this.i12 = li32(mstate.ebp + -1683);
                              this.i9 = this.i11 - this.i9;
                              addr18277:
                              this.i9 = this.i12 + this.i9;
                              if(this.i9 <= 0)
                              {
                                 addr17245:
                                 if(this.i9 >= 0)
                                 {
                                    this.i9 = 0;
                                 }
                                 else
                                 {
                                    this.i9 = 0 - this.i9;
                                    this.i12 = this.i9 & 15;
                                    if(this.i12 != 0)
                                    {
                                       this.i13 = FSM___svfscanf;
                                       this.i12 = this.i12 << 3;
                                       si32(this.i1,mstate.ebp + -1344);
                                       si32(this.i8,mstate.ebp + -1340);
                                       this.i1 = this.i13 + this.i12;
                                       this.f0 = lf64(mstate.ebp + -1344);
                                       this.f1 = lf64(this.i1);
                                       this.f0 = this.f0 / this.f1;
                                       sf64(this.f0,mstate.ebp + -1352);
                                       this.i1 = li32(mstate.ebp + -1352);
                                       this.i8 = li32(mstate.ebp + -1348);
                                    }
                                    if(uint(this.i9) <= uint(15))
                                    {
                                       this.i9 = 0;
                                    }
                                    else
                                    {
                                       this.i12 = this.i8 >>> 20;
                                       this.i8 = this.i8 | 1072693248;
                                       this.i12 = this.i12 & 2047;
                                       this.i8 = this.i8 & -1073741825;
                                       this.i12 = this.i12 + -1023;
                                       this.i9 = this.i9 >> 4;
                                       if(this.i9 > 15)
                                       {
                                          while(true)
                                          {
                                             si32(this.i1,mstate.ebp + -1360);
                                             si32(this.i8,mstate.ebp + -1356);
                                             this.f0 = lf64(mstate.ebp + -1360);
                                             this.f0 = this.f0 * 1.0e-256;
                                             sf64(this.f0,mstate.ebp + -1368);
                                             this.i1 = li32(mstate.ebp + -1364);
                                             this.i8 = this.i1 >>> 20;
                                             this.i8 = this.i8 & 2047;
                                             this.i1 = this.i1 | 1072693248;
                                             this.i8 = this.i12 + this.i8;
                                             this.i12 = li32(mstate.ebp + -1368);
                                             this.i13 = this.i1 & -1073741825;
                                             this.i14 = this.i8 + -1023;
                                             this.i9 = this.i9 + -16;
                                             if(this.i9 <= 15)
                                             {
                                                break;
                                             }
                                             this.i1 = this.i12;
                                             this.i8 = this.i13;
                                             this.i12 = this.i14;
                                          }
                                          this.i1 = this.i12;
                                          this.i8 = this.i13;
                                          this.i12 = this.i14;
                                       }
                                       this.i13 = this.i1;
                                       this.i14 = this.i8;
                                       this.i1 = this.i9;
                                       if(this.i1 <= 0)
                                       {
                                          this.i1 = this.i13;
                                          this.i8 = this.i14;
                                          this.i9 = this.i12;
                                       }
                                       else
                                       {
                                          this.i8 = FSM___svfscanf;
                                          this.i9 = this.i14;
                                          do
                                          {
                                             this.i14 = this.i8;
                                             this.i15 = this.i1 & 1;
                                             if(this.i15 != 0)
                                             {
                                                si32(this.i13,mstate.ebp + -1376);
                                                si32(this.i9,mstate.ebp + -1372);
                                                this.f0 = lf64(mstate.ebp + -1376);
                                                this.f1 = lf64(this.i14);
                                                this.f0 = this.f0 * this.f1;
                                                sf64(this.f0,mstate.ebp + -1384);
                                                this.i9 = li32(mstate.ebp + -1384);
                                                this.i14 = li32(mstate.ebp + -1380);
                                                this.i13 = this.i9;
                                                this.i9 = this.i14;
                                             }
                                             this.i8 = this.i8 + 8;
                                             this.i1 = this.i1 >> 1;
                                          }
                                          while(this.i1 > 0);
                                          
                                          this.i1 = this.i13;
                                          this.i8 = this.i9;
                                          this.i9 = this.i12;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr17258:
                                 this.i12 = this.i9 & 15;
                                 if(this.i12 != 0)
                                 {
                                    this.i13 = FSM___svfscanf;
                                    this.i12 = this.i12 << 3;
                                    si32(this.i1,mstate.ebp + -1296);
                                    si32(this.i8,mstate.ebp + -1292);
                                    this.i1 = this.i13 + this.i12;
                                    this.f0 = lf64(mstate.ebp + -1296);
                                    this.f1 = lf64(this.i1);
                                    this.f0 = this.f0 * this.f1;
                                    sf64(this.f0,mstate.ebp + -1304);
                                    this.i1 = li32(mstate.ebp + -1304);
                                    this.i8 = li32(mstate.ebp + -1300);
                                 }
                                 if(uint(this.i9) <= uint(15))
                                 {
                                    this.i9 = 0;
                                 }
                                 else
                                 {
                                    this.i12 = this.i8 >>> 20;
                                    this.i8 = this.i8 | 1072693248;
                                    this.i12 = this.i12 & 2047;
                                    this.i8 = this.i8 & -1073741825;
                                    this.i12 = this.i12 + -1023;
                                    this.i9 = this.i9 >> 4;
                                    if(this.i9 > 15)
                                    {
                                       while(true)
                                       {
                                          si32(this.i1,mstate.ebp + -1312);
                                          si32(this.i8,mstate.ebp + -1308);
                                          this.f0 = lf64(mstate.ebp + -1312);
                                          this.f0 = this.f0 * 1.0e256;
                                          sf64(this.f0,mstate.ebp + -1320);
                                          this.i1 = li32(mstate.ebp + -1316);
                                          this.i8 = this.i1 >>> 20;
                                          this.i8 = this.i8 & 2047;
                                          this.i1 = this.i1 | 1072693248;
                                          this.i8 = this.i12 + this.i8;
                                          this.i12 = li32(mstate.ebp + -1320);
                                          this.i13 = this.i1 & -1073741825;
                                          this.i14 = this.i8 + -1023;
                                          this.i9 = this.i9 + -16;
                                          if(this.i9 <= 15)
                                          {
                                             break;
                                          }
                                          this.i1 = this.i12;
                                          this.i8 = this.i13;
                                          this.i12 = this.i14;
                                       }
                                       this.i1 = this.i12;
                                       this.i8 = this.i13;
                                       this.i12 = this.i14;
                                    }
                                    this.i13 = this.i1;
                                    if(this.i9 <= 0)
                                    {
                                       this.i1 = this.i13;
                                       this.i9 = this.i12;
                                    }
                                    else
                                    {
                                       this.i1 = FSM___svfscanf;
                                       do
                                       {
                                          this.i14 = this.i1;
                                          this.i15 = this.i9 & 1;
                                          if(this.i15 != 0)
                                          {
                                             si32(this.i13,mstate.ebp + -1328);
                                             si32(this.i8,mstate.ebp + -1324);
                                             this.f0 = lf64(mstate.ebp + -1328);
                                             this.f1 = lf64(this.i14);
                                             this.f0 = this.f0 * this.f1;
                                             sf64(this.f0,mstate.ebp + -1336);
                                             this.i8 = li32(mstate.ebp + -1336);
                                             this.i14 = li32(mstate.ebp + -1332);
                                             this.i13 = this.i8;
                                             this.i8 = this.i14;
                                          }
                                          this.i1 = this.i1 + 8;
                                          this.i9 = this.i9 >> 1;
                                       }
                                       while(this.i9 > 0);
                                       
                                       this.i1 = this.i13;
                                       this.i9 = this.i12;
                                    }
                                 }
                              }
                              this.i12 = mstate.ebp + -308;
                              mstate.esp = mstate.esp - 16;
                              this.i13 = mstate.ebp + -304;
                              si32(this.i13,mstate.esp + 8);
                              si32(this.i12,mstate.esp + 12);
                              si32(this.i1,mstate.esp);
                              si32(this.i8,mstate.esp + 4);
                              state = 50;
                              mstate.esp = mstate.esp - 4;
                              FSM___svfscanf.start();
                              return;
                           }
                           this.i7 = this.i17;
                           this.i3 = this.i14;
                        }
                     }
                     §§goto(addr15567);
                  }
                  else
                  {
                     this.i7 = 1;
                  }
                  this.i13 = this.i14 + 2;
                  si32(this.i13,mstate.ebp + -300);
                  this.i15 = si8(li8(this.i14 + 2));
                  this.i16 = this.i15 + -48;
                  if(uint(this.i16) >= uint(10))
                  {
                     this.i7 = this.i15;
                     §§goto(addr15131);
                  }
                  else
                  {
                     this.i16 = this.i13;
                     this.i13 = this.i15;
                     §§goto(addr15182);
                  }
                  §§goto(addr15567);
                  §§goto(addr14260);
               }
               this.i1 = this.i13;
               §§goto(addr15495);
            case 43:
               while(true)
               {
                  this.i1 = mstate.eax;
                  mstate.esp = mstate.esp + 12;
                  si32(this.i1,mstate.ebp + -312);
                  this.i1 = li32(FSM___svfscanf + 8);
                  this.i1 = this.i1 + 1;
                  si32(this.i1,mstate.ebp + -324);
                  this.i1 = li32(mstate.ebp + -1548);
                  §§goto(addr25471);
               }
            case 44:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               if(this.i1 != 0)
               {
                  §§goto(addr14011);
               }
               §§goto(addr16545);
            case 45:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i12 = 53;
               §§goto(addr16823);
            case 46:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i12 = 21;
               §§goto(addr16823);
            case 47:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               this.i8 = li32(mstate.ebp + -1272);
               this.i12 = li32(mstate.ebp + -1268);
               if(this.i1 == 0)
               {
                  this.i13 = 0;
                  this.i1 = this.i8;
                  this.i8 = this.i12;
                  this.i12 = this.i13;
               }
               else
               {
                  §§goto(addr14011);
               }
               §§goto(addr17459);
            case 48:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               if(this.i1 == 0)
               {
                  sf64(this.f0,mstate.ebp + -1280);
                  this.i1 = li32(mstate.ebp + -1280);
                  this.i8 = li32(mstate.ebp + -1276);
                  this.i9 = this.i11 - this.i9;
                  if(this.i9 <= 0)
                  {
                     §§goto(addr17245);
                  }
                  §§goto(addr18277);
               }
               else
               {
                  §§goto(addr14011);
               }
               §§goto(addr17258);
            case 49:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 28;
               this.i8 = li32(mstate.ebp + -1288);
               this.i12 = li32(mstate.ebp + -1284);
               if(this.i1 == 0)
               {
                  this.i13 = 0;
                  this.i1 = this.i8;
                  this.i8 = this.i12;
                  this.i12 = this.i13;
               }
               else
               {
                  §§goto(addr14011);
               }
               §§goto(addr17459);
            case 50:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               si32(this.i1,mstate.ebp + -296);
               this.i8 = li32(mstate.ebp + -304);
               this.i8 = this.i8 + this.i9;
               si32(this.i8,mstate.ebp + -304);
               this.i9 = li32(mstate.ebp + -308);
               this.i12 = this.i9 - this.i0;
               if(this.i12 <= 0)
               {
                  this.i1 = this.i9;
               }
               else
               {
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i12,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
               }
               addr18461:
               this.i9 = this.i8 - this.i0;
               this.i12 = li32(FSM___svfscanf + 8);
               this.i9 = this.i9 + this.i1;
               if(this.i12 < this.i9)
               {
                  this.i1 = 0;
                  this.i3 = li32(mstate.ebp + -296);
                  si32(this.i1,this.i3 + 16);
                  this.i1 = 163;
                  si32(this.i1,mstate.ebp + -312);
                  this.i1 = 34;
                  si32(this.i1,FSM___svfscanf);
                  this.i1 = li32(FSM___svfscanf + 8);
                  this.i1 = this.i1 + 1;
                  si32(this.i1,mstate.ebp + -324);
                  this.i1 = li32(mstate.ebp + -1548);
                  §§goto(addr25471);
               }
               else
               {
                  this.i12 = li32(FSM___svfscanf + 4);
                  if(this.i12 <= this.i9)
                  {
                     this.i1 = 0;
                     this.i8 = this.i9;
                  }
                  else
                  {
                     this.i8 = this.i8 - this.i12;
                     if(this.i8 >= 1)
                     {
                        this.i1 = li32(mstate.ebp + -296);
                        mstate.esp = mstate.esp - 8;
                        si32(this.i1,mstate.esp);
                        si32(this.i8,mstate.esp + 4);
                        state = 55;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                     if(this.i8 <= -1)
                     {
                        this.i1 = this.i1 + this.i8;
                        si32(this.i1,mstate.ebp + -308);
                        if(this.i1 <= 0)
                        {
                           if(this.i1 > -2)
                           {
                              this.i1 = 1;
                              this.i8 = li32(mstate.ebp + -296);
                              si32(this.i1,mstate.ebp + -308);
                              si32(this.i1,this.i8 + 16);
                              si32(this.i1,this.i8 + 20);
                              si32(this.i12,mstate.ebp + -304);
                              this.i1 = li32(mstate.ebp + -1584);
                              if(this.i1 != 0)
                              {
                                 addr19331:
                                 this.i1 = this.i9 + 1;
                                 if(this.i1 >= this.i12)
                                 {
                                 }
                              }
                           }
                           this.i1 = 0;
                           this.i8 = li32(mstate.ebp + -296);
                           si32(this.i1,this.i8 + 16);
                           this.i8 = li32(mstate.ebp + -296);
                           si32(this.i1,this.i8 + 20);
                           si32(this.i12,mstate.ebp + -324);
                           this.i1 = 80;
                           si32(this.i1,mstate.ebp + -312);
                           this.i1 = li32(mstate.ebp + -1584);
                           addr25350:
                           if(this.i1 != 0)
                           {
                              this.i1 = 0;
                              this.i3 = li32(mstate.ebp + -296);
                              si32(this.i1,this.i3 + 16);
                              this.i1 = 80;
                              si32(this.i1,mstate.ebp + -312);
                              this.i1 = li32(mstate.ebp + -1548);
                              §§goto(addr25471);
                           }
                           else
                           {
                              this.i1 = li32(mstate.ebp + -296);
                              this.i3 = li32(mstate.ebp + -312);
                              this.i1 = li32(this.i1 + 16);
                              this.i1 = this.i1 > 0?2:0;
                              this.i3 = this.i3 & -8;
                              this.i1 = this.i1 | this.i3;
                              si32(this.i1,mstate.ebp + -312);
                              this.i3 = this.i1 & 48;
                              if(this.i3 != 0)
                              {
                                 this.i1 = this.i1 | 64;
                                 si32(this.i1,mstate.ebp + -312);
                                 this.i1 = li32(mstate.ebp + -1548);
                                 §§goto(addr25471);
                              }
                           }
                        }
                        else
                        {
                           this.i1 = li32(mstate.ebp + -296);
                           mstate.esp = mstate.esp - 8;
                           this.i8 = 0 - this.i8;
                           si32(this.i1,mstate.esp);
                           si32(this.i8,mstate.esp + 4);
                           mstate.esp = mstate.esp - 4;
                           FSM___svfscanf.start();
                        }
                        addr19119:
                        this.i1 = 1;
                        this.i8 = this.i12;
                     }
                     addr19312:
                     si32(this.i12,mstate.ebp + -304);
                     this.i1 = li32(mstate.ebp + -1584);
                     if(this.i1 != 0)
                     {
                        §§goto(addr19331);
                     }
                     §§goto(addr19119);
                  }
                  this.i9 = 0;
                  mstate.esp = mstate.esp - 16;
                  si32(this.i3,mstate.esp);
                  si32(this.i7,mstate.esp + 4);
                  si32(this.i11,mstate.esp + 8);
                  si32(this.i10,mstate.esp + 12);
                  state = 52;
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
                  return;
               }
               §§goto(addr14011);
            case 51:
               mstate.esp = mstate.esp + 8;
               si32(this.i0,mstate.ebp + -308);
               this.i1 = li32(mstate.ebp + -304);
               this.i8 = this.i1 + this.i12;
               si32(this.i8,mstate.ebp + -304);
               this.i1 = this.i0;
               §§goto(addr18461);
            case 52:
               this.i3 = mstate.eax;
               si32(this.i3,mstate.ebp + -1557);
               mstate.esp = mstate.esp + 16;
               this.i3 = this.i4 & 1;
               si32(this.i3,mstate.ebp + -1638);
               this.i3 = this.i0 + 1;
               si32(this.i3,mstate.ebp + -1611);
               this.i3 = li32(mstate.ebp + -1683);
               this.i3 = 0 - this.i3;
               si32(this.i3,mstate.ebp + -1647);
               this.i3 = li32(mstate.ebp + -1557);
               this.i3 = this.i3 + 12;
               si32(this.i3,mstate.ebp + -1620);
               this.i3 = li32(mstate.ebp + -1557);
               this.i3 = this.i3 + 16;
               si32(this.i3,mstate.ebp + -1629);
               this.i3 = li32(mstate.ebp + -1557);
               this.i3 = this.i3 + 4;
               si32(this.i3,mstate.ebp + -1593);
               this.i3 = this.i8;
               this.i7 = this.i9;
               addr18771:
               this.i8 = li32(mstate.ebp + -1593);
               this.i8 = li32(this.i8);
               mstate.esp = mstate.esp - 4;
               si32(this.i8,mstate.esp);
               state = 53;
               mstate.esp = mstate.esp - 4;
               FSM___svfscanf.start();
               return;
            case 53:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i9 = li32(mstate.ebp + -1629);
               this.i9 = li32(this.i9);
               this.i10 = this.i8 + 12;
               this.i9 = this.i9 << 2;
               this.i11 = li32(mstate.ebp + -1620);
               this.i9 = this.i9 + 8;
               memcpy(this.i10,this.i11,this.i9);
               this.i9 = li32(mstate.ebp + -296);
               this.i9 = li32(this.i9 + 4);
               mstate.esp = mstate.esp - 4;
               si32(this.i9,mstate.esp);
               state = 54;
               mstate.esp = mstate.esp - 4;
               FSM___svfscanf.start();
               return;
            case 54:
               this.i9 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i10 = li32(mstate.ebp + -296);
               this.i11 = li32(this.i10 + 16);
               this.i13 = this.i9 + 12;
               this.i11 = this.i11 << 2;
               this.i10 = this.i10 + 12;
               this.i11 = this.i11 + 8;
               memcpy(this.i13,this.i10,this.i11);
               this.i10 = li32(mstate.ebp + -308);
               this.i11 = li32(mstate.ebp + -304);
               this.i13 = li32(FSM___svfscanf + 4);
               this.i11 = this.i11 + this.i7;
               this.i10 = this.i10 - this.i7;
               if(this.i13 != 0)
               {
                  this.i14 = li32(this.i13);
                  si32(this.i14,FSM___svfscanf + 4);
               }
               else
               {
                  this.i13 = FSM___svfscanf;
                  this.i14 = li32(FSM___svfscanf);
                  this.i13 = this.i14 - this.i13;
                  this.i13 = this.i13 >> 3;
                  this.i13 = this.i13 + 4;
                  if(uint(this.i13) <= uint(288))
                  {
                     this.i13 = 1;
                     this.i15 = this.i14 + 32;
                     si32(this.i15,FSM___svfscanf);
                     si32(this.i13,this.i14 + 4);
                     this.i13 = 2;
                     si32(this.i13,this.i14 + 8);
                     this.i13 = this.i14;
                  }
                  else
                  {
                     this.i13 = 32;
                     mstate.esp = mstate.esp - 8;
                     this.i14 = 0;
                     si32(this.i14,mstate.esp);
                     si32(this.i13,mstate.esp + 4);
                     state = 57;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
               }
               addr19484:
               this.i14 = 0;
               si32(this.i14,this.i13 + 12);
               this.i14 = 1;
               si32(this.i14,this.i13 + 20);
               si32(this.i14,this.i13 + 16);
               this.i14 = li32(mstate.ebp + -1683);
               if(this.i14 >= 0)
               {
                  this.i14 = 0;
                  this.i15 = li32(mstate.ebp + -1683);
                  this.i16 = this.i15;
                  this.i17 = this.i14;
               }
               else
               {
                  this.i14 = 0;
                  this.i15 = this.i14;
                  this.i16 = this.i14;
                  this.i14 = li32(mstate.ebp + -1647);
                  this.i17 = this.i14;
               }
               this.i18 = this.i16 - this.i11;
               this.i19 = this.i14 + this.i11;
               this.i20 = this.i10 - this.i0;
               this.i16 = this.i11 > -1?int(this.i16):int(this.i18);
               this.i14 = this.i11 < 0?int(this.i14):int(this.i19);
               this.i11 = this.i20 + this.i11;
               this.i18 = li32(mstate.ebp + -1611);
               this.i18 = this.i18 - this.i10;
               if(this.i11 >= this.i12)
               {
                  this.i11 = this.i18;
               }
               else
               {
                  this.i18 = this.i18 - this.i12;
                  this.i11 = this.i18 + this.i11;
               }
               this.i16 = this.i11 + this.i16;
               this.i11 = this.i11 + this.i14;
               this.i18 = this.i16 <= this.i11?int(this.i16):int(this.i11);
               this.i18 = this.i18 > this.i14?int(this.i14):int(this.i18);
               this.i18 = this.i18 > 0?int(this.i18):0;
               this.i11 = this.i11 - this.i18;
               this.i16 = this.i16 - this.i18;
               this.i14 = this.i14 - this.i18;
               if(this.i17 <= 0)
               {
                  addr19873:
                  this.i7 = this.i11 - this.i7;
                  if(this.i7 >= 1)
                  {
                     mstate.esp = mstate.esp - 8;
                     si32(this.i9,mstate.esp);
                     si32(this.i7,mstate.esp + 4);
                     state = 60;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
                  if(this.i7 <= -1)
                  {
                     mstate.esp = mstate.esp - 8;
                     this.i7 = 0 - this.i7;
                     si32(this.i9,mstate.esp);
                     si32(this.i7,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                  }
                  addr19977:
                  if(this.i15 <= 0)
                  {
                     this.i7 = this.i9;
                     addr20032:
                     if(this.i16 <= 0)
                     {
                        addr20079:
                        if(this.i14 <= 0)
                        {
                           break;
                        }
                        mstate.esp = mstate.esp - 8;
                        si32(this.i13,mstate.esp);
                        si32(this.i14,mstate.esp + 4);
                        state = 64;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                     mstate.esp = mstate.esp - 8;
                     si32(this.i8,mstate.esp);
                     si32(this.i16,mstate.esp + 4);
                     state = 63;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
                  this.i7 = this.i9;
                  addr19991:
                  mstate.esp = mstate.esp - 8;
                  si32(this.i8,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  state = 62;
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
                  return;
               }
               mstate.esp = mstate.esp - 8;
               si32(this.i13,mstate.esp);
               si32(this.i17,mstate.esp + 4);
               state = 58;
               mstate.esp = mstate.esp - 4;
               FSM___svfscanf.start();
               return;
            case 55:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i1,mstate.ebp + -296);
               this.i1 = li32(mstate.ebp + -308);
               this.i1 = this.i1 + this.i8;
               si32(this.i1,mstate.ebp + -308);
               si32(this.i12,mstate.ebp + -304);
               this.i1 = li32(mstate.ebp + -1584);
               if(this.i1 != 0)
               {
                  §§goto(addr19331);
               }
               §§goto(addr19119);
            case 56:
               mstate.esp = mstate.esp + 8;
               §§goto(addr19312);
            case 57:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i14 = 1;
               si32(this.i14,this.i13 + 4);
               this.i14 = 2;
               si32(this.i14,this.i13 + 8);
               §§goto(addr19484);
            case 58:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 8;
               si32(this.i13,mstate.esp);
               si32(this.i9,mstate.esp + 4);
               state = 59;
               mstate.esp = mstate.esp - 4;
               FSM___svfscanf.start();
               return;
            case 59:
               this.i17 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i9 == 0)
               {
                  this.i9 = this.i17;
               }
               else
               {
                  this.i18 = FSM___svfscanf;
                  this.i19 = li32(this.i9 + 4);
                  this.i19 = this.i19 << 2;
                  this.i18 = this.i18 + this.i19;
                  this.i19 = li32(this.i18);
                  si32(this.i19,this.i9);
                  si32(this.i9,this.i18);
                  this.i9 = this.i17;
               }
               §§goto(addr19873);
            case 60:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i15 <= 0)
               {
                  §§goto(addr20032);
               }
               else
               {
                  §§goto(addr19991);
               }
            case 61:
               mstate.esp = mstate.esp + 8;
               §§goto(addr19977);
            case 62:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr20032);
            case 63:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr20079);
            case 64:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               break;
            case 65:
               this.i11 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i13 = li32(this.i11 + 16);
               if(this.i13 <= 1)
               {
                  this.i14 = li32(this.i11 + 20);
                  if(this.i14 == 0)
                  {
                     addr20198:
                     addr20205:
                     this.i3 = this.i11;
                     addr25084:
                     this.i13 = this.i3;
                     addr25084:
                     if(this.i1 != 0)
                     {
                        this.i3 = li32(mstate.ebp + -1584);
                     }
                     else
                     {
                        this.i3 = li32(mstate.ebp + -1584);
                     }
                     addr25084:
                     this.i4 = this.i13;
                     this.i10 = li32(mstate.ebp + -304);
                     si32(this.i10,mstate.ebp + -324);
                     if(this.i7 != 0)
                     {
                        this.i10 = FSM___svfscanf;
                        this.i11 = li32(this.i7 + 4);
                        this.i11 = this.i11 << 2;
                        this.i10 = this.i10 + this.i11;
                        this.i11 = li32(this.i10);
                        si32(this.i11,this.i7);
                        si32(this.i7,this.i10);
                     }
                     if(this.i8 != 0)
                     {
                        this.i7 = FSM___svfscanf;
                        this.i10 = li32(this.i8 + 4);
                        this.i10 = this.i10 << 2;
                        this.i7 = this.i7 + this.i10;
                        this.i10 = li32(this.i7);
                        si32(this.i10,this.i8);
                        si32(this.i8,this.i7);
                     }
                     if(this.i9 != 0)
                     {
                        this.i7 = FSM___svfscanf;
                        this.i8 = li32(this.i9 + 4);
                        this.i8 = this.i8 << 2;
                        this.i7 = this.i7 + this.i8;
                        this.i8 = li32(this.i7);
                        si32(this.i8,this.i9);
                        si32(this.i9,this.i7);
                     }
                     this.i7 = li32(mstate.ebp + -1557);
                     if(this.i7 != 0)
                     {
                        this.i7 = FSM___svfscanf;
                        this.i8 = li32(mstate.ebp + -1593);
                        this.i8 = li32(this.i8);
                        this.i8 = this.i8 << 2;
                        this.i7 = this.i7 + this.i8;
                        this.i8 = li32(this.i7);
                        this.i9 = li32(mstate.ebp + -1557);
                        si32(this.i8,this.i9);
                        si32(this.i9,this.i7);
                     }
                     if(this.i4 != 0)
                     {
                        this.i7 = FSM___svfscanf;
                        this.i8 = li32(this.i4 + 4);
                        this.i8 = this.i8 << 2;
                        this.i7 = this.i7 + this.i8;
                        this.i8 = li32(this.i7);
                        si32(this.i8,this.i4);
                        si32(this.i4,this.i7);
                     }
                     if(this.i1 != 0)
                     {
                        this.i1 = this.i3;
                        §§goto(addr25350);
                     }
                     §§goto(addr14011);
                  }
                  addr24975:
                  this.i4 = this.i13;
                  this.i13 = li32(mstate.ebp + -308);
                  if(this.i13 >= this.i0)
                  {
                     this.i13 = this.i4;
                     §§goto(addr25084);
                  }
                  else
                  {
                     this.i10 = li32(mstate.ebp + -296);
                     mstate.esp = mstate.esp - 8;
                     this.i13 = this.i0 - this.i13;
                     si32(this.i10,mstate.esp);
                     si32(this.i13,mstate.esp + 4);
                     state = 82;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
               }
               this.i14 = 0;
               this.i15 = li32(this.i11 + 12);
               si32(this.i14,this.i11 + 12);
               this.i14 = li32(this.i9 + 16);
               this.i16 = this.i13 - this.i14;
               this.i17 = this.i9 + 16;
               if(this.i13 != this.i14)
               {
                  this.i14 = this.i16;
               }
               else
               {
                  this.i13 = 0;
                  while(true)
                  {
                     this.i16 = this.i13 ^ -1;
                     this.i16 = this.i14 + this.i16;
                     this.i18 = this.i16 << 2;
                     this.i19 = this.i11 + this.i18;
                     this.i18 = this.i9 + this.i18;
                     this.i19 = li32(this.i19 + 20);
                     this.i18 = li32(this.i18 + 20);
                     if(this.i19 != this.i18)
                     {
                        this.i13 = uint(this.i19) < uint(this.i18)?-1:1;
                        this.i14 = this.i13;
                        break;
                     }
                     this.i13 = this.i13 + 1;
                     if(this.i16 <= 0)
                     {
                        this.i13 = 0;
                        this.i14 = this.i13;
                        break;
                     }
                  }
               }
               this.i13 = this.i14;
               if(this.i13 <= 0)
               {
                  if(this.i4 != 0)
                  {
                     this.i13 = 1;
                     si32(this.i13,mstate.ebp + -312);
                     this.i13 = li32(mstate.ebp + -1638);
                     this.i13 = this.i15 ^ this.i13;
                     this.i17 = li32(mstate.ebp + -1638);
                     if(this.i17 != this.i15)
                     {
                        if(this.i15 != 0)
                        {
                           this.i17 = 33;
                           si32(this.i17,mstate.ebp + -312);
                           if(this.i15 != 0)
                           {
                              this.f0 = 1;
                              this.i10 = 32;
                              this.i15 = 1072693248;
                              this.i17 = 0;
                              this.i14 = this.i17;
                              this.i16 = this.i14;
                           }
                        }
                        else
                        {
                           this.i17 = 17;
                           si32(this.i17,mstate.ebp + -312);
                           if(this.i3 != this.i12)
                           {
                              this.i17 = 0;
                              this.i14 = li32(mstate.ebp + -296);
                              this.i16 = this.i14 + 20;
                              this.i18 = this.i0;
                              while(true)
                              {
                                 this.i19 = this.i16;
                                 this.i16 = this.i19;
                                 if(this.i18 <= 31)
                                 {
                                    if(this.i18 >= 2)
                                    {
                                       this.i17 = this.i17 << 2;
                                       this.i17 = this.i14 + this.i17;
                                       mstate.esp = mstate.esp - 4;
                                       this.i17 = this.i17 + 20;
                                       si32(this.i17,mstate.esp);
                                       mstate.esp = mstate.esp - 4;
                                       FSM___svfscanf.start();
                                    }
                                    addr20661:
                                    this.i3 = this.i3 + -1;
                                    si32(this.i3,mstate.ebp + -304);
                                    si32(this.i0,mstate.ebp + -308);
                                    this.i3 = li32(mstate.ebp + -296);
                                    mstate.esp = mstate.esp - 8;
                                    si32(this.i3,mstate.esp);
                                    si32(this.i0,mstate.esp + 4);
                                    state = 67;
                                    mstate.esp = mstate.esp - 4;
                                    FSM___svfscanf.start();
                                    return;
                                 }
                                 this.i16 = li32(this.i16);
                                 if(this.i16 == 0)
                                 {
                                    this.i16 = this.i18 + -32;
                                    this.i19 = this.i19 + 4;
                                    this.i17 = this.i17 + 1;
                                    this.i18 = this.i16;
                                    this.i16 = this.i19;
                                    continue;
                                 }
                                 break;
                              }
                           }
                           addr21964:
                           if(this.i15 != 0)
                           {
                              this.f0 = 1;
                              this.i10 = 32;
                              this.i15 = 1072693248;
                              this.i14 = 0;
                              this.i18 = this.i14;
                              this.i17 = this.i14;
                              this.i16 = this.i18;
                              this.i14 = this.i18;
                           }
                        }
                        if(this.i10 <= 1)
                        {
                           if(this.i1 != 0)
                           {
                              addr21998:
                              this.i3 = 0;
                              this.i13 = li32(mstate.ebp + -296);
                              si32(this.i3,this.i13 + 16);
                              si32(this.i12,mstate.ebp + -304);
                              this.i3 = 80;
                              si32(this.i3,mstate.ebp + -312);
                              if(this.i1 != 0)
                              {
                                 addr20742:
                                 this.i3 = li32(mstate.ebp + -1584);
                                 this.i13 = this.i11;
                              }
                              else
                              {
                                 addr20778:
                              }
                              §§goto(addr25084);
                           }
                        }
                        this.f0 = 1;
                        this.i10 = 16;
                        this.i15 = 1072693248;
                        this.i14 = 1;
                        this.i16 = 0;
                        this.i18 = this.i16;
                        this.i17 = this.i16;
                        this.i16 = this.i18;
                     }
                     else
                     {
                        this.i3 = this.i15 != 0?17:33;
                        si32(this.i3,mstate.ebp + -312);
                        if(this.i1 != 0)
                        {
                           §§goto(addr20742);
                        }
                        §§goto(addr25084);
                     }
                     addr20779:
                     this.i3 = li32(mstate.ebp + -1584);
                     this.i13 = this.i11;
                     §§goto(addr24975);
                  }
                  addr22298:
                  si32(this.i10,mstate.ebp + -1665);
                  this.i10 = this.i16;
                  this.i16 = li32(mstate.ebp + -304);
                  this.i18 = li32(mstate.ebp + -308);
                  this.i16 = this.i18 + this.i16;
                  addr22432:
                  if(this.i1 == 0)
                  {
                     if(this.i18 < this.i0)
                     {
                        this.i19 = li32(mstate.ebp + -296);
                        mstate.esp = mstate.esp - 8;
                        this.i18 = this.i0 - this.i18;
                        si32(this.i19,mstate.esp);
                        si32(this.i18,mstate.esp + 4);
                        state = 72;
                        mstate.esp = mstate.esp - 4;
                        FSM___svfscanf.start();
                        return;
                     }
                  }
                  this.i18 = mstate.ebp + -316;
                  mstate.esp = mstate.esp - 16;
                  this.i19 = mstate.ebp + -320;
                  si32(this.i19,mstate.esp + 8);
                  si32(this.i18,mstate.esp + 12);
                  si32(this.i17,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  state = 73;
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
                  return;
               }
               if(this.i13 <= -1)
               {
                  this.i13 = this.i15 == 0?33:17;
                  si32(this.i13,mstate.ebp + -312);
                  if(this.i3 != this.i12)
                  {
                     if(this.i1 == 0)
                     {
                        if(this.i10 <= 1)
                        {
                           if(this.i15 == 0)
                           {
                              this.i13 = 1;
                              mstate.esp = mstate.esp - 8;
                              si32(this.i11,mstate.esp);
                              si32(this.i13,mstate.esp + 4);
                              state = 68;
                              mstate.esp = mstate.esp - 4;
                              FSM___svfscanf.start();
                              return;
                           }
                        }
                     }
                  }
                  addr20197:
                  §§goto(addr20198);
               }
               else
               {
                  if(this.i13 == 0)
                  {
                     if(this.i15 != 0)
                     {
                        if(this.i1 == 0)
                        {
                           addr21042:
                           addr21048:
                           this.i3 = 17;
                           si32(this.i3,mstate.ebp + -312);
                           if(this.i10 < this.i0)
                           {
                              if(this.i1 != 0)
                              {
                              }
                              §§goto(addr20197);
                           }
                           this.i3 = li32(mstate.ebp + -296);
                           this.i13 = li32(this.i3 + 20);
                           this.i4 = this.i3;
                           this.i13 = this.i13 & 1;
                           if(this.i13 != 0)
                           {
                              if(this.i15 != 0)
                              {
                                 mstate.esp = mstate.esp - 4;
                                 si32(this.i4,mstate.esp);
                                 state = 69;
                                 mstate.esp = mstate.esp - 4;
                                 FSM___svfscanf.start();
                                 return;
                              }
                              if(this.i10 != 1)
                              {
                                 this.i13 = 0;
                                 this.i4 = li32(this.i4 + 16);
                                 this.i3 = this.i3 + 20;
                                 while(true)
                                 {
                                    this.i10 = li32(this.i3);
                                    this.i15 = this.i3;
                                    if(this.i10 != 0)
                                    {
                                       this.i3 = this.i10 + -1;
                                       si32(this.i3,this.i15);
                                       break;
                                    }
                                    this.i10 = -1;
                                    si32(this.i10,this.i15);
                                    this.i3 = this.i3 + 4;
                                    this.i13 = this.i13 + 1;
                                    if(this.i13 < this.i4)
                                    {
                                       continue;
                                    }
                                    break;
                                 }
                                 this.i3 = 17;
                                 si32(this.i3,mstate.ebp + -312);
                                 if(this.i1 != 0)
                                 {
                                    §§goto(addr20742);
                                 }
                                 §§goto(addr25084);
                              }
                              §§goto(addr20778);
                           }
                           else
                           {
                              §§goto(addr20197);
                           }
                        }
                        else
                        {
                           this.i3 = li32(mstate.ebp + -308);
                           this.i13 = li32(mstate.ebp + -296);
                           this.i4 = this.i3 >> 5;
                           this.i14 = this.i13 + 20;
                           this.i16 = this.i13;
                           if(this.i4 <= 0)
                           {
                              this.i13 = this.i14;
                           }
                           else
                           {
                              this.i14 = 0;
                              this.i13 = this.i13 + 20;
                              while(true)
                              {
                                 this.i17 = li32(this.i13);
                                 if(this.i17 == -1)
                                 {
                                    this.i13 = this.i13 + 4;
                                    this.i14 = this.i14 + 1;
                                    if(this.i14 < this.i4)
                                    {
                                       continue;
                                    }
                                    this.i13 = this.i14 << 2;
                                    this.i13 = this.i16 + this.i13;
                                    this.i13 = this.i13 + 20;
                                 }
                                 break;
                              }
                              §§goto(addr21042);
                           }
                           this.i3 = this.i3 & 31;
                           if(this.i3 != 0)
                           {
                              this.i4 = -1;
                              this.i13 = li32(this.i13);
                              this.i3 = this.i4 << this.i3;
                              this.i3 = this.i13 | this.i3;
                              if(this.i3 != -1)
                              {
                                 §§goto(addr21041);
                              }
                           }
                           this.i1 = 1;
                           si32(this.i1,this.i16 + 16);
                           this.i3 = li32(mstate.ebp + -296);
                           si32(this.i1,this.i3 + 20);
                           this.i3 = this.i0 + this.i12;
                           si32(this.i1,mstate.ebp + -308);
                           this.i1 = this.i3 + -1;
                           si32(this.i1,mstate.ebp + -304);
                           this.i1 = 33;
                           si32(this.i1,mstate.ebp + -312);
                           this.i1 = 0;
                           this.i3 = li32(mstate.ebp + -1584);
                           this.i13 = this.i11;
                        }
                     }
                     else if(this.i10 != 1)
                     {
                        this.i3 = 33;
                        §§goto(addr21048);
                     }
                     else
                     {
                        this.i13 = 1;
                        this.i4 = this.i13;
                        this.i13 = this.i11;
                        addr21567:
                        si32(this.i4,mstate.ebp + -312);
                        if(this.i3 == this.i12)
                        {
                           this.i3 = 33;
                           si32(this.i3,mstate.ebp + -312);
                           this.i3 = li32(mstate.ebp + -296);
                           this.i4 = li32(this.i3 + 16);
                           if(this.i4 == 1)
                           {
                              this.i3 = li32(this.i3 + 20);
                              if(this.i3 == 1)
                              {
                                 if(this.i1 != 0)
                                 {
                                    this.i3 = 1;
                                 }
                                 else
                                 {
                                    this.i3 = 1;
                                 }
                                 §§goto(addr25084);
                              }
                           }
                           this.i3 = this.i13;
                           addr20204:
                        }
                        else
                        {
                           this.i3 = li32(mstate.ebp + -304);
                           this.i3 = this.i3 - this.i0;
                           si32(this.i3,mstate.ebp + -304);
                           si32(this.i0,mstate.ebp + -308);
                           this.i3 = li32(mstate.ebp + -296);
                           mstate.esp = mstate.esp - 8;
                           si32(this.i3,mstate.esp);
                           si32(this.i0,mstate.esp + 4);
                           state = 70;
                           mstate.esp = mstate.esp - 4;
                           FSM___svfscanf.start();
                           return;
                        }
                     }
                     §§goto(addr20205);
                  }
                  else
                  {
                     this.f0 = 2;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i11,mstate.esp);
                     si32(this.i9,mstate.esp + 4);
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                  }
                  §§goto(addr21998);
               }
               §§goto(addr24975);
            case 66:
               this.i17 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i14 = this.i18 + -1;
               if(this.i17 >= this.i14)
               {
                  §§goto(addr20661);
               }
               else
               {
                  §§goto(addr20521);
               }
            case 67:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i3,mstate.ebp + -296);
               if(this.i1 != 0)
               {
                  §§goto(addr20742);
               }
               else
               {
                  §§goto(addr20779);
               }
               §§goto(addr25084);
            case 68:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i4 = li32(this.i13 + 16);
               this.i10 = li32(this.i17);
               this.i15 = this.i4 - this.i10;
               if(this.i4 != this.i10)
               {
                  this.i10 = this.i15;
               }
               else
               {
                  this.i4 = 0;
                  while(true)
                  {
                     this.i15 = this.i4 ^ -1;
                     this.i15 = this.i10 + this.i15;
                     this.i11 = this.i15 << 2;
                     this.i14 = this.i13 + this.i11;
                     this.i11 = this.i9 + this.i11;
                     this.i14 = li32(this.i14 + 20);
                     this.i11 = li32(this.i11 + 20);
                     if(this.i14 != this.i11)
                     {
                        this.i4 = uint(this.i14) < uint(this.i11)?-1:1;
                        this.i10 = this.i4;
                        break;
                     }
                     this.i4 = this.i4 + 1;
                     if(this.i15 <= 0)
                     {
                        this.i4 = 0;
                        this.i10 = this.i4;
                        break;
                     }
                  }
               }
               this.i4 = this.i10;
               if(this.i4 <= 0)
               {
                  this.i3 = this.i13;
               }
               else
               {
                  this.i4 = 17;
                  §§goto(addr21567);
               }
               §§goto(addr20204);
            case 69:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               si32(this.i3,mstate.ebp + -296);
               this.i13 = li32(this.i3 + 16);
               this.i13 = this.i13 + -1;
               this.i13 = this.i13 >> 5;
               this.i13 = this.i13 << 2;
               this.i3 = this.i3 + this.i13;
               this.i3 = li32(this.i3 + 20);
               this.i13 = uint(this.i3) < uint(65536)?16:0;
               this.i3 = this.i3 << this.i13;
               this.i4 = uint(this.i3) < uint(16777216)?8:0;
               this.i3 = this.i3 << this.i4;
               this.i10 = li32(mstate.ebp + -308);
               this.i15 = uint(this.i3) < uint(268435456)?4:0;
               this.i13 = this.i4 | this.i13;
               this.i3 = this.i3 << this.i15;
               this.i4 = this.i10 >> 5;
               this.i12 = uint(this.i3) < uint(1073741824)?2:0;
               this.i13 = this.i13 | this.i15;
               this.i15 = 32 - this.i4;
               this.i4 = uint(this.i10) < uint(32)?int(this.i4):int(this.i15);
               this.i13 = this.i13 | this.i12;
               this.i3 = this.i3 << this.i12;
               if(this.i3 <= -1)
               {
                  this.i3 = this.i13;
               }
               else
               {
                  this.i3 = this.i3 & 1073741824;
                  this.i13 = this.i13 + 1;
                  this.i3 = this.i3 == 0?32:int(this.i13);
               }
               if(this.i3 != this.i4)
               {
                  this.i3 = 33;
                  this.i13 = this.i10 + 1;
                  si32(this.i13,mstate.ebp + -308);
                  si32(this.i3,mstate.ebp + -312);
                  if(this.i1 != 0)
                  {
                     §§goto(addr20742);
                  }
                  §§goto(addr25084);
               }
               else
               {
                  this.i3 = 33;
                  si32(this.i3,mstate.ebp + -312);
                  if(this.i1 != 0)
                  {
                     §§goto(addr20742);
                  }
                  §§goto(addr25084);
               }
               §§goto(addr20778);
            case 70:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i3,mstate.ebp + -296);
               if(this.i1 != 0)
               {
                  this.i3 = li32(mstate.ebp + -1584);
               }
               else
               {
                  this.i3 = li32(mstate.ebp + -1584);
                  §§goto(addr24975);
               }
               §§goto(addr25084);
            case 71:
               this.f1 = mstate.st0;
               mstate.esp = mstate.esp + 8;
               if(this.f1 <= this.f0)
               {
                  this.i13 = 0;
                  §§goto(addr21964);
               }
               else
               {
                  this.f0 = 2147480000;
                  this.f1 = this.f1 * 0.5;
                  sf64(this.f1,mstate.ebp + -1392);
                  this.i13 = this.i15 == 0?1:0;
                  this.i10 = li32(mstate.ebp + -1392);
                  this.i14 = li32(mstate.ebp + -1388);
                  this.i18 = this.i13 & 1;
                  this.i16 = this.i15 == 0?32:16;
                  if(this.f1 >= this.f0)
                  {
                     this.i19 = 0;
                     this.i17 = this.i10;
                     this.i15 = this.i14;
                     this.i13 = this.i19;
                     this.i10 = this.i16;
                     this.f0 = this.f1;
                     this.i16 = this.i19;
                     this.i14 = this.i18;
                  }
                  else
                  {
                     this.i13 = int(this.f1);
                     this.f0 = Number(this.i13);
                     this.f0 = this.f1 - this.f0;
                     if(this.i4 != 0)
                     {
                        if(this.i4 != 1)
                        {
                           if(this.i4 == 2)
                           {
                              this.f1 = 0;
                              this.i15 = this.i15 != 0?1:0;
                              if(this.f0 > this.f1)
                              {
                                 this.i15 = this.i15 ^ 1;
                                 this.i15 = this.i15 & 1;
                                 if(this.i15 == 0)
                                 {
                                    addr22232:
                                    this.i15 = 48 - this.i16;
                                    this.i13 = this.i13 + 1;
                                 }
                                 addr22244:
                                 this.i10 = this.i15;
                                 this.i14 = this.i13;
                                 this.i13 = 0;
                                 this.f1 = Number(this.i14);
                                 sf64(this.f1,mstate.ebp + -1400);
                                 this.i15 = li32(mstate.ebp + -1400);
                                 this.i16 = li32(mstate.ebp + -1396);
                                 this.i17 = this.i15;
                                 this.i15 = this.i16;
                                 this.i16 = this.i14;
                                 this.i14 = this.i18;
                              }
                           }
                           addr22166:
                           this.i15 = this.i16;
                           §§goto(addr22244);
                        }
                        else
                        {
                           this.f1 = 0;
                           if(this.f0 > this.f1)
                           {
                              if(this.i15 == 0)
                              {
                                 §§goto(addr22232);
                              }
                              §§goto(addr22244);
                           }
                        }
                     }
                     else
                     {
                        this.f1 = 0.5;
                        if(this.f0 >= this.f1)
                        {
                           §§goto(addr22232);
                        }
                        §§goto(addr22244);
                     }
                     §§goto(addr22166);
                  }
               }
               §§goto(addr22298);
            case 72:
               this.i19 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i19,mstate.ebp + -296);
               this.i19 = li32(mstate.ebp + -304);
               this.i18 = this.i19 - this.i18;
               si32(this.i18,mstate.ebp + -304);
               si32(this.i0,mstate.ebp + -308);
               §§goto(addr22432);
            case 73:
               this.i18 = mstate.eax;
               si32(this.i17,mstate.ebp + -1408);
               si32(this.i15,mstate.ebp + -1404);
               mstate.esp = mstate.esp + 16;
               this.i15 = li32(mstate.ebp + -320);
               this.f1 = lf64(mstate.ebp + -1408);
               if(this.i15 <= -1)
               {
                  mstate.esp = mstate.esp - 8;
                  this.i15 = 0 - this.i15;
                  si32(this.i18,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
               }
               else if(this.i15 <= 0)
               {
                  this.i15 = this.i18;
                  addr22639:
                  this.i17 = li32(mstate.ebp + -296);
                  if(this.i14 != 0)
                  {
                     this.i14 = this.i17;
                     this.i18 = this.i15;
                     this.i15 = this.i17;
                     addr22664:
                     mstate.esp = mstate.esp - 8;
                     si32(this.i14,mstate.esp);
                     si32(this.i18,mstate.esp + 4);
                     state = 76;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
                  this.i14 = this.i15;
                  this.i18 = this.i17;
                  this.i15 = this.i17;
               }
               else
               {
                  mstate.esp = mstate.esp - 8;
                  si32(this.i18,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  state = 75;
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
                  return;
               }
               addr23308:
               this.i17 = 20;
               this.i19 = li32(this.i15 + 16);
               this.i20 = li32(this.i14 + 16);
               this.i21 = this.i19 < this.i20?int(this.i14):int(this.i15);
               this.i22 = li32(this.i21 + 4);
               mstate.esp = mstate.esp - 4;
               si32(this.i22,mstate.esp);
               state = 78;
               mstate.esp = mstate.esp - 4;
               FSM___svfscanf.start();
               return;
            case 74:
               mstate.esp = mstate.esp + 8;
               this.i15 = li32(mstate.ebp + -296);
               if(this.i14 != 0)
               {
                  this.i14 = this.i15;
                  §§goto(addr22664);
               }
               else
               {
                  this.i14 = this.i18;
                  this.i18 = this.i15;
                  §§goto(addr23308);
               }
            case 75:
               this.i15 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr22639);
            case 76:
               this.i14 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i14,mstate.ebp + -296);
               this.i17 = li32(this.i15 + 16);
               this.i17 = this.i17 + -1;
               if(this.i1 != 0)
               {
                  addr22732:
                  this.i14 = this.i18;
                  addr24448:
                  this.i18 = this.i10;
                  this.i10 = this.i14;
                  this.i14 = this.i15;
                  this.i15 = this.i18;
                  if(this.i10 != 0)
                  {
                     this.i17 = FSM___svfscanf;
                     this.i18 = li32(this.i10 + 4);
                     this.i18 = this.i18 << 2;
                     this.i17 = this.i17 + this.i18;
                     this.i18 = li32(this.i17);
                     si32(this.i18,this.i10);
                     si32(this.i10,this.i17);
                  }
                  if(this.i14 != 0)
                  {
                     this.i10 = FSM___svfscanf;
                     this.i17 = li32(this.i14 + 4);
                     this.i17 = this.i17 << 2;
                     this.i10 = this.i10 + this.i17;
                     this.i17 = li32(this.i10);
                     si32(this.i17,this.i14);
                     si32(this.i14,this.i10);
                  }
                  if(this.i13 != 0)
                  {
                     this.i3 = this.i11;
                     §§goto(addr20204);
                  }
                  else
                  {
                     this.i13 = this.i15;
                  }
                  §§goto(addr24975);
               }
               else
               {
                  this.i19 = li32(this.i14 + 16);
                  if(this.i19 > this.i17)
                  {
                     this.i19 = this.i17 << 2;
                     this.i19 = this.i14 + this.i19;
                     this.i19 = li32(this.i19 + 20);
                     this.i20 = uint(this.i19) < uint(65536)?16:0;
                     this.i19 = this.i19 << this.i20;
                     this.i21 = uint(this.i19) < uint(16777216)?8:0;
                     this.i19 = this.i19 << this.i21;
                     this.i22 = uint(this.i19) < uint(268435456)?4:0;
                     this.i20 = this.i21 | this.i20;
                     this.i19 = this.i19 << this.i22;
                     this.i21 = uint(this.i19) < uint(1073741824)?2:0;
                     this.i20 = this.i20 | this.i22;
                     this.i20 = this.i20 | this.i21;
                     this.i19 = this.i19 << this.i21;
                     if(this.i19 <= -1)
                     {
                        this.i19 = this.i20;
                     }
                     else
                     {
                        this.i19 = this.i19 & 1073741824;
                        this.i20 = this.i20 + 1;
                        this.i19 = this.i19 == 0?32:int(this.i20);
                     }
                     this.i17 = this.i17 << 2;
                     this.i17 = this.i15 + this.i17;
                     this.i17 = li32(this.i17 + 20);
                     this.i20 = uint(this.i17) < uint(65536)?16:0;
                     this.i17 = this.i17 << this.i20;
                     this.i21 = uint(this.i17) < uint(16777216)?8:0;
                     this.i17 = this.i17 << this.i21;
                     this.i22 = uint(this.i17) < uint(268435456)?4:0;
                     this.i20 = this.i21 | this.i20;
                     this.i17 = this.i17 << this.i22;
                     this.i21 = uint(this.i17) < uint(1073741824)?2:0;
                     this.i20 = this.i20 | this.i22;
                     this.i20 = this.i20 | this.i21;
                     this.i17 = this.i17 << this.i21;
                     if(this.i17 <= -1)
                     {
                        this.i17 = this.i20;
                     }
                     else
                     {
                        this.i17 = this.i17 & 1073741824;
                        this.i20 = this.i20 + 1;
                        this.i17 = this.i17 == 0?32:int(this.i20);
                     }
                     if(this.i19 <= this.i17)
                     {
                        §§goto(addr22732);
                     }
                  }
                  if(this.i3 == this.i12)
                  {
                     this.i1 = li32(mstate.ebp + -308);
                     this.i1 = this.i1 + -1;
                     si32(this.i1,mstate.ebp + -308);
                     if(this.i18 != 0)
                     {
                        this.i1 = FSM___svfscanf;
                        this.i14 = li32(this.i18 + 4);
                        this.i14 = this.i14 << 2;
                        this.i1 = this.i1 + this.i14;
                        this.i14 = li32(this.i1);
                        si32(this.i14,this.i18);
                        si32(this.i18,this.i1);
                     }
                     if(this.i15 != 0)
                     {
                        this.i1 = FSM___svfscanf;
                        this.i14 = li32(this.i15 + 4);
                        this.i14 = this.i14 << 2;
                        this.i1 = this.i1 + this.i14;
                        this.i14 = li32(this.i1);
                        si32(this.i14,this.i15);
                        si32(this.i15,this.i1);
                     }
                     if(this.i13 != 0)
                     {
                        this.i1 = 1;
                        this.i3 = this.i11;
                        §§goto(addr20204);
                     }
                     else
                     {
                        this.i1 = 1;
                        this.i13 = this.i10;
                     }
                     §§goto(addr24975);
                  }
                  else
                  {
                     this.i13 = 1;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i14,mstate.esp);
                     si32(this.i13,mstate.esp + 4);
                     state = 77;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
               }
               this.i10 = li32(mstate.ebp + -304);
               this.i14 = li32(mstate.ebp + -308);
               this.i10 = this.i14 + this.i10;
               if(this.i16 == this.i10)
               {
                  if(this.i13 != 0)
                  {
                     this.f1 = this.f1 * 5.0e-16;
                     this.f2 = this.f0 + -0.5;
                     this.f3 = -this.f1;
                     if(this.f2 < this.f3)
                     {
                        if(this.f0 > this.f1)
                        {
                           this.i3 = li32(mstate.ebp + -312);
                           this.i4 = li32(mstate.ebp + -1665);
                           this.i3 = this.i3 | this.i4;
                           si32(this.i3,mstate.ebp + -312);
                           if(this.i1 != 0)
                           {
                              addr24659:
                              this.i3 = li32(mstate.ebp + -1584);
                              this.i13 = this.i11;
                           }
                           else
                           {
                              addr24723:
                              this.i3 = li32(mstate.ebp + -1584);
                              this.i13 = this.i11;
                              §§goto(addr24975);
                           }
                           §§goto(addr25084);
                        }
                     }
                     else if(this.f2 > this.f1)
                     {
                        this.f1 = 1 - this.f1;
                        if(this.f1 > this.f0)
                        {
                           this.i3 = li32(mstate.ebp + -312);
                           this.i4 = li32(mstate.ebp + -1665);
                           this.i3 = this.i3 | this.i4;
                           si32(this.i3,mstate.ebp + -312);
                           if(this.i1 != 0)
                           {
                              §§goto(addr24659);
                           }
                           else
                           {
                              §§goto(addr24723);
                           }
                           §§goto(addr25084);
                        }
                     }
                  }
               }
               if(this.i1 != 0)
               {
                  this.i13 = 0;
               }
               else
               {
                  this.i13 = li32(mstate.ebp + -296);
                  mstate.esp = mstate.esp - 4;
                  si32(this.i13,mstate.esp);
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
               }
               addr24781:
               if(this.i7 != 0)
               {
                  this.i10 = FSM___svfscanf;
                  this.i14 = li32(this.i7 + 4);
                  this.i14 = this.i14 << 2;
                  this.i10 = this.i10 + this.i14;
                  this.i14 = li32(this.i10);
                  si32(this.i14,this.i7);
                  si32(this.i7,this.i10);
               }
               if(this.i8 != 0)
               {
                  this.i7 = FSM___svfscanf;
                  this.i10 = li32(this.i8 + 4);
                  this.i10 = this.i10 << 2;
                  this.i7 = this.i7 + this.i10;
                  this.i10 = li32(this.i7);
                  si32(this.i10,this.i8);
                  si32(this.i8,this.i7);
               }
               if(this.i9 != 0)
               {
                  this.i7 = FSM___svfscanf;
                  this.i8 = li32(this.i9 + 4);
                  this.i8 = this.i8 << 2;
                  this.i7 = this.i7 + this.i8;
                  this.i8 = li32(this.i7);
                  si32(this.i8,this.i9);
                  si32(this.i9,this.i7);
               }
               if(this.i11 == 0)
               {
                  this.i7 = this.i13;
               }
               else
               {
                  this.i7 = FSM___svfscanf;
                  this.i8 = li32(this.i11 + 4);
                  this.i8 = this.i8 << 2;
                  this.i7 = this.i7 + this.i8;
                  this.i8 = li32(this.i7);
                  si32(this.i8,this.i11);
                  si32(this.i11,this.i7);
                  this.i7 = this.i13;
               }
               §§goto(addr18771);
            case 77:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i13,mstate.ebp + -296);
               this.i13 = li32(mstate.ebp + -304);
               this.i13 = this.i13 + -1;
               si32(this.i13,mstate.ebp + -304);
               this.i3 = this.i3 + -1;
               this.i10 = 0;
               this.i14 = this.i18;
               this.i13 = this.i10;
               this.i18 = this.i10;
               §§goto(addr24448);
            case 78:
               this.i22 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i23 = li32(this.i21 + 16);
               this.i15 = this.i19 < this.i20?int(this.i15):int(this.i14);
               si32(this.i23,this.i22 + 16);
               this.i19 = li32(this.i15 + 16);
               this.i20 = this.i15 + 16;
               this.i23 = this.i22 + 16;
               this.i24 = this.i21 + 16;
               this.i25 = 0;
               this.i26 = this.i22;
               this.i27 = this.i21;
               this.i28 = this.i25;
               while(true)
               {
                  this.i29 = this.i21 + this.i17;
                  this.i29 = li32(this.i29);
                  this.i30 = this.i15 + this.i17;
                  this.i30 = li32(this.i30);
                  this.i31 = this.i29 & 65535;
                  this.i25 = this.i31 + this.i25;
                  this.i31 = this.i30 & 65535;
                  this.i25 = this.i25 + this.i31;
                  this.i31 = this.i25 >>> 16;
                  this.i30 = this.i30 >>> 16;
                  this.i29 = this.i29 >>> 16;
                  this.i29 = this.i30 + this.i29;
                  this.i30 = this.i31 & 1;
                  this.i29 = this.i29 + this.i30;
                  this.i30 = this.i26 + this.i17;
                  si16(this.i29,this.i30 + 2);
                  this.i29 = this.i29 >>> 16;
                  si16(this.i25,this.i30);
                  this.i17 = this.i17 + 4;
                  this.i25 = this.i28 + 1;
                  this.i29 = this.i29 & 1;
                  if(this.i25 < this.i19)
                  {
                     this.i28 = this.i25;
                     this.i25 = this.i29;
                     continue;
                  }
                  break;
               }
               this.i15 = li32(this.i24);
               this.i17 = li32(this.i20);
               this.i15 = this.i15 + this.i19;
               this.i15 = this.i15 - this.i17;
               if(this.i25 >= this.i15)
               {
                  this.i15 = this.i29;
               }
               else
               {
                  this.i17 = 0;
                  this.i19 = this.i29;
                  do
                  {
                     this.i20 = this.i25 + this.i17;
                     this.i20 = this.i20 << 2;
                     this.i21 = this.i27 + this.i20;
                     this.i21 = li32(this.i21 + 20);
                     this.i24 = this.i21 & 65535;
                     this.i19 = this.i24 + this.i19;
                     this.i24 = this.i19 >>> 16;
                     this.i21 = this.i21 >>> 16;
                     this.i24 = this.i24 & 1;
                     this.i21 = this.i24 + this.i21;
                     this.i20 = this.i22 + this.i20;
                     si16(this.i21,this.i20 + 22);
                     this.i21 = this.i21 >>> 16;
                     this.i17 = this.i17 + 1;
                     si16(this.i19,this.i20 + 20);
                     this.i19 = this.i21 & 1;
                     this.i20 = this.i25 + this.i17;
                  }
                  while(this.i20 < this.i15);
                  
                  this.i15 = this.i19;
               }
               if(this.i15 == 0)
               {
                  this.i15 = this.i22;
               }
               else
               {
                  this.i15 = li32(this.i23);
                  this.i17 = li32(this.i22 + 8);
                  if(this.i15 != this.i17)
                  {
                     this.i15 = this.i22;
                     addr23930:
                     this.i17 = 1;
                     this.i19 = li32(this.i15 + 16);
                     this.i20 = this.i19 << 2;
                     this.i20 = this.i15 + this.i20;
                     si32(this.i17,this.i20 + 20);
                     this.i17 = this.i19 + 1;
                     si32(this.i17,this.i15 + 16);
                  }
                  else
                  {
                     this.i15 = li32(this.i22 + 4);
                     mstate.esp = mstate.esp - 4;
                     this.i15 = this.i15 + 1;
                     si32(this.i15,mstate.esp);
                     state = 79;
                     mstate.esp = mstate.esp - 4;
                     FSM___svfscanf.start();
                     return;
                  }
               }
               si32(this.i15,mstate.ebp + -296);
               this.i17 = li32(this.i15 + 16);
               this.i19 = li32(this.i18 + 16);
               this.i17 = this.i17 + -1;
               if(this.i19 > this.i17)
               {
                  this.i19 = this.i17 << 2;
                  this.i19 = this.i15 + this.i19;
                  this.i19 = li32(this.i19 + 20);
                  this.i20 = uint(this.i19) < uint(65536)?16:0;
                  this.i19 = this.i19 << this.i20;
                  this.i21 = uint(this.i19) < uint(16777216)?8:0;
                  this.i19 = this.i19 << this.i21;
                  this.i22 = uint(this.i19) < uint(268435456)?4:0;
                  this.i20 = this.i21 | this.i20;
                  this.i19 = this.i19 << this.i22;
                  this.i21 = uint(this.i19) < uint(1073741824)?2:0;
                  this.i20 = this.i20 | this.i22;
                  this.i20 = this.i20 | this.i21;
                  this.i19 = this.i19 << this.i21;
                  if(this.i19 <= -1)
                  {
                     this.i19 = this.i20;
                  }
                  else
                  {
                     this.i19 = this.i19 & 1073741824;
                     this.i20 = this.i20 + 1;
                     this.i19 = this.i19 == 0?32:int(this.i20);
                  }
                  this.i17 = this.i17 << 2;
                  this.i17 = this.i18 + this.i17;
                  this.i17 = li32(this.i17 + 20);
                  this.i20 = uint(this.i17) < uint(65536)?16:0;
                  this.i17 = this.i17 << this.i20;
                  this.i21 = uint(this.i17) < uint(16777216)?8:0;
                  this.i17 = this.i17 << this.i21;
                  this.i22 = uint(this.i17) < uint(268435456)?4:0;
                  this.i20 = this.i21 | this.i20;
                  this.i17 = this.i17 << this.i22;
                  this.i21 = uint(this.i17) < uint(1073741824)?2:0;
                  this.i20 = this.i20 | this.i22;
                  this.i20 = this.i20 | this.i21;
                  this.i17 = this.i17 << this.i21;
                  if(this.i17 <= -1)
                  {
                     this.i17 = this.i20;
                  }
                  else
                  {
                     this.i17 = this.i17 & 1073741824;
                     this.i20 = this.i20 + 1;
                     this.i17 = this.i17 == 0?32:int(this.i20);
                  }
                  if(this.i19 >= this.i17)
                  {
                     addr24322:
                     this.i15 = this.i18;
                     this.i18 = this.i10;
                  }
                  §§goto(addr24448);
               }
               if(this.i1 != 0)
               {
                  this.i15 = li32(mstate.ebp + -308);
                  this.i15 = this.i15 + 1;
                  si32(this.i15,mstate.ebp + -308);
                  if(this.i15 == this.i0)
                  {
                     this.i1 = 0;
                     this.i15 = this.i18;
                     this.i18 = this.i10;
                  }
                  else
                  {
                     §§goto(addr24322);
                  }
               }
               else
               {
                  this.i10 = 1;
                  mstate.esp = mstate.esp - 8;
                  si32(this.i15,mstate.esp);
                  si32(this.i10,mstate.esp + 4);
                  mstate.esp = mstate.esp - 4;
                  FSM___svfscanf.start();
               }
               §§goto(addr24448);
            case 79:
               this.i15 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i17 = li32(this.i23);
               this.i19 = this.i15 + 12;
               this.i17 = this.i17 << 2;
               this.i20 = this.i22 + 12;
               this.i17 = this.i17 + 8;
               memcpy(this.i19,this.i20,this.i17);
               this.i17 = this.i22 + 4;
               if(this.i22 != 0)
               {
                  this.i19 = FSM___svfscanf;
                  this.i17 = li32(this.i17);
                  this.i17 = this.i17 << 2;
                  this.i17 = this.i19 + this.i17;
                  this.i19 = li32(this.i17);
                  si32(this.i19,this.i22);
                  si32(this.i22,this.i17);
               }
               §§goto(addr23930);
            case 80:
               mstate.esp = mstate.esp + 8;
               this.i15 = li32(mstate.ebp + -304);
               this.i15 = this.i15 + 1;
               si32(this.i15,mstate.ebp + -304);
               this.i3 = this.i3 + 1;
               this.i10 = 0;
               this.i15 = this.i18;
               this.i18 = this.i10;
               §§goto(addr24448);
            case 81:
               this.i13 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               §§goto(addr24781);
            case 82:
               this.i10 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i10,mstate.ebp + -296);
               this.i10 = li32(mstate.ebp + -304);
               this.i13 = this.i10 - this.i13;
               si32(this.i13,mstate.ebp + -304);
               this.i13 = this.i4;
               §§goto(addr25084);
            case 83:
               this.i8 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i8 != 0)
               {
                  §§goto(addr26291);
               }
               else
               {
                  §§goto(addr2748);
               }
               §§goto(addr26325);
         }
         this.i9 = this.i13;
         mstate.esp = mstate.esp - 8;
         si32(this.i7,mstate.esp);
         si32(this.i8,mstate.esp + 4);
         state = 65;
         mstate.esp = mstate.esp - 4;
         FSM___svfscanf.start();
      }
   }
}
