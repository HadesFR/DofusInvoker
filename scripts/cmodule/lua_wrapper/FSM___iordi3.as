package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___iordi3 extends Machine
   {
       
      
      public function FSM___iordi3()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         FSM___iordi3.esp = FSM___iordi3.esp - 4;
         si32(FSM___iordi3.ebp,FSM___iordi3.esp);
         FSM___iordi3.ebp = FSM___iordi3.esp;
         FSM___iordi3.esp = FSM___iordi3.esp - 0;
         _loc1_ = int(li32(FSM___iordi3.ebp + 16));
         _loc2_ = li32(FSM___iordi3.ebp + 8);
         _loc3_ = int(li32(FSM___iordi3.ebp + 12));
         _loc4_ = li32(FSM___iordi3.ebp + 20);
         _loc3_ = _loc3_ | _loc4_;
         _loc1_ = _loc1_ | _loc2_;
         FSM___iordi3.edx = _loc3_;
         FSM___iordi3.eax = _loc1_;
         FSM___iordi3.esp = FSM___iordi3.ebp;
         FSM___iordi3.ebp = li32(FSM___iordi3.esp);
         FSM___iordi3.esp = FSM___iordi3.esp + 4;
         FSM___iordi3.esp = FSM___iordi3.esp + 4;
      }
   }
}
