package cmodule.lua_wrapper
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_luaX_token2str extends Machine
   {
      
      public static const intRegCount:int = 4;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public function FSM_luaX_token2str()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_luaX_token2str = null;
         _loc1_ = new FSM_luaX_token2str();
         FSM_luaX_token2str.gworker = _loc1_;
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
               if(this.i1 <= 256)
               {
                  this.i0 = this.i0 + 40;
                  if(uint(this.i1) >= uint(256))
                  {
                     mstate.esp = mstate.esp - 4;
                     si32(this.i1,mstate.esp);
                     mstate.esp = mstate.esp - 4;
                     FSM_luaX_token2str.start();
                  }
                  else
                  {
                     this.i2 = li32(FSM_luaX_token2str);
                     this.i3 = this.i1 << 2;
                     this.i2 = this.i2 + this.i3;
                     this.i2 = li32(this.i2 + 52);
                     this.i0 = li32(this.i0);
                     this.i2 = this.i2 & 512;
                     if(this.i2 != 0)
                     {
                        addr149:
                        this.i2 = FSM_luaX_token2str;
                        mstate.esp = mstate.esp - 12;
                        si32(this.i0,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        si32(this.i1,mstate.esp + 8);
                        state = 2;
                        mstate.esp = mstate.esp - 4;
                        FSM_luaX_token2str.start();
                        return;
                     }
                  }
                  addr205:
                  this.i2 = FSM_luaX_token2str;
                  mstate.esp = mstate.esp - 12;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
                  state = 3;
                  mstate.esp = mstate.esp - 4;
                  FSM_luaX_token2str.start();
                  return;
               }
               this.i0 = FSM_luaX_token2str;
               this.i1 = this.i1 << 2;
               this.i0 = this.i1 + this.i0;
               this.i0 = li32(this.i0 + -1028);
               addr286:
               mstate.eax = this.i0;
               break;
            case 1:
               this.i2 = mstate.eax;
               mstate.esp = mstate.esp + 4;
               this.i0 = li32(this.i0);
               this.i2 = this.i2 & 512;
               if(this.i2 != 0)
               {
                  §§goto(addr149);
               }
               else
               {
                  §§goto(addr205);
               }
            case 2:
               this.i0 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               §§goto(addr286);
            case 3:
               this.i1 = mstate.eax;
               mstate.esp = mstate.esp + 12;
               mstate.eax = this.i1;
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
