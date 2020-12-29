package damageCalculation.damageManagement
{
   import damageCalculation.DamageCalculator;
   import damageCalculation.FightContext;
   import damageCalculation.fighterManagement.HaxeBuff;
   import damageCalculation.fighterManagement.HaxeFighter;
   import damageCalculation.spellManagement.HaxeSpell;
   import damageCalculation.spellManagement.HaxeSpellEffect;
   import damageCalculation.spellManagement.RunningEffect;
   import haxe.ds.ArraySort;
   import mapTools.MapTools;
   import mapTools.Point;
   import mapTools.SpellZone;
   import tools.ActionIdHelper;
   
   public class Teleport
   {
      
      public static var SAME_DIRECTION:int = -1;
      
      public static var OPPOSITE_DIRECTION:int = -2;
       
      
      public function Teleport()
      {
      }
      
      public static function teleportFighter(param1:FightContext, param2:RunningEffect, param3:HaxeFighter, param4:Boolean) : Array
      {
         var _loc6_:* = null as HaxeFighter;
         var _loc7_:int = 0;
         var _loc10_:Boolean = false;
         var _loc12_:* = null as HaxeFighter;
         var _loc5_:Array = [];
         var _loc8_:int = param2.getSpellEffect().actionId;
         var _loc9_:Boolean = false;
         var _loc11_:int = _loc8_;
         if(_loc11_ != 4)
         {
            if(_loc11_ != 1104)
            {
               _loc10_ = ActionIdHelper.isExchange(_loc8_);
               if(_loc10_ == true)
               {
                  _loc6_ = param2.getCaster();
                  _loc9_ = true;
               }
               else
               {
                  _loc6_ = param3;
               }
            }
            addr55:
            _loc11_ = _loc8_;
            if(_loc11_ != 1099)
            {
               if(_loc11_ != 1100)
               {
                  if(_loc11_ != 4)
                  {
                     if(_loc11_ != 1104)
                     {
                        _loc10_ = ActionIdHelper.isExchange(_loc8_);
                        _loc7_ = _loc10_ == true?-1:-2;
                     }
                  }
                  _loc7_ = MapTools.getLookDirection4(int(param2.getCaster().getCurrentPositionCell()),param1.targetedCell);
               }
               addr98:
               _loc11_ = Teleport.getTeleportedPosition(param1,param2,_loc6_,param1.targetedCell);
               if(_loc11_ == int(_loc6_.getCurrentPositionCell()) && ActionIdHelper.isExchange(_loc8_))
               {
                  _loc11_ = param3.getCurrentPositionCell();
               }
               if(_loc11_ != int(_loc6_.getCurrentPositionCell()))
               {
                  _loc12_ = null;
                  if(param1.map.isCellWalkable(_loc11_))
                  {
                     _loc12_ = param1.getFighterFromCell(_loc11_,true);
                     if(_loc12_ != null && _loc12_.isAlive())
                     {
                        if(_loc8_ == 1023 || !!_loc12_.canSwitchPosition(_loc8_,false) && _loc6_.canSwitchPosition(_loc8_,_loc9_))
                        {
                           _loc5_.push(EffectOutput.fromMovement(_loc12_.id,int(_loc6_.getCurrentPositionCell()),-1,_loc6_));
                           _loc12_.setCurrentPositionCell(int(_loc6_.getCurrentPositionCell()));
                        }
                        else
                        {
                           return [];
                        }
                     }
                     else
                     {
                        _loc12_ = null;
                     }
                     if(_loc6_.hasState(8))
                     {
                        Teleport.releaseFighter(param1,_loc6_.getCarrier(param1));
                     }
                     _loc6_.setCurrentPositionCell(_loc11_);
                  }
                  else
                  {
                     _loc11_ = -1;
                  }
                  if(int(_loc6_.getCurrentPositionCell()) == _loc11_)
                  {
                     DamageCalculator.executeMarks(param1,param2,_loc6_,int(_loc6_.getCurrentPositionCell()),param4);
                  }
                  if(_loc12_ != null)
                  {
                     DamageCalculator.executeMarks(param1,param2,_loc12_,int(_loc12_.getCurrentPositionCell()),param4);
                  }
                  _loc5_.push(EffectOutput.fromMovement(_loc6_.id,_loc11_,_loc7_,_loc12_));
               }
               return _loc5_;
            }
            _loc7_ = -1;
            §§goto(addr98);
         }
         _loc6_ = param2.getCaster();
         _loc9_ = true;
         §§goto(addr55);
      }
      
      public static function getTeleportedPosition(param1:FightContext, param2:RunningEffect, param3:HaxeFighter, param4:int) : int
      {
         var _loc5_:* = null as Point;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:* = null as SpellZone;
         var _loc10_:* = null as Array;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = null as Point;
         var _loc14_:* = null as Point;
         var fightContext:FightContext = param1;
         var runningEffect:RunningEffect = param2;
         if(!!param3.isAlive() && param3.canTeleport(runningEffect.getSpellEffect().actionId,false))
         {
            _loc6_ = runningEffect.getSpellEffect().actionId;
            _loc8_ = _loc6_;
            if(_loc8_ == 4)
            {
               _loc7_ = ActionIdHelper.isExchange(_loc6_);
               if(_loc7_ == true)
               {
                  return param4;
               }
               if(fightContext.isCellEmptyForMovement(param4))
               {
                  return param4;
               }
               if(runningEffect.getSpellEffect().rawZone.charAt(0) != "P")
               {
                  _loc9_ = SpellZone.fromRawZone(runningEffect.getSpellEffect().rawZone);
                  _loc10_ = _loc9_.getCells(param4,int(param3.getCurrentPositionCell()));
                  ArraySort.sort(_loc10_,function(param1:int, param2:int):int
                  {
                     return int(TargetManagement.comparePositions(fightContext.targetedCell,Boolean(ActionIdHelper.isPush(runningEffect.getSpellEffect().actionId)),param1,param2));
                  });
                  _loc11_ = 0;
                  while(_loc11_ < int(_loc10_.length))
                  {
                     _loc12_ = _loc10_[_loc11_];
                     _loc11_++;
                     if(fightContext.isCellEmptyForMovement(_loc12_))
                     {
                        return _loc12_;
                     }
                  }
               }
               return int(param3.getCurrentPositionCell());
            }
            if(_loc8_ == 1099)
            {
               return int(param3.data.getTurnBeginPosition());
            }
            if(_loc8_ == 1100)
            {
               return int(param3.getPendingPreviousPosition());
            }
            if(_loc8_ != 1104)
            {
               if(_loc8_ != 1106)
               {
                  if(_loc8_ == 1105)
                  {
                     _loc5_ = MapTools.getCellCoordById(int(runningEffect.getCaster().getCurrentPositionCell()));
                  }
                  else
                  {
                     _loc7_ = ActionIdHelper.isExchange(_loc6_);
                     if(_loc7_ == true)
                     {
                        return param4;
                     }
                     _loc5_ = null;
                  }
               }
               addr197:
               if(_loc5_ != null)
               {
                  _loc13_ = new Point(0,0);
                  _loc14_ = new Point(0,0);
                  _loc13_.x = _loc5_.x - MapTools.getCellCoordById(int(param3.getCurrentPositionCell())).x;
                  _loc13_.y = _loc5_.y - MapTools.getCellCoordById(int(param3.getCurrentPositionCell())).y;
                  _loc14_.x = _loc5_.x + _loc13_.x;
                  _loc14_.y = _loc5_.y + _loc13_.y;
                  return int(MapTools.getCellIdByCoord(_loc14_.x,_loc14_.y));
               }
            }
            _loc5_ = MapTools.getCellCoordById(param4);
            §§goto(addr197);
         }
         return int(param3.getCurrentPositionCell());
      }
      
      public static function throwFighter(param1:FightContext, param2:HaxeFighter, param3:RunningEffect, param4:Boolean) : Array
      {
         var _loc5_:HaxeFighter = param2.getCarried(param1);
         if(_loc5_ == null)
         {
            return [];
         }
         param2.removeState(3);
         param2.carryFighter(null);
         _loc5_.removeState(8);
         _loc5_.setCurrentPositionCell(param1.targetedCell);
         var _loc6_:int = MapTools.getLookDirection4(int(param2.getCurrentPositionCell()),param1.targetedCell);
         var _loc7_:EffectOutput = EffectOutput.fromMovement(_loc5_.id,param1.targetedCell,_loc6_);
         _loc7_.throwedBy = param2.id;
         DamageCalculator.executeMarks(param1,param3,_loc5_,param1.targetedCell,param4);
         return [EffectOutput.fromStateChange(param2.id,3,false),EffectOutput.fromStateChange(_loc5_.id,8,false),_loc7_];
      }
      
      public static function releaseFighter(param1:FightContext, param2:HaxeFighter) : Array
      {
         if(param2 == null)
         {
            return [];
         }
         var _loc3_:HaxeFighter = param2.getCarried(param1);
         if(_loc3_ == null)
         {
            return [];
         }
         param2.removeState(3);
         param2.carryFighter(null);
         _loc3_.removeState(8);
         return [EffectOutput.fromStateChange(param2.id,3,false),EffectOutput.fromStateChange(_loc3_.id,8,false)];
      }
      
      public static function breakCarrierLink(param1:HaxeFighter, param2:HaxeFighter) : void
      {
         param1.removeState(3);
         param1.carryFighter(null);
         param2.removeState(8);
      }
      
      public static function carryFighter(param1:FightContext, param2:RunningEffect, param3:HaxeFighter) : Array
      {
         if(!(!param3.hasStateEffect(3) && param3.data.canBreedBeCarried() && !param3.hasStateEffect(4)))
         {
            return [];
         }
         var _loc4_:HaxeSpellEffect = param2.getSpellEffect().clone();
         _loc4_.actionId = 950;
         _loc4_.param3 = 3;
         _loc4_.param1 = 0;
         param2.getCaster().storePendingBuff(new HaxeBuff(param2.getCaster().id,param2.getSpell(),_loc4_));
         param2.getCaster().carryFighter(param3);
         var _loc5_:HaxeSpellEffect = param2.getSpellEffect().clone();
         _loc5_.actionId = 950;
         _loc5_.param3 = 8;
         _loc5_.param1 = 0;
         param3.storePendingBuff(new HaxeBuff(param2.getCaster().id,param2.getSpell(),_loc5_));
         param3.setCurrentPositionCell(int(param2.getCaster().getCurrentPositionCell()));
         var _loc6_:int = MapTools.getLookDirection4(int(param2.getCaster().getCurrentPositionCell()),param1.targetedCell);
         var _loc7_:EffectOutput = EffectOutput.fromMovement(param3.id,int(param2.getCaster().getCurrentPositionCell()),_loc6_);
         _loc7_.carriedBy = param2.getCaster().id;
         return [EffectOutput.fromStateChange(param2.getCaster().id,3,true),EffectOutput.fromStateChange(param3.id,8,true),_loc7_];
      }
   }
}
