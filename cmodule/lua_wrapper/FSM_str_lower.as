package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM_str_lower extends Machine
   {
      
      public static const intRegCount:int = 8;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public function FSM_str_lower()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_str_lower = null;
         _loc1_ = new FSM_str_lower();
         FSM_str_lower.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 1040;
               this.i0 = mstate.ebp + -4;
               mstate.esp = mstate.esp - 12;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = 1;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               state = 1;
               mstate.esp = mstate.esp - 4;
               FSM_str_lower.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               this.i2 = mstate.ebp + -1040;
               mstate.esp = mstate.esp + 12;
               si32(this.i1,mstate.ebp + -1032);
               this.i1 = this.i2 + 12;
               si32(this.i1,mstate.ebp + -1040);
               this.i3 = 0;
               si32(this.i3,mstate.ebp + -1036);
               this.i3 = li32(mstate.ebp + -4);
               this.i4 = this.i2 + 4;
               this.i5 = this.i2 + 8;
               if(this.i3 != 0)
               {
                  this.i3 = mstate.ebp + -1040;
                  this.i3 = this.i3 + 1036;
                  this.i6 = 0;
                  addr167:
                  while(uint(this.i1) >= uint(this.i3))
                  {
                     this.i1 = mstate.ebp + -1040;
                     mstate.esp = mstate.esp - 4;
                     si32(this.i1,mstate.esp);
                     state = 2;
                     mstate.esp = mstate.esp - 4;
                     FSM_str_lower.start();
                     return;
                  }
                  break;
               }
               addr340:
               this.i0 = mstate.ebp + -1040;
               mstate.esp = mstate.esp - 4;
               si32(this.i0,mstate.esp);
               state = 4;
               mstate.esp = mstate.esp - 4;
               FSM_str_lower.start();
               return;
            case 2:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               if(this.i1 != 0)
               {
                  this.i1 = mstate.ebp + -1040;
                  mstate.esp = mstate.esp - 4;
                  si32(this.i1,mstate.esp);
                  state = 3;
                  mstate.esp = mstate.esp - 4;
                  FSM_str_lower.start();
                  return;
               }
               break;
            case 3:
               mstate.esp = mstate.esp + 4;
               break;
            case 4:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i0 = li32(this.i4);
               this.i1 = li32(this.i5);
               mstate.esp = mstate.esp - 8;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 5;
               mstate.esp = mstate.esp - 4;
               FSM_str_lower.start();
               return;
            case 5:
               mstate.esp = mstate.esp + 8;
               this.i0 = 1;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp = mstate.esp + 4;
               mstate.esp = mstate.esp + 4;
               mstate.gworker = caller;
               return;
         }
         while(true)
         {
            this.i1 = this.i0 + this.i6;
            this.i1 = li8(this.i1);
            this.i7 = li32(FSM_str_lower);
            this.i1 = this.i1 << 2;
            this.i1 = this.i7 + this.i1;
            this.i7 = li32(this.i2);
            this.i1 = li8(this.i1 + 1076);
            si8(this.i1,this.i7);
            this.i1 = this.i7 + 1;
            si32(this.i1,this.i2);
            this.i7 = li32(mstate.ebp + -4);
            this.i6 = this.i6 + 1;
            if(uint(this.i6) < uint(this.i7))
            {
               §§goto(addr167);
            }
            §§goto(addr340);
         }
      }
   }
}
