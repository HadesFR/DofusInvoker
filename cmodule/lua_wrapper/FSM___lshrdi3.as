package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___lshrdi3 extends Machine
   {
       
      
      public function FSM___lshrdi3()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         FSM___lshrdi3.esp = FSM___lshrdi3.esp - 4;
         si32(FSM___lshrdi3.ebp,FSM___lshrdi3.esp);
         FSM___lshrdi3.ebp = FSM___lshrdi3.esp;
         FSM___lshrdi3.esp = FSM___lshrdi3.esp - 0;
         _loc1_ = li32(FSM___lshrdi3.ebp + 16);
         _loc2_ = int(li32(FSM___lshrdi3.ebp + 20));
         _loc3_ = li32(FSM___lshrdi3.ebp + 8);
         _loc4_ = li32(FSM___lshrdi3.ebp + 12);
         _loc5_ = uint(_loc1_) < uint(32)?1:0;
         _loc6_ = _loc2_ == 0?1:0;
         _loc5_ = _loc6_ != 0?int(_loc5_):0;
         if(_loc5_ == 0)
         {
            _loc3_ = uint(_loc1_) < uint(64)?1:0;
            _loc2_ = int(_loc2_ == 0?1:0);
            _loc2_ = int(_loc2_ != 0?int(_loc3_):0);
            if(_loc2_ == 0)
            {
               _loc1_ = 0;
               _loc2_ = int(_loc1_);
            }
            else
            {
               _loc2_ = 0;
               _loc1_ = _loc1_ + -32;
               _loc1_ = _loc4_ >>> _loc1_;
            }
            addr211:
            FSM___lshrdi3.edx = _loc2_;
            FSM___lshrdi3.eax = _loc1_;
         }
         else
         {
            _loc2_ = _loc1_ | _loc2_;
            if(_loc2_ == 0)
            {
               _loc1_ = _loc3_;
               _loc2_ = int(_loc4_);
               §§goto(addr211);
            }
            else
            {
               _loc2_ = int(32 - _loc1_);
               _loc2_ = _loc4_ << _loc2_;
               _loc3_ = _loc3_ >>> _loc1_;
               _loc1_ = _loc4_ >>> _loc1_;
               _loc2_ = _loc2_ | _loc3_;
               FSM___lshrdi3.edx = _loc1_;
               FSM___lshrdi3.eax = _loc2_;
            }
         }
         FSM___lshrdi3.esp = FSM___lshrdi3.ebp;
         FSM___lshrdi3.ebp = li32(FSM___lshrdi3.esp);
         FSM___lshrdi3.esp = FSM___lshrdi3.esp + 4;
         FSM___lshrdi3.esp = FSM___lshrdi3.esp + 4;
      }
   }
}
