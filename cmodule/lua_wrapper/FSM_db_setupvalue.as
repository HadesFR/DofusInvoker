package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_db_setupvalue extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM_db_setupvalue()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_db_setupvalue = null;
         _loc1_ = new FSM_db_setupvalue();
         FSM_db_setupvalue.gworker = _loc1_;
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
               this.i0 = 3;
               mstate.esp = mstate.esp - 8;
               this.i1 = li32(mstate.ebp + 8);
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               mstate.esp = mstate.esp - 4;
               FSM_db_setupvalue.start();
            case 1:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i2 = FSM_db_setupvalue;
               if(this.i0 != this.i2)
               {
                  this.i0 = li32(this.i0 + 8);
                  if(this.i0 != -1)
                  {
                     break;
                  }
               }
               this.i0 = FSM_db_setupvalue;
               mstate.esp = mstate.esp - 12;
               this.i2 = 3;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               state = 2;
               mstate.esp = mstate.esp - 4;
               FSM_db_setupvalue.start();
               return;
            case 2:
               mstate.esp = mstate.esp + 12;
               break;
            case 3:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp = mstate.esp + 4;
               mstate.esp = mstate.esp + 4;
               mstate.gworker = caller;
               return;
         }
         this.i0 = 0;
         mstate.esp = mstate.esp - 8;
         si32(this.i1,mstate.esp);
         si32(this.i0,mstate.esp + 4);
         state = 3;
         mstate.esp = mstate.esp - 4;
         FSM_db_setupvalue.start();
      }
   }
}
