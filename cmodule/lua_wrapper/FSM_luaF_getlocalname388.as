package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_luaF_getlocalname388 extends Machine
   {
       
      
      public function FSM_luaF_getlocalname388()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         FSM_luaF_getlocalname388.esp = FSM_luaF_getlocalname388.esp - 4;
         si32(FSM_luaF_getlocalname388.ebp,FSM_luaF_getlocalname388.esp);
         FSM_luaF_getlocalname388.ebp = FSM_luaF_getlocalname388.esp;
         FSM_luaF_getlocalname388.esp = FSM_luaF_getlocalname388.esp - 0;
         _loc1_ = li32(FSM_luaF_getlocalname388.ebp + 8);
         _loc2_ = li32(FSM_luaF_getlocalname388.ebp + 12);
         _loc3_ = li32(FSM_luaF_getlocalname388.ebp + 16);
         _loc4_ = li32(FSM_luaF_getlocalname388.ebp + 20);
         _loc5_ = _loc1_;
         if(_loc2_ >= 1)
         {
            _loc6_ = 0;
            while(true)
            {
               _loc7_ = _loc5_;
               _loc5_ = _loc6_;
               _loc6_ = li32(_loc7_ + 4);
               if(_loc6_ <= _loc4_)
               {
                  _loc6_ = li32(_loc7_ + 8);
                  if(_loc6_ > _loc4_)
                  {
                     _loc6_ = _loc3_ + -1;
                     if(_loc3_ != 1)
                     {
                        _loc3_ = _loc6_;
                     }
                     else
                     {
                        _loc3_ = _loc5_ * 12;
                        _loc3_ = _loc1_ + _loc3_;
                        _loc3_ = li32(_loc3_);
                        _loc3_ = _loc3_ + 16;
                        FSM_luaF_getlocalname388.eax = _loc3_;
                        addr157:
                        FSM_luaF_getlocalname388.esp = FSM_luaF_getlocalname388.ebp;
                        FSM_luaF_getlocalname388.ebp = li32(FSM_luaF_getlocalname388.esp);
                        FSM_luaF_getlocalname388.esp = FSM_luaF_getlocalname388.esp + 4;
                        FSM_luaF_getlocalname388.esp = FSM_luaF_getlocalname388.esp + 4;
                        return;
                     }
                  }
                  _loc6_ = _loc7_ + 12;
                  _loc7_ = _loc5_ + 1;
                  if(_loc7_ < _loc2_)
                  {
                     _loc5_ = _loc6_;
                     _loc6_ = _loc7_;
                     continue;
                  }
                  break;
               }
               break;
            }
         }
         _loc1_ = 0;
         FSM_luaF_getlocalname388.eax = _loc1_;
         §§goto(addr157);
      }
   }
}
