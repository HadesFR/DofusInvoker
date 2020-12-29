package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   
   public final class FSM___find_arguments extends Machine
   {
      
      public static const intRegCount:int = 13;
      
      public static const NumberRegCount:int = 1;
       
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var f0:Number;
      
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
      
      public function FSM___find_arguments()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___find_arguments = null;
         _loc1_ = new FSM___find_arguments();
         FSM___find_arguments.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 52;
               this.i0 = mstate.ebp + -48;
               si32(this.i0,mstate.ebp + -52);
               this.i1 = 8;
               si32(this.i1,mstate.ebp + -4);
               this.i1 = 0;
               si32(this.i1,mstate.ebp + -48);
               si32(this.i1,mstate.ebp + -44);
               si32(this.i1,mstate.ebp + -40);
               si32(this.i1,mstate.ebp + -36);
               si32(this.i1,mstate.ebp + -32);
               si32(this.i1,mstate.ebp + -28);
               si32(this.i1,mstate.ebp + -24);
               si32(this.i1,mstate.ebp + -20);
               this.i2 = 1;
               this.i3 = li32(mstate.ebp + 8);
               this.i4 = li32(mstate.ebp + 12);
               this.i5 = li32(mstate.ebp + 16);
               continue loop0;
            case 1:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               si32(this.i3,this.i5);
               si32(this.i2,this.i3);
               this.i2 = li32(mstate.ebp + -52);
               if(this.i1 >= 1)
               {
                  this.i3 = 1;
                  loop13:
                  while(true)
                  {
                     this.i6 = this.i3 << 2;
                     this.i2 = this.i2 + this.i6;
                     this.i2 = li32(this.i2);
                     if(this.i2 <= 11)
                     {
                        if(this.i2 <= 5)
                        {
                           if(this.i2 <= 2)
                           {
                              if(this.i2 != 0)
                              {
                                 if(this.i2 != 1)
                                 {
                                    if(this.i2 != 2)
                                    {
                                       addr7407:
                                       this.i2 = this.i3 + 1;
                                    }
                                    else
                                    {
                                       this.i2 = li32(this.i5);
                                       this.i6 = li32(this.i4);
                                       this.i7 = this.i3 << 3;
                                       this.i2 = this.i2 + this.i7;
                                       si32(this.i6,this.i2);
                                       this.i2 = this.i3 + 1;
                                       this.i4 = this.i4 + 4;
                                    }
                                 }
                                 else
                                 {
                                    this.i2 = li32(this.i5);
                                    this.i6 = li32(this.i4);
                                    this.i7 = this.i3 << 3;
                                    this.i2 = this.i2 + this.i7;
                                    si32(this.i6,this.i2);
                                    this.i2 = this.i3 + 1;
                                    this.i4 = this.i4 + 4;
                                 }
                              }
                              else
                              {
                                 this.i2 = li32(this.i5);
                                 this.i6 = li32(this.i4);
                                 this.i7 = this.i3 << 3;
                                 this.i2 = this.i2 + this.i7;
                                 si32(this.i6,this.i2);
                                 this.i2 = this.i3 + 1;
                                 this.i4 = this.i4 + 4;
                              }
                           }
                           else if(this.i2 != 3)
                           {
                              if(this.i2 != 4)
                              {
                                 if(this.i2 != 5)
                                 {
                                    §§goto(addr7407);
                                 }
                                 else
                                 {
                                    this.i2 = li32(this.i5);
                                    this.i6 = li32(this.i4);
                                    this.i7 = this.i3 << 3;
                                    this.i2 = this.i2 + this.i7;
                                    si32(this.i6,this.i2);
                                    this.i2 = this.i3 + 1;
                                    this.i4 = this.i4 + 4;
                                 }
                              }
                              else
                              {
                                 this.i2 = li32(this.i5);
                                 this.i6 = li32(this.i4);
                                 this.i7 = this.i3 << 3;
                                 this.i2 = this.i2 + this.i7;
                                 si32(this.i6,this.i2);
                                 this.i2 = this.i3 + 1;
                                 this.i4 = this.i4 + 4;
                              }
                           }
                           else
                           {
                              this.i2 = li32(this.i5);
                              this.i6 = li32(this.i4);
                              this.i7 = this.i3 << 3;
                              this.i2 = this.i2 + this.i7;
                              si32(this.i6,this.i2);
                              this.i2 = this.i3 + 1;
                              this.i4 = this.i4 + 4;
                           }
                        }
                        else if(this.i2 <= 8)
                        {
                           if(this.i2 != 6)
                           {
                              if(this.i2 != 7)
                              {
                                 if(this.i2 != 8)
                                 {
                                    §§goto(addr7407);
                                 }
                                 else
                                 {
                                    this.i2 = li32(this.i5);
                                    this.i6 = this.i3 << 3;
                                    this.i7 = li32(this.i4);
                                    this.i8 = li32(this.i4 + 4);
                                    this.i2 = this.i2 + this.i6;
                                    si32(this.i7,this.i2);
                                    si32(this.i8,this.i2 + 4);
                                    this.i2 = this.i3 + 1;
                                    this.i4 = this.i4 + 8;
                                 }
                              }
                              else
                              {
                                 this.i2 = li32(this.i5);
                                 this.i6 = li32(this.i4);
                                 this.i7 = this.i3 << 3;
                                 this.i2 = this.i2 + this.i7;
                                 si32(this.i6,this.i2);
                                 this.i2 = this.i3 + 1;
                                 this.i4 = this.i4 + 4;
                              }
                           }
                           else
                           {
                              this.i2 = li32(this.i5);
                              this.i6 = li32(this.i4);
                              this.i7 = this.i3 << 3;
                              this.i2 = this.i2 + this.i7;
                              si32(this.i6,this.i2);
                              this.i2 = this.i3 + 1;
                              this.i4 = this.i4 + 4;
                           }
                        }
                        else if(this.i2 != 9)
                        {
                           if(this.i2 != 10)
                           {
                              if(this.i2 != 11)
                              {
                                 §§goto(addr7407);
                              }
                              else
                              {
                                 this.i2 = li32(this.i5);
                                 this.i6 = li32(this.i4);
                                 this.i7 = this.i3 << 3;
                                 this.i2 = this.i2 + this.i7;
                                 si32(this.i6,this.i2);
                                 this.i2 = this.i3 + 1;
                                 this.i4 = this.i4 + 4;
                              }
                           }
                           else
                           {
                              this.i2 = li32(this.i5);
                              this.i6 = li32(this.i4);
                              this.i7 = this.i3 << 3;
                              this.i2 = this.i2 + this.i7;
                              si32(this.i6,this.i2);
                              this.i2 = this.i3 + 1;
                              this.i4 = this.i4 + 4;
                           }
                        }
                        else
                        {
                           this.i2 = li32(this.i5);
                           this.i6 = this.i3 << 3;
                           this.i7 = li32(this.i4);
                           this.i8 = li32(this.i4 + 4);
                           this.i2 = this.i2 + this.i6;
                           si32(this.i7,this.i2);
                           si32(this.i8,this.i2 + 4);
                           this.i2 = this.i3 + 1;
                           this.i4 = this.i4 + 8;
                        }
                     }
                     else if(this.i2 <= 17)
                     {
                        if(this.i2 <= 14)
                        {
                           if(this.i2 != 12)
                           {
                              if(this.i2 != 13)
                              {
                                 if(this.i2 != 14)
                                 {
                                    §§goto(addr7407);
                                 }
                                 else
                                 {
                                    this.i2 = li32(this.i5);
                                    this.i6 = li32(this.i4);
                                    this.i7 = this.i3 << 3;
                                    this.i2 = this.i2 + this.i7;
                                    si32(this.i6,this.i2);
                                    this.i2 = this.i3 + 1;
                                    this.i4 = this.i4 + 4;
                                 }
                              }
                              else
                              {
                                 this.i2 = li32(this.i5);
                                 this.i6 = li32(this.i4);
                                 this.i7 = this.i3 << 3;
                                 this.i2 = this.i2 + this.i7;
                                 si32(this.i6,this.i2);
                                 this.i2 = this.i3 + 1;
                                 this.i4 = this.i4 + 4;
                              }
                           }
                           else
                           {
                              this.i2 = li32(this.i5);
                              this.i6 = li32(this.i4);
                              this.i7 = this.i3 << 3;
                              this.i2 = this.i2 + this.i7;
                              si32(this.i6,this.i2);
                              this.i2 = this.i3 + 1;
                              this.i4 = this.i4 + 4;
                           }
                        }
                        else if(this.i2 != 15)
                        {
                           if(this.i2 != 16)
                           {
                              if(this.i2 != 17)
                              {
                                 §§goto(addr7407);
                              }
                              else
                              {
                                 this.i2 = li32(this.i5);
                                 this.i6 = li32(this.i4);
                                 this.i7 = this.i3 << 3;
                                 this.i2 = this.i2 + this.i7;
                                 si32(this.i6,this.i2);
                                 this.i2 = this.i3 + 1;
                                 this.i4 = this.i4 + 4;
                              }
                           }
                           else
                           {
                              this.i2 = li32(this.i5);
                              this.i6 = this.i3 << 3;
                              this.i7 = li32(this.i4);
                              this.i8 = li32(this.i4 + 4);
                              this.i2 = this.i2 + this.i6;
                              si32(this.i7,this.i2);
                              si32(this.i8,this.i2 + 4);
                              this.i2 = this.i3 + 1;
                              this.i4 = this.i4 + 8;
                           }
                        }
                        else
                        {
                           this.i2 = li32(this.i5);
                           this.i6 = this.i3 << 3;
                           this.i7 = li32(this.i4);
                           this.i8 = li32(this.i4 + 4);
                           this.i2 = this.i2 + this.i6;
                           si32(this.i7,this.i2);
                           si32(this.i8,this.i2 + 4);
                           this.i2 = this.i3 + 1;
                           this.i4 = this.i4 + 8;
                        }
                     }
                     else if(this.i2 <= 20)
                     {
                        if(this.i2 != 18)
                        {
                           if(this.i2 != 19)
                           {
                              if(this.i2 != 20)
                              {
                                 §§goto(addr7407);
                              }
                              else
                              {
                                 this.i2 = li32(this.i5);
                                 this.i6 = li32(this.i4);
                                 this.i7 = this.i3 << 3;
                                 this.i2 = this.i2 + this.i7;
                                 si32(this.i6,this.i2);
                                 this.i2 = this.i3 + 1;
                                 this.i4 = this.i4 + 4;
                              }
                           }
                           else
                           {
                              this.i2 = li32(this.i5);
                              this.i6 = li32(this.i4);
                              this.i7 = this.i3 << 3;
                              this.i2 = this.i2 + this.i7;
                              si32(this.i6,this.i2);
                              this.i2 = this.i3 + 1;
                              this.i4 = this.i4 + 4;
                           }
                        }
                        else
                        {
                           this.i2 = li32(this.i5);
                           this.i6 = li32(this.i4);
                           this.i7 = this.i3 << 3;
                           this.i2 = this.i2 + this.i7;
                           si32(this.i6,this.i2);
                           this.i2 = this.i3 + 1;
                           this.i4 = this.i4 + 4;
                        }
                     }
                     else if(this.i2 <= 22)
                     {
                        if(this.i2 != 21)
                        {
                           if(this.i2 != 22)
                           {
                              §§goto(addr7407);
                           }
                           else
                           {
                              this.i2 = li32(this.i5);
                              this.f0 = lf64(this.i4);
                              this.i6 = this.i3 << 3;
                              this.i2 = this.i2 + this.i6;
                              sf64(this.f0,this.i2);
                              this.i2 = this.i3 + 1;
                              this.i4 = this.i4 + 8;
                           }
                        }
                        else
                        {
                           this.i2 = li32(this.i5);
                           this.f0 = lf64(this.i4);
                           this.i6 = this.i3 << 3;
                           this.i2 = this.i2 + this.i6;
                           sf64(this.f0,this.i2);
                           this.i2 = this.i3 + 1;
                           this.i4 = this.i4 + 8;
                        }
                     }
                     else if(this.i2 != 23)
                     {
                        if(this.i2 != 24)
                        {
                           §§goto(addr7407);
                        }
                        else
                        {
                           this.i2 = li32(this.i5);
                           this.i6 = li32(this.i4);
                           this.i7 = this.i3 << 3;
                           this.i2 = this.i2 + this.i7;
                           si32(this.i6,this.i2);
                           this.i4 = this.i4 + 4;
                        }
                        §§goto(addr7407);
                     }
                     else
                     {
                        this.i2 = li32(this.i5);
                        this.i6 = li32(this.i4);
                        this.i7 = this.i3 << 3;
                        this.i2 = this.i2 + this.i7;
                        si32(this.i6,this.i2);
                        this.i2 = this.i3 + 1;
                        this.i4 = this.i4 + 4;
                     }
                     while(true)
                     {
                        this.i6 = li32(mstate.ebp + -52);
                        if(this.i2 <= this.i1)
                        {
                           this.i3 = this.i2;
                           this.i2 = this.i6;
                           continue loop13;
                        }
                        break;
                     }
                     this.i4 = this.i6;
                     this.i1 = this.i6;
                  }
               }
               else
               {
                  this.i4 = this.i2;
                  this.i1 = this.i2;
               }
               this.i2 = this.i4;
               if(this.i1 != 0)
               {
                  if(this.i0 != this.i2)
                  {
                     this.i0 = 0;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i2,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     state = 39;
                     mstate.esp = mstate.esp - 4;
                     FSM___find_arguments.start();
                     return;
                  }
                  break;
               }
               break;
            case 2:
               mstate.esp = mstate.esp + 12;
               continue loop14;
            case 3:
               mstate.esp = mstate.esp + 12;
               continue loop16;
            case 4:
               mstate.esp = mstate.esp + 12;
               continue loop17;
            case 5:
               mstate.esp = mstate.esp + 12;
               continue loop18;
            case 6:
               mstate.esp = mstate.esp + 12;
               continue loop20;
            case 7:
               mstate.esp = mstate.esp + 12;
               while(true)
               {
                  this.i8 = 2;
                  this.i9 = li32(mstate.ebp + -52);
                  this.i10 = this.i3 << 2;
                  this.i9 = this.i9 + this.i10;
                  si32(this.i8,this.i9);
                  this.i1 = this.i3 > this.i1?int(this.i3):int(this.i1);
                  this.i3 = this.i7 + 1;
                  continue loop19;
               }
            case 8:
               mstate.esp = mstate.esp + 12;
               while(true)
               {
                  this.i3 = 2;
                  this.i7 = li32(mstate.ebp + -52);
                  this.i9 = this.i2 << 2;
                  this.i7 = this.i7 + this.i9;
                  si32(this.i3,this.i7);
                  this.i1 = this.i2 > this.i1?int(this.i2):int(this.i1);
                  this.i2 = this.i2 + 1;
                  this.i3 = this.i8;
                  continue loop19;
               }
            case 9:
               mstate.esp = mstate.esp + 12;
               continue loop23;
            case 10:
               mstate.esp = mstate.esp + 12;
               continue loop24;
            case 11:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 13;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i6 = this.i2 + 1;
               this.i2 = this.i6;
               continue loop15;
            case 12:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 11;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i6 = this.i2 + 1;
               this.i2 = this.i6;
               continue loop15;
            case 13:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i6 = this.i6 + this.i7;
               this.i7 = 8;
               si32(this.i7,this.i6);
               this.i6 = this.i2 + 1;
               this.i2 = this.i6;
               continue loop15;
            case 14:
               mstate.esp = mstate.esp + 12;
               this.i1 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 5;
               this.i1 = this.i1 + this.i7;
               si32(this.i8,this.i1);
               this.i2 = this.i2 + 1;
               this.i1 = this.i6;
               continue loop15;
            case 15:
               mstate.esp = mstate.esp + 12;
               continue loop25;
            case 16:
               mstate.esp = mstate.esp + 12;
               continue loop26;
            case 17:
               mstate.esp = mstate.esp + 12;
               continue loop27;
            case 18:
               mstate.esp = mstate.esp + 12;
               continue loop28;
            case 19:
               mstate.esp = mstate.esp + 12;
               continue loop29;
            case 20:
               mstate.esp = mstate.esp + 12;
               continue loop30;
            case 21:
               mstate.esp = mstate.esp + 12;
               continue loop31;
            case 22:
               mstate.esp = mstate.esp + 12;
               continue loop32;
            case 23:
               mstate.esp = mstate.esp + 12;
               continue loop33;
            case 24:
               mstate.esp = mstate.esp + 12;
               continue loop34;
            case 25:
               mstate.esp = mstate.esp + 12;
               continue loop35;
            case 26:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 13;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i6 = this.i2 + 1;
               this.i2 = this.i6;
               continue loop15;
            case 27:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 11;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i6 = this.i2 + 1;
               this.i2 = this.i6;
               continue loop15;
            case 28:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 9;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i6 = this.i2 + 1;
               this.i2 = this.i6;
               continue loop15;
            case 29:
               mstate.esp = mstate.esp + 12;
               this.i1 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 6;
               this.i1 = this.i1 + this.i7;
               si32(this.i8,this.i1);
               this.i2 = this.i2 + 1;
               this.i1 = this.i6;
               continue loop15;
            case 30:
               mstate.esp = mstate.esp + 12;
               continue loop36;
            case 31:
               mstate.esp = mstate.esp + 12;
               continue loop37;
            case 32:
               mstate.esp = mstate.esp + 12;
               continue loop38;
            case 33:
               mstate.esp = mstate.esp + 12;
               continue loop39;
            case 34:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 13;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i2 = this.i2 + 1;
               continue loop15;
            case 35:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 11;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i2 = this.i2 + 1;
               continue loop15;
            case 36:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 9;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i2 = this.i2 + 1;
               continue loop15;
            case 37:
               mstate.esp = mstate.esp + 12;
               this.i6 = li32(mstate.ebp + -52);
               this.i7 = this.i2 << 2;
               this.i8 = 6;
               this.i6 = this.i6 + this.i7;
               si32(this.i8,this.i6);
               this.i2 = this.i2 + 1;
               continue loop15;
            case 38:
               mstate.esp = mstate.esp + 12;
               continue loop40;
            case 39:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
