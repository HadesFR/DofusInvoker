package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM___collate_substitute extends Machine
   {
      
      public static const intRegCount:int = 10;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i8:int;
      
      public var i7:int;
      
      public var i9:int;
      
      public function FSM___collate_substitute()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___collate_substitute = null;
         _loc1_ = new FSM___collate_substitute();
         FSM___collate_substitute.gworker = _loc1_;
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
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li8(this.i0);
               this.i2 = this.i0;
               if(this.i1 != 0)
               {
                  this.i3 = this.i2;
                  while(true)
                  {
                     this.i4 = li8(this.i3 + 1);
                     this.i3 = this.i3 + 1;
                     this.i5 = this.i3;
                     if(this.i4 != 0)
                     {
                        this.i3 = this.i5;
                        continue;
                     }
                     break;
                  }
               }
               else
               {
                  this.i3 = this.i0;
               }
               this.i3 = this.i3 - this.i2;
               if(this.i0 != 0)
               {
                  this.i0 = this.i1 & 255;
                  if(this.i0 != 0)
                  {
                     this.i0 = 0;
                     this.i1 = this.i3 >> 31;
                     this.i1 = this.i1 >>> 29;
                     this.i1 = this.i3 + this.i1;
                     this.i1 = this.i1 >> 3;
                     mstate.esp = mstate.esp - 8;
                     this.i1 = this.i1 + this.i3;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     state = 2;
                     mstate.esp = mstate.esp - 4;
                     FSM___collate_substitute.start();
                     return;
                  }
               }
               this.i2 = 1;
               mstate.esp = mstate.esp - 8;
               this.i3 = 0;
               si32(this.i3,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 6;
               mstate.esp = mstate.esp - 4;
               FSM___collate_substitute.start();
               return;
            case 1:
               mstate.eax = this.i2;
               break;
            case 2:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i0 != 0)
               {
                  this.i3 = 0;
                  this.i4 = this.i1;
                  addr611:
                  do
                  {
                     this.i6 = this.i2;
                     this.i5 = this.i3;
                     this.i3 = this.i0;
                     this.i0 = li8(this.i6);
                     this.i2 = this.i6;
                  }
                  while(this.i0 != 0);
                  
                  mstate.eax = this.i3;
                  break;
               }
               state = 3;
               mstate.esp = mstate.esp - 4;
               FSM___collate_substitute.start();
               return;
            case 3:
               while(true)
               {
                  this.i7 = this.i0 & 255;
                  this.i8 = li32(FSM___collate_substitute);
                  this.i7 = this.i7 * 10;
                  this.i7 = this.i8 + this.i7;
                  this.i9 = li8(this.i7);
                  if(this.i9 == 0)
                  {
                     this.i0 = this.i7;
                  }
                  else
                  {
                     this.i0 = this.i0 & 255;
                     this.i0 = this.i0 * 10;
                     this.i0 = this.i8 + this.i0;
                     while(true)
                     {
                        this.i8 = li8(this.i0 + 1);
                        this.i0 = this.i0 + 1;
                        this.i9 = this.i0;
                        if(this.i8 != 0)
                        {
                           this.i0 = this.i9;
                           continue;
                        }
                        break;
                     }
                  }
                  this.i0 = this.i0 - this.i7;
                  this.i0 = this.i0 + this.i5;
                  if(this.i4 > this.i0)
                  {
                     addr473:
                     while(true)
                     {
                        this.i7 = this.i3;
                        this.i2 = li8(this.i2);
                        this.i3 = li32(FSM___collate_substitute);
                        this.i8 = this.i2 * 10;
                        this.i8 = this.i3 + this.i8;
                        this.i8 = li8(this.i8);
                        this.i9 = this.i7 + this.i5;
                        si8(this.i8,this.i9);
                        this.i9 = this.i7;
                        if(this.i8 != 0)
                        {
                           this.i8 = 1;
                           this.i2 = this.i2 & 255;
                           this.i2 = this.i2 * 10;
                           this.i5 = this.i5 + this.i9;
                           this.i2 = this.i3 + this.i2;
                           this.i3 = this.i8;
                           while(true)
                           {
                              this.i8 = this.i2 + this.i3;
                              this.i8 = li8(this.i8);
                              this.i9 = this.i5 + this.i3;
                              si8(this.i8,this.i9);
                              this.i3 = this.i3 + 1;
                              if(this.i8 != 0)
                              {
                                 continue;
                              }
                              break;
                           }
                        }
                        this.i2 = this.i6 + 1;
                        this.i3 = this.i0;
                        this.i0 = this.i7;
                        §§goto(addr611);
                     }
                  }
                  else
                  {
                     break;
                  }
               }
               mstate.esp = mstate.esp - 8;
               this.i4 = this.i0 + this.i1;
               si32(this.i3,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM___collate_substitute.start();
               return;
            case 4:
               this.i7 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i7 == 0)
               {
                  if(this.i3 != 0)
                  {
                     this.i8 = 0;
                     mstate.esp = mstate.esp - 8;
                     si32(this.i3,mstate.esp);
                     si32(this.i8,mstate.esp + 4);
                     state = 5;
                     mstate.esp = mstate.esp - 4;
                     FSM___collate_substitute.start();
                     return;
                  }
               }
               addr463:
               if(this.i7 != 0)
               {
                  this.i3 = this.i7;
                  §§goto(addr473);
               }
               else
               {
                  state = 7;
                  mstate.esp = mstate.esp - 4;
                  FSM___collate_substitute.start();
                  return;
               }
            case 5:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               §§goto(addr463);
            case 6:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i2 == 0)
               {
                  this.i2 = 0;
               }
               else
               {
                  this.i3 = li8(FSM___collate_substitute);
                  si8(this.i3,this.i2);
               }
               if(this.i2 == 0)
               {
                  state = 1;
                  mstate.esp = mstate.esp - 4;
                  FSM___collate_substitute.start();
                  return;
               }
            default:
               throw "Invalid state in ___collate_substitute";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
