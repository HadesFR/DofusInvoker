package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_tag_error extends Machine
   {
      
      public static const intRegCount:int = 5;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public function FSM_tag_error()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_tag_error = null;
         _loc1_ = new FSM_tag_error();
         FSM_tag_error.gworker = _loc1_;
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
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               if(this.i2 == -1)
               {
                  this.i2 = FSM_tag_error;
               }
               else
               {
                  this.i3 = FSM_tag_error;
                  this.i2 = this.i2 << 2;
                  this.i2 = this.i3 + this.i2;
                  this.i2 = li32(this.i2);
               }
               this.i3 = FSM_tag_error;
               mstate.esp = mstate.esp - 8;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_tag_error.start();
            case 1:
               this.i4 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               if(this.i4 == this.i3)
               {
                  this.i4 = -1;
               }
               else
               {
                  this.i4 = li32(this.i4 + 8);
               }
               this.i3 = this.i4;
               if(this.i3 == -1)
               {
                  this.i3 = FSM_tag_error;
               }
               else
               {
                  this.i4 = FSM_tag_error;
                  this.i3 = this.i3 << 2;
                  this.i3 = this.i4 + this.i3;
                  this.i3 = li32(this.i3);
               }
               this.i4 = FSM_tag_error;
               mstate.esp = mstate.esp - 16;
               si32(this.i0,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_tag_error.start();
               return;
            case 2:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 16;
               mstate.esp = mstate.esp - 12;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 3;
               mstate.esp = mstate.esp - 4;
               FSM_tag_error.start();
               return;
            case 3:
               mstate.esp = mstate.esp + 12;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp = mstate.esp + 4;
               mstate.esp = mstate.esp + 4;
               mstate.gworker = caller;
               return;
         }
      }
   }
}
