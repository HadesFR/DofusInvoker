package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_loader_Croot extends Machine
   {
      
      public static const intRegCount:int = 7;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public function FSM_loader_Croot()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_loader_Croot = null;
         _loc1_ = new FSM_loader_Croot();
         FSM_loader_Croot.gworker = _loc1_;
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
               this.i0 = 0;
               mstate.esp = mstate.esp - 12;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               state = 1;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               this.i2 = li8(this.i0);
               this.i3 = this.i0;
               if(this.i2 != 46)
               {
                  this.i2 = this.i3;
                  while(true)
                  {
                     this.i4 = li8(this.i2);
                     if(this.i4 == 0)
                     {
                        this.i2 = 0;
                        break;
                     }
                     this.i4 = li8(this.i2 + 1);
                     this.i2 = this.i2 + 1;
                     this.i5 = this.i2;
                     if(this.i4 != 46)
                     {
                        this.i2 = this.i5;
                        continue;
                     }
                     break;
                  }
               }
               else
               {
                  this.i2 = this.i0;
               }
               if(this.i2 == 0)
               {
                  this.i0 = 0;
                  addr810:
                  mstate.eax = this.i0;
                  break;
               }
               this.i4 = li32(this.i1 + 16);
               this.i5 = li32(this.i4 + 68);
               this.i4 = li32(this.i4 + 64);
               this.i2 = this.i2 - this.i3;
               if(uint(this.i5) >= uint(this.i4))
               {
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 2;
                  mstate.esp = mstate.esp - 4;
                  FSM_loader_Croot.start();
                  return;
               }
               addr219:
               this.i3 = 4;
               this.i4 = li32(this.i1 + 8);
               mstate.esp = mstate.esp - 12;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 3;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 2:
               mstate.esp = mstate.esp + 4;
               §§goto(addr219);
            case 3:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,this.i4);
               si32(this.i3,this.i4 + 8);
               this.i2 = li32(this.i1 + 8);
               this.i2 = this.i2 + 12;
               si32(this.i2,this.i1 + 8);
               mstate.esp = mstate.esp - 12;
               this.i2 = -1;
               this.i3 = 0;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 4:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 12;
               this.i3 = FSM_loader_Croot;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 5;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 5:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               if(this.i2 == 0)
               {
                  addr423:
                  this.i0 = 1;
                  §§goto(addr810);
               }
               else
               {
                  mstate.esp = mstate.esp - 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  state = 6;
                  mstate.esp = mstate.esp - 4;
                  FSM_loader_Croot.start();
                  return;
               }
            case 6:
               mstate.esp = mstate.esp + 8;
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 7;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 7:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i3 != 0)
               {
                  if(this.i3 != 2)
                  {
                     this.i3 = 0;
                     mstate.esp = mstate.esp - 12;
                     this.i4 = -1;
                     si32(this.i1,mstate.esp);
                     si32(this.i4,mstate.esp + 4);
                     si32(this.i3,mstate.esp + 8);
                     state = 8;
                     mstate.esp = mstate.esp - 4;
                     FSM_loader_Croot.start();
                     return;
                  }
                  this.i3 = FSM_loader_Croot;
                  mstate.esp = mstate.esp - 16;
                  si32(this.i1,mstate.esp);
                  si32(this.i3,mstate.esp + 4);
                  si32(this.i0,mstate.esp + 8);
                  si32(this.i2,mstate.esp + 12);
                  state = 12;
                  mstate.esp = mstate.esp - 4;
                  FSM_loader_Croot.start();
                  return;
               }
               §§goto(addr423);
            case 8:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 12;
               this.i5 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i5,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 9;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 9:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.esp - 20;
               this.i6 = FSM_loader_Croot;
               si32(this.i1,mstate.esp);
               si32(this.i6,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               state = 10;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 10:
               mstate.esp = mstate.esp + 20;
               mstate.esp = mstate.esp - 16;
               this.i3 = FSM_loader_Croot;
               si32(this.i1,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 11;
               mstate.esp = mstate.esp - 4;
               FSM_loader_Croot.start();
               return;
            case 11:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               mstate.eax = this.i5;
               break;
            case 12:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               this.i0 = 1;
               §§goto(addr810);
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
