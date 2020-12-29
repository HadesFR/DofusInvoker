package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_resume_error extends Machine
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
      
      public function FSM_resume_error()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_resume_error = null;
         _loc1_ = new FSM_resume_error();
         FSM_resume_error.gworker = _loc1_;
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
               this.i1 = li32(this.i0 + 20);
               this.i1 = li32(this.i1);
               this.i2 = li32(mstate.ebp + 12);
               si32(this.i1,this.i0 + 8);
               this.i3 = li8(this.i2);
               this.i4 = this.i0 + 8;
               this.i5 = this.i2;
               if(this.i3 != 0)
               {
                  this.i3 = this.i5;
                  while(true)
                  {
                     this.i6 = li8(this.i3 + 1);
                     this.i3 = this.i3 + 1;
                     this.i7 = this.i3;
                     if(this.i6 != 0)
                     {
                        this.i3 = this.i7;
                        continue;
                     }
                     break;
                  }
               }
               else
               {
                  this.i3 = this.i2;
               }
               this.i6 = 4;
               mstate.esp = mstate.esp - 12;
               this.i3 = this.i3 - this.i5;
               si32(this.i0,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_resume_error.start();
               return;
            case 1:
               mstate.esp = mstate.esp + 8;
               addr159:
               this.i2 = li32(this.i4);
               this.i2 = this.i2 + 12;
               si32(this.i2,this.i4);
               break;
            case 2:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               si32(this.i2,this.i1);
               si32(this.i6,this.i1 + 8);
               this.i1 = li32(this.i0 + 28);
               this.i2 = li32(this.i4);
               this.i1 = this.i1 - this.i2;
               if(this.i1 <= 12)
               {
                  this.i2 = li32(this.i0 + 44);
                  if(this.i2 >= 1)
                  {
                     mstate.esp = mstate.esp - 8;
                     this.i2 = this.i2 << 1;
                     si32(this.i0,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     state = 3;
                     mstate.esp = mstate.esp - 4;
                     FSM_resume_error.start();
                     return;
                  }
                  mstate.esp = mstate.esp - 8;
                  this.i2 = this.i2 + 1;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  state = 1;
                  mstate.esp = mstate.esp - 4;
                  FSM_resume_error.start();
                  return;
               }
               this.i0 = this.i2 + 12;
               si32(this.i0,this.i4);
               break;
            case 3:
               mstate.esp = mstate.esp + 8;
               §§goto(addr159);
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
