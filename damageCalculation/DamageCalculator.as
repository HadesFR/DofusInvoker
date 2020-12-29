package damageCalculation
{
   import damageCalculation.damageManagement.DamageRange;
   import damageCalculation.damageManagement.DamageReceiver;
   import damageCalculation.damageManagement.DamageSender;
   import damageCalculation.damageManagement.EffectOutput;
   import damageCalculation.damageManagement.PushUtils;
   import damageCalculation.damageManagement.SummonInfos;
   import damageCalculation.damageManagement.TargetManagement;
   import damageCalculation.damageManagement.Teleport;
   import damageCalculation.debug.Debug;
   import damageCalculation.fighterManagement.HaxeBuff;
   import damageCalculation.fighterManagement.HaxeFighter;
   import damageCalculation.fighterManagement.PlayerTypeEnum;
   import damageCalculation.spellManagement.HaxeSpell;
   import damageCalculation.spellManagement.HaxeSpellEffect;
   import damageCalculation.spellManagement.Mark;
   import damageCalculation.spellManagement.RandomGroup;
   import damageCalculation.spellManagement.RunningEffect;
   import damageCalculation.spellManagement.SpellManager;
   import damageCalculation.tools.Interval;
   import damageCalculation.tools.LinkedList;
   import damageCalculation.tools.LinkedListNode;
   import haxe.IMap;
   import haxe.ds.ArraySort;
   import haxe.ds.IntMap;
   import haxe.ds.List;
   import haxe.ds.ObjectMap;
   import haxe.ds._IntMap.IntMapValuesIterator;
   import mapTools.MapTools;
   import mapTools.Point;
   import mapTools.SpellZone;
   import tools.ActionIdHelper;
   import tools.FpUtils;
   import tools.HaxeLogger;
   import tools.LoggerInterface;
   
   public class DamageCalculator
   {
      
      public static var ALLOW_SPLASH_DEGRESSION:Boolean = true;
      
      public static var dataInterface:DamageCalculationInterface;
      
      public static var logger:LoggerInterface;
      
      public static var loopCountIterations:int = 0;
      
      public static var MAX_LOOP_ITERATIONS:int = 500;
      
      public static var START_TIME:Number = -1;
      
      public static var MAX_WALL_LENGTH:int = 7;
      
      public static var WALL_ZONE:SpellZone = SpellZone.fromRawZone("X" + 7);
       
      
      public function DamageCalculator()
      {
      }
      
      public static function damageComputation(param1:HaxeFighter, param2:HaxeSpell, param3:int, param4:IMapInfo, param5:int, param6:int, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false) : Array
      {
         var _loc12_:int = 0;
         var _loc13_:* = null as Array;
         var _loc14_:* = null as HaxeFighter;
         DamageCalculator.loopCountIterations = 0;
         var _loc10_:FightContext = new FightContext(param3,param4,param5,param1,null,null,param6,param9);
         var _loc11_:HaxeFighter = _loc10_.getFighterFromCell(_loc10_.targetedCell);
         if(!!param2.needsFreeCell && _loc11_ != null && _loc11_.isAlive() || !!param2.needsTakenCell && (_loc11_ == null || !_loc11_.isAlive()))
         {
            return [];
         }
         DamageCalculator.START_TIME = Number(Date.now().getTime());
         if(!param8 || param1.isUnlucky() || int(param2.getCriticalEffects().length) == 0)
         {
            DamageCalculator.executeSpell(_loc10_,param1,param2,false,null,param7);
            _loc12_ = 0;
            _loc13_ = _loc10_.fighters;
            while(_loc12_ < int(_loc13_.length))
            {
               _loc14_ = _loc13_[_loc12_];
               _loc12_++;
               _loc14_.savePendingEffects();
            }
         }
         if(!param1.isUnlucky() && ((!!param7 && param2.criticalHitProbability > 0 || param8) && int(param2.getCriticalEffects().length) != 0))
         {
            if(param7)
            {
               _loc12_ = 0;
               _loc13_ = _loc10_.fighters;
               while(_loc12_ < int(_loc13_.length))
               {
                  _loc14_ = _loc13_[_loc12_];
                  _loc12_++;
                  if(int(_loc10_.tempFighters.indexOf(_loc14_)) != -1)
                  {
                     FpUtils.arrayRemove_damageCalculation_fighterManagement_HaxeFighter(_loc10_.fighters,_loc14_);
                  }
                  else
                  {
                     _loc14_.resetToInitialState();
                  }
               }
               _loc10_.tempFighters = [];
               _loc10_.inMovement = false;
               _loc10_.triggeredMarks = [];
            }
            DamageCalculator.loopCountIterations = 0;
            DamageCalculator.executeSpell(_loc10_,param1,param2,true,null,param7);
            _loc12_ = 0;
            _loc13_ = _loc10_.fighters;
            while(_loc12_ < int(_loc13_.length))
            {
               _loc14_ = _loc13_[_loc12_];
               _loc12_++;
               _loc14_.savePendingEffects();
            }
         }
         return _loc10_.getAffectedFighters();
      }
      
      public static function executeSpell(param1:FightContext, param2:HaxeFighter, param3:HaxeSpell, param4:Boolean, param5:RunningEffect, param6:Boolean = false, param7:Boolean = false) : void
      {
         var _loc8_:* = null as RunningEffect;
         var _loc9_:* = null as Array;
         var _loc13_:* = null as HaxeSpellEffect;
         var _loc14_:* = null as HaxeFighter;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:* = null as IMap;
         var _loc18_:int = 0;
         var _loc19_:* = null as Array;
         var _loc20_:* = null as RandomGroup;
         var _loc21_:* = null as List;
         if(param1.debugMode)
         {
            Debug.storeSpell(param3);
         }
         if(!(param5 != null && int(param5.getSpellEffect().triggers.indexOf("X")) != -1) && !param2.isAlive())
         {
            return;
         }
         if(param5 == null && (param3.criticalHitProbability == 0 || int(param3.getCriticalEffects().length) == 0))
         {
            param4 = false;
         }
         if(!param4 || param5 != null || int(param3.getCriticalEffects().length) == 0)
         {
            _loc9_ = param3.getEffects();
         }
         else
         {
            _loc9_ = param3.getCriticalEffects();
         }
         _loc9_ = FpUtils.arrayCopy_damageCalculation_spellManagement_HaxeSpellEffect(_loc9_);
         var _loc10_:IMap = new IntMap();
         var _loc11_:IMap = new IntMap();
         var _loc12_:int = 0;
         while(_loc12_ < int(_loc9_.length))
         {
            _loc13_ = _loc9_[_loc12_];
            _loc14_ = param5 != null?param5.triggeringFighter:null;
            _loc15_ = TargetManagement.getTargets(param1,param2,param3,_loc13_,_loc14_);
            if(_loc15_.isUsed)
            {
               _loc10_.h[int(_loc13_.id)] = _loc15_.targetedFighters;
               _loc11_.h[int(_loc13_.id)] = _loc15_.additionalTargets;
               _loc12_++;
            }
            else
            {
               _loc9_.splice(_loc12_,1);
            }
         }
         _loc16_ = 0;
         while(_loc16_ < int(_loc9_.length))
         {
            _loc13_ = _loc9_[_loc16_];
            _loc16_++;
            if(_loc13_.randomWeight <= 0)
            {
               _loc8_ = new RunningEffect(param2,param3,_loc13_);
               _loc8_.setParentEffect(param5);
               _loc8_.forceCritical = param4 || _loc13_.isCritical;
               DamageCalculator.computeEffect(param1,_loc8_,param6,_loc10_.h[int(_loc13_.id)],_loc11_.h[int(_loc13_.id)],param7);
            }
         }
         if(!!param3.hasAtLeastOneRandomEffect() && _loc9_ != null)
         {
            _loc17_ = RandomGroup.createGroups(_loc9_);
            _loc16_ = RandomGroup.totalWeight(_loc17_);
            _loc18_ = 0;
            _loc19_ = param1.fighters;
            while(_loc18_ < int(_loc19_.length))
            {
               _loc14_ = _loc19_[_loc18_];
               _loc18_++;
               _loc14_.save();
            }
            _loc15_ = new IntMapValuesIterator(_loc17_.h);
            while(_loc15_.hasNext())
            {
               _loc20_ = _loc15_.next();
               _loc18_ = 0;
               _loc19_ = _loc20_.effects;
               while(_loc18_ < int(_loc19_.length))
               {
                  _loc13_ = _loc19_[_loc18_];
                  _loc18_++;
                  if(SpellManager.isInstantaneousSpellEffect(_loc13_))
                  {
                     _loc8_ = new RunningEffect(param2,param3,_loc13_);
                     _loc8_.setParentEffect(param5);
                     _loc8_.forceCritical = param4 || _loc13_.isCritical;
                     _loc8_.probability = int(_loc20_.weight / _loc16_ * 100);
                     DamageCalculator.computeEffect(param1,_loc8_,param6,_loc10_.h[int(_loc13_.id)],_loc11_.h[int(_loc13_.id)]);
                  }
               }
               _loc18_ = 0;
               _loc19_ = param1.fighters;
               while(_loc18_ < int(_loc19_.length))
               {
                  _loc14_ = _loc19_[_loc18_];
                  _loc18_++;
                  _loc21_ = _loc14_.getEffectsDeltaFromSave();
                  if(_loc21_ != null)
                  {
                     if(_loc14_.totalEffects != null)
                     {
                        _loc14_.totalEffects = FpUtils.listConcat_damageCalculation_damageManagement_EffectOutput(_loc14_.totalEffects,_loc21_);
                     }
                     else
                     {
                        _loc14_.totalEffects = _loc21_;
                     }
                  }
                  if(!_loc14_.load())
                  {
                     _loc14_.savePendingEffects();
                     _loc14_.resetToInitialState();
                  }
               }
            }
         }
      }
      
      public static function computeEffect(param1:FightContext, param2:RunningEffect, param3:Boolean, param4:Array, param5:Array, param6:Boolean = false) : void
      {
         var _loc11_:* = null as DamageRange;
         var _loc12_:* = null as String;
         var _loc13_:Boolean = false;
         var _loc14_:* = null as Array;
         var _loc15_:int = 0;
         var _loc16_:* = null as Mark;
         var _loc17_:* = null as HaxeFighter;
         var _loc18_:* = null as Point;
         var _loc19_:int = 0;
         var _loc20_:* = null as Point;
         var _loc21_:int = 0;
         var _loc22_:Boolean = false;
         var _loc23_:* = null as HaxeFighter;
         var _loc24_:Boolean = false;
         var _loc25_:* = null as HaxeBuff;
         var _loc26_:* = null as IMap;
         var _loc27_:* = null;
         var _loc28_:Boolean = false;
         var _loc29_:* = null;
         var _loc30_:* = null as HaxeSpell;
         var _loc31_:* = null as FightContext;
         var _loc32_:int = 0;
         var _loc33_:Number = NaN;
         var _loc34_:* = null as DamageRange;
         var _loc35_:Boolean = false;
         var _loc36_:Boolean = false;
         var _loc37_:Boolean = false;
         var _loc38_:int = 0;
         var _loc39_:Boolean = false;
         var _loc40_:* = false;
         var _loc41_:* = null as EffectOutput;
         var _loc42_:* = null as Interval;
         var _loc43_:* = null as Array;
         var _loc44_:* = null as Array;
         var _loc45_:* = null as SpellZone;
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = false;
         var _loc48_:* = null as DamageRange;
         var _loc49_:* = null as RunningEffect;
         var _loc50_:int = 0;
         var _loc51_:Boolean = false;
         var fightContext:FightContext = param1;
         var _loc7_:HaxeSpell = param2.getSpell();
         var effect:HaxeSpellEffect = param2.getSpellEffect();
         var _loc8_:HaxeFighter = param2.getCaster();
         var _loc9_:int = 0;
         var _loc10_:HaxeFighter = null;
         param2.forceCritical = param2.forceCritical || effect.isCritical;
         DamageCalculator.loopCountIterations = DamageCalculator.loopCountIterations + 1;
         if(DamageCalculator.loopCountIterations > DamageCalculator.MAX_LOOP_ITERATIONS)
         {
            _loc12_ = "[Damage Preview] Infinite loop detected after " + DamageCalculator.MAX_LOOP_ITERATIONS + " iterations";
            HaxeLogger.logInfiniteLoop(_loc12_,param2);
            throw _loc12_;
         }
         if(DamageCalculator.START_TIME != -1 && Date.now().getTime() - DamageCalculator.START_TIME > 1000)
         {
            _loc12_ = "[Damage Preview] Preview takes too long to run";
            HaxeLogger.logInfiniteLoop(_loc12_,param2);
            throw _loc12_;
         }
         if(SpellManager.isInstantaneousSpellEffect(effect) || param2.isTriggered)
         {
            if(effect.actionId == 2023)
            {
               if(effect.zone.shape == "P")
               {
                  _loc14_ = fightContext.map.getMarkInteractingWithCell(fightContext.targetedCell,5);
                  _loc15_ = 0;
                  while(_loc15_ < int(_loc14_.length))
                  {
                     _loc16_ = _loc14_[_loc15_];
                     _loc15_++;
                     if(_loc16_.casterId == _loc8_.id)
                     {
                        DamageCalculator.executeMarkSpell(null,_loc16_,param2,fightContext,param3);
                     }
                  }
               }
               else
               {
                  _loc14_ = fightContext.map.getMarks(5,_loc8_.teamId);
                  _loc15_ = 0;
                  while(_loc15_ < int(_loc14_.length))
                  {
                     _loc16_ = _loc14_[_loc15_];
                     _loc15_++;
                     if(_loc16_.casterId == _loc8_.id && effect.zone.isCellInZone(_loc16_.mainCell,fightContext.targetedCell,int(_loc8_.getCurrentPositionCell())))
                     {
                        DamageCalculator.executeMarkSpell(null,_loc16_,param2,fightContext,param3);
                     }
                  }
               }
               return;
            }
            _loc13_ = ActionIdHelper.isSummonWithoutTarget(effect.actionId);
            if(_loc13_ == true)
            {
               _loc17_ = fightContext.getFighterFromCell(fightContext.targetedCell);
               if(!!DamageCalculator.summonTakesSlot(effect,fightContext,_loc8_) && int(fightContext.getFighterCurrentSummonCount(_loc8_)) >= int(_loc8_.getCharacteristicValue("maxSummonableCreatures")))
               {
                  return;
               }
               if(!!fightContext.map.isCellWalkable(fightContext.targetedCell) && (_loc17_ == null || !_loc17_.isAlive()))
               {
                  if(effect.actionId == 1097)
                  {
                     _loc18_ = MapTools.getCellCoordById(int(_loc8_.getCurrentPositionCell()));
                     _loc15_ = MapTools.getDistance(int(_loc8_.getCurrentPositionCell()),fightContext.targetedCell);
                     _loc14_ = [new Point(_loc18_.x + _loc15_,_loc18_.y),new Point(_loc18_.x - _loc15_,_loc18_.y),new Point(_loc18_.x,_loc18_.y + _loc15_),new Point(_loc18_.x,_loc18_.y - _loc15_)];
                     _loc19_ = 0;
                     while(_loc19_ < int(_loc14_.length))
                     {
                        _loc20_ = _loc14_[_loc19_];
                        _loc19_++;
                        _loc21_ = MapTools.getCellIdByCoord(_loc20_.x,_loc20_.y);
                        if(!!fightContext.map.isCellWalkable(_loc21_) && fightContext.getFighterFromCell(_loc21_) == null)
                        {
                           _loc10_ = DamageCalculator.summon(effect,fightContext,_loc8_,_loc21_);
                           if(_loc10_ != null)
                           {
                              param4.push(_loc10_);
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc10_ = DamageCalculator.summon(effect,fightContext,_loc8_);
                     if(_loc10_ != null)
                     {
                        param4.push(_loc10_);
                     }
                  }
               }
            }
            else
            {
               _loc17_ = param2.getCaster();
               if(!(_loc17_.playerType == PlayerTypeEnum.MONSTER && _loc17_.data.isSummon() && int(HaxeFighter.BOMB_BREED_ID.indexOf(_loc17_.breed)) != -1))
               {
                  _loc23_ = param2.getCaster();
                  _loc22_ = _loc23_.playerType == PlayerTypeEnum.MONSTER && _loc23_.data.isSummon() && int(HaxeFighter.STEAMER_TURRET_BREED_ID.indexOf(_loc23_.breed)) != -1;
               }
               else
               {
                  _loc22_ = true;
               }
               if(_loc22_)
               {
                  param2.overrideCaster(param2.getCaster().getSummoner(fightContext));
               }
               if((ActionIdHelper.isDamage(effect.category) || ActionIdHelper.isHeal(effect.actionId)) == true)
               {
                  _loc11_ = DamageSender.getTotalDamage(fightContext,param2,param3);
               }
               else
               {
                  _loc24_ = ActionIdHelper.isShield(effect.actionId);
                  _loc11_ = _loc24_ == true?DamageSender.getTotalShield(param2,param3):DamageRange.ZERO;
               }
               _loc11_.probability = param2.probability;
               if(_loc8_ != param2.getCaster())
               {
                  param2.overrideCaster(_loc8_);
               }
            }
         }
         ArraySort.sort(param4,function(param1:HaxeFighter, param2:HaxeFighter):int
         {
            return int(TargetManagement.comparePositions(fightContext.targetedCell,Boolean(ActionIdHelper.isPush(effect.actionId)),int(param1.getCurrentPositionCell()),int(param2.getCurrentPositionCell())));
         });
         _loc15_ = 0;
         while(_loc15_ < int(param4.length))
         {
            _loc17_ = param4[_loc15_];
            _loc15_++;
            if(!_loc17_.data.isInvisible())
            {
               if(!(int(param2.getSpellEffect().triggers.indexOf("X")) == -1 && !_loc17_.isAlive() && param2.getSpellEffect().rawZone.charAt(0) != "A" && !ActionIdHelper.isRevive(effect.actionId)))
               {
                  if(!SpellManager.isInstantaneousSpellEffect(effect) && !param2.isTriggered)
                  {
                     _loc17_.storePendingBuff(HaxeBuff.fromRunningEffect(param2));
                  }
                  else
                  {
                     _loc19_ = effect.actionId;
                     if(Boolean(ActionIdHelper.isBuff(_loc19_)) == true)
                     {
                        _loc25_ = HaxeBuff.fromRunningEffect(param2);
                        if(param2.isTriggered)
                        {
                           _loc25_.effect.triggers = ["I"];
                        }
                        _loc17_.storePendingBuff(_loc25_);
                        if(_loc25_.effect.actionId == 169 || _loc25_.effect.actionId == 168)
                        {
                           if(_loc25_.effect.actionId == 169)
                           {
                              effect.actionId = 1080;
                           }
                           else if(_loc25_.effect.actionId == 168)
                           {
                              effect.actionId = 1079;
                           }
                           DamageCalculator.computeEffect(fightContext,param2,param3,[_loc17_],null,param6);
                        }
                     }
                     else
                     {
                        _loc13_ = ActionIdHelper.isStatBoost(_loc19_);
                        if(_loc13_ == true)
                        {
                           _loc8_.storeSpellEffectStatBoost(_loc7_,effect);
                        }
                        else
                        {
                           _loc22_ = _loc19_ == 1008 && _loc10_ == null || ActionIdHelper.isSpellExecution(_loc19_);
                           if(_loc22_ == true)
                           {
                              if(ActionIdHelper.spellExecutionHasGlobalLimitation(effect.actionId))
                              {
                                 _loc9_++;
                                 if(_loc9_ > effect.param3)
                                 {
                                    return;
                                 }
                              }
                              _loc26_ = new ObjectMap();
                              _loc21_ = 0;
                              _loc14_ = fightContext.fighters;
                              while(_loc21_ < int(_loc14_.length))
                              {
                                 _loc23_ = _loc14_[_loc21_];
                                 _loc21_++;
                                 _loc26_[_loc23_] = int(_loc23_.getBeforeLastSpellPosition());
                                 _loc23_.savePositionBeforeSpellExecution();
                              }
                              _loc27_ = DamageCalculator.solveSpellExecution(fightContext,param2,_loc17_,param3);
                              if(_loc27_ != null)
                              {
                                 _loc28_ = _loc8_.id != fightContext.originalCaster.id && fightContext.originalCaster.playerType == PlayerTypeEnum.HUMAN;
                                 DamageCalculator.executeSpell(_loc27_.context,_loc27_.caster,_loc27_.spell,Boolean(_loc27_.isCritical),param2,param3,_loc28_);
                              }
                              _loc29_ = _loc26_.keys();
                              while(_loc29_.hasNext())
                              {
                                 _loc23_ = _loc29_.next();
                                 _loc23_.setBeforeLastSpellPosition(_loc26_[_loc23_]);
                              }
                           }
                           else
                           {
                              _loc21_ = _loc19_;
                              if(_loc21_ == 406)
                              {
                                 _loc8_.removeBuffBySpellId(effect.param3);
                              }
                              else if(_loc21_ == 952)
                              {
                                 _loc17_.removeState(effect.param3);
                              }
                              else if(_loc21_ == 1009)
                              {
                                 _loc14_ = TargetManagement.getBombsAboutToExplode(_loc17_,fightContext,param2);
                                 _loc32_ = 0;
                                 while(_loc32_ < int(_loc14_.length))
                                 {
                                    _loc23_ = _loc14_[_loc32_];
                                    _loc32_++;
                                    _loc30_ = DamageCalculator.dataInterface.getBombExplosionSpellFromFighter(_loc23_);
                                    if(_loc30_ != null)
                                    {
                                       _loc31_ = fightContext.copy();
                                       _loc31_.targetedCell = int(_loc23_.getCurrentPositionCell());
                                       DamageCalculator.executeSpell(_loc31_,_loc23_,_loc30_,param2.forceCritical,param2,param3);
                                    }
                                 }
                              }
                              else if(_loc21_ == 1159)
                              {
                                 _loc33_ = effect.param1 * 0.01;
                                 _loc34_ = param2.triggeringOutput.damageRange;
                                 if(_loc34_ != null && !_loc34_.isInvulnerable && !_loc34_.isCollision && _loc34_.isHeal)
                                 {
                                    _loc34_.multiply(_loc33_);
                                 }
                              }
                              else
                              {
                                 _loc24_ = ActionIdHelper.isTargetMarkDispell(_loc19_);
                                 if(_loc24_ == true)
                                 {
                                    _loc32_ = effect.actionId;
                                    if(_loc32_ == 2018)
                                    {
                                       _loc21_ = 1;
                                    }
                                    else if(_loc32_ == 2019)
                                    {
                                       _loc21_ = 2;
                                    }
                                    else if(_loc32_ == 2024)
                                    {
                                       _loc21_ = 5;
                                    }
                                    else
                                    {
                                       _loc21_ = 0;
                                    }
                                    _loc32_ = 0;
                                    _loc14_ = fightContext.map.getMarks(_loc21_,_loc17_.teamId);
                                    while(_loc32_ < int(_loc14_.length))
                                    {
                                       _loc16_ = _loc14_[_loc32_];
                                       _loc32_++;
                                       if(_loc16_.casterId == _loc17_.id && (effect.param1 == 0 || effect.param1 == _loc16_.associatedSpell.id))
                                       {
                                          _loc16_.active = false;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc28_ = MapTools.areCellsAdjacent(int(param2.getCaster().getCurrentPositionCell()),int(_loc17_.getCurrentPositionCell()));
                                    _loc21_ = effect.actionId;
                                    if(Boolean(ActionIdHelper.isTeleport(_loc21_)) == true)
                                    {
                                       _loc14_ = Teleport.teleportFighter(fightContext,param2,_loc17_,param3);
                                    }
                                    else
                                    {
                                       _loc32_ = _loc21_;
                                       if(_loc32_ == 50)
                                       {
                                          _loc14_ = Teleport.carryFighter(fightContext,param2,_loc17_);
                                       }
                                       else if(_loc32_ == 51)
                                       {
                                          _loc23_ = param2.getCaster();
                                          _loc14_ = Teleport.throwFighter(fightContext,_loc23_,param2,param3);
                                       }
                                       else if(_loc32_ == 141)
                                       {
                                          _loc35_ = ActionIdHelper.isPush(_loc21_);
                                          if(_loc35_ == true)
                                          {
                                             _loc38_ = effect.param1;
                                             _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                             _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                             _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                          }
                                          else
                                          {
                                             _loc36_ = ActionIdHelper.isPull(_loc21_);
                                             if(_loc36_ == true)
                                             {
                                                _loc38_ = effect.param1;
                                                _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                             }
                                             else
                                             {
                                                _loc14_ = [EffectOutput.deathOf(_loc17_.id)];
                                             }
                                          }
                                       }
                                       else if(_loc32_ == 320)
                                       {
                                          _loc35_ = ActionIdHelper.isPush(_loc21_);
                                          if(_loc35_ == true)
                                          {
                                             _loc38_ = effect.param1;
                                             _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                             _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                             _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                          }
                                          else
                                          {
                                             _loc36_ = ActionIdHelper.isPull(_loc21_);
                                             if(_loc36_ == true)
                                             {
                                                _loc38_ = effect.param1;
                                                _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                             }
                                             else
                                             {
                                                _loc41_ = new EffectOutput(_loc17_.id);
                                                _loc41_.rangeStolen = effect.getDamageInterval().min;
                                                _loc14_ = [_loc41_];
                                             }
                                          }
                                       }
                                       else if(_loc32_ == 783)
                                       {
                                          _loc14_ = PushUtils.pushTo(fightContext,param2,_loc17_,false,false,param3);
                                       }
                                       else if(_loc32_ == 786)
                                       {
                                          _loc35_ = ActionIdHelper.isPush(_loc21_);
                                          if(_loc35_ == true)
                                          {
                                             _loc38_ = effect.param1;
                                             _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                             _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                             _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                          }
                                          else
                                          {
                                             _loc36_ = ActionIdHelper.isPull(_loc21_);
                                             if(_loc36_ == true)
                                             {
                                                _loc38_ = effect.param1;
                                                _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                             }
                                             else
                                             {
                                                _loc42_ = effect.getDamageInterval();
                                                _loc34_ = param2.triggeringOutput.damageRange.copy();
                                                _loc23_ = param2.getParentEffect() != null?param2.getParentEffect().getCaster():null;
                                                if(_loc34_ != null && _loc23_ != null && !_loc34_.isHeal && !_loc34_.isInvulnerable)
                                                {
                                                   _loc34_.multiply(_loc42_.min);
                                                   _loc34_.multiply(0.01);
                                                   _loc34_.isHeal = true;
                                                   _loc34_.isShieldDamage = false;
                                                   _loc14_ = [EffectOutput.fromDamageRange(_loc23_.id,_loc34_)];
                                                }
                                                else
                                                {
                                                   _loc14_ = [];
                                                }
                                             }
                                          }
                                       }
                                       else if(_loc32_ == 950)
                                       {
                                          _loc35_ = ActionIdHelper.isPush(_loc21_);
                                          if(_loc35_ == true)
                                          {
                                             _loc38_ = effect.param1;
                                             _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                             _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                             _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                          }
                                          else
                                          {
                                             _loc36_ = ActionIdHelper.isPull(_loc21_);
                                             if(_loc36_ == true)
                                             {
                                                _loc38_ = effect.param1;
                                                _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                             }
                                             else
                                             {
                                                _loc25_ = HaxeBuff.fromRunningEffect(param2);
                                                if(param2.isTriggered)
                                                {
                                                   _loc25_.effect.triggers = ["I"];
                                                }
                                                _loc17_.storePendingBuff(_loc25_);
                                                _loc14_ = [EffectOutput.fromStateChange(_loc17_.id,effect.param3,true)];
                                             }
                                          }
                                       }
                                       else if(_loc32_ == 951)
                                       {
                                          _loc35_ = ActionIdHelper.isPush(_loc21_);
                                          if(_loc35_ == true)
                                          {
                                             _loc38_ = effect.param1;
                                             _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                             _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                             _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                          }
                                          else
                                          {
                                             _loc36_ = ActionIdHelper.isPull(_loc21_);
                                             if(_loc36_ == true)
                                             {
                                                _loc38_ = effect.param1;
                                                _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                             }
                                             else
                                             {
                                                _loc14_ = !!_loc17_.removeState(int(effect.getMinRoll()))?[EffectOutput.fromStateChange(_loc17_.id,effect.param3,false)]:[];
                                             }
                                          }
                                       }
                                       else if(_loc32_ == 1043)
                                       {
                                          _loc14_ = PushUtils.pullTo(fightContext,param2,_loc17_,false,param3);
                                       }
                                       else if(_loc32_ == 1075)
                                       {
                                          _loc35_ = ActionIdHelper.isPush(_loc21_);
                                          if(_loc35_ == true)
                                          {
                                             _loc38_ = effect.param1;
                                             _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                             _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                             _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                          }
                                          else
                                          {
                                             _loc36_ = ActionIdHelper.isPull(_loc21_);
                                             if(_loc36_ == true)
                                             {
                                                _loc38_ = effect.param1;
                                                _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                             }
                                             else
                                             {
                                                _loc43_ = _loc17_.reduceBuffDurations(int(effect.getMinRoll()));
                                                if(_loc43_ != null && int(_loc43_.length) > 0)
                                                {
                                                   _loc44_ = [EffectOutput.fromDispell(_loc17_.id)];
                                                   _loc38_ = 0;
                                                   while(_loc38_ < int(_loc43_.length))
                                                   {
                                                      _loc25_ = _loc43_[_loc38_];
                                                      _loc38_++;
                                                      if(_loc25_.effect.actionId == 950)
                                                      {
                                                         _loc44_.push(EffectOutput.fromStateChange(_loc17_.id,_loc25_.effect.param3,false));
                                                      }
                                                   }
                                                   _loc14_ = _loc44_;
                                                }
                                                else
                                                {
                                                   _loc14_ = [];
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          if(_loc32_ != 84)
                                          {
                                             if(_loc32_ != 1079)
                                             {
                                                if(_loc32_ != 77)
                                                {
                                                   if(_loc32_ != 1080)
                                                   {
                                                      _loc35_ = ActionIdHelper.isPush(_loc21_);
                                                      if(_loc35_ == true)
                                                      {
                                                         _loc32_ = effect.param1;
                                                         _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                         _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                                         _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc32_,_loc39_,_loc40_,param3);
                                                      }
                                                      else
                                                      {
                                                         _loc36_ = ActionIdHelper.isPull(_loc21_);
                                                         if(_loc36_ == true)
                                                         {
                                                            _loc32_ = effect.param1;
                                                            _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                            _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc32_,_loc39_,param3);
                                                         }
                                                         else
                                                         {
                                                            _loc37_ = ActionIdHelper.isSummon(_loc21_);
                                                            if(_loc37_ == true)
                                                            {
                                                               if(!!ActionIdHelper.isSummonWithoutTarget(effect.actionId) && _loc10_ != null)
                                                               {
                                                                  _loc32_ = effect.actionId;
                                                                  if(_loc32_ != 180)
                                                                  {
                                                                     if(_loc32_ != 1097)
                                                                     {
                                                                        if(_loc32_ != 1189)
                                                                        {
                                                                           _loc33_ = 0;
                                                                        }
                                                                        addr2198:
                                                                        _loc32_ = MapTools.getLookDirection4(int(_loc8_.getCurrentPositionCell()),int(_loc17_.getCurrentPositionCell()));
                                                                        _loc14_ = [EffectOutput.fromSummon(_loc17_.id,int(_loc17_.getCurrentPositionCell()),_loc32_,_loc33_),EffectOutput.fromSummoning(_loc8_.id)];
                                                                     }
                                                                  }
                                                                  _loc33_ = _loc8_.id;
                                                                  §§goto(addr2198);
                                                               }
                                                               else if(!!ActionIdHelper.isKillAndSummon(effect.actionId) && (!DamageCalculator.summonTakesSlot(effect,fightContext,_loc8_) || int(fightContext.getFighterCurrentSummonCount(_loc8_)) > int(_loc8_.getCharacteristicValue("maxSummonableCreatures"))))
                                                               {
                                                                  _loc43_ = [EffectOutput.deathOf(_loc17_.id)];
                                                                  _loc23_ = DamageCalculator.summon(effect,fightContext,_loc8_);
                                                                  _loc32_ = MapTools.getLookDirection4(int(_loc8_.getCurrentPositionCell()),int(_loc23_.getCurrentPositionCell()));
                                                                  if(_loc23_ != null)
                                                                  {
                                                                     _loc43_.push(EffectOutput.fromSummon(_loc23_.id,int(_loc23_.getCurrentPositionCell()),_loc32_));
                                                                     _loc43_.push(EffectOutput.fromSummoning(_loc8_.id));
                                                                  }
                                                                  _loc14_ = _loc43_;
                                                               }
                                                               else
                                                               {
                                                                  _loc14_ = [];
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc32_ = effect.actionId;
                                                               if(_loc32_ == 80)
                                                               {
                                                                  _loc34_ = PushUtils.getCollisionDamages(fightContext,_loc8_,_loc17_,effect.param1,effect.param2);
                                                               }
                                                               else
                                                               {
                                                                  _loc39_ = ActionIdHelper.isBasedOnTargetLife(_loc32_);
                                                                  _loc34_ = _loc39_ == true?DamageReceiver.getDamageBasedOnTargetLife(param2.getSpellEffect(),_loc17_,_loc11_.copy()):_loc11_.copy();
                                                               }
                                                               if(param2.getCaster() == _loc17_)
                                                               {
                                                                  _loc28_ = false;
                                                                  if(effect.actionId == 90)
                                                                  {
                                                                     _loc34_.isHeal = false;
                                                                  }
                                                               }
                                                               if(!ActionIdHelper.isFakeDamage(effect.actionId) && effect.actionId != 80 && !(_loc34_.min == 0 && _loc34_.max == 0))
                                                               {
                                                                  _loc33_ = 1;
                                                                  if((param5 == null || int(param5.indexOf(_loc17_)) == -1) && ActionIdHelper.allowAOEMalus(effect.actionId))
                                                                  {
                                                                     _loc38_ = 0;
                                                                     if(effect.zone.radius >= 1)
                                                                     {
                                                                        _loc45_ = effect.zone;
                                                                        _loc38_ = _loc45_.getAOEMalus(fightContext.targetedCell,int(_loc8_.getCurrentPositionCell()),int(_loc17_.getBeforeLastSpellPosition()));
                                                                     }
                                                                     _loc33_ = _loc33_ * ((100 - _loc38_) / 100);
                                                                  }
                                                                  if(fightContext.usingPortal())
                                                                  {
                                                                     _loc33_ = _loc33_ * (1 + int(fightContext.getPortalBonus()) * 0.01);
                                                                  }
                                                                  _loc34_.multiply(_loc33_);
                                                               }
                                                               _loc38_ = effect.actionId;
                                                               if(_loc38_ == 106)
                                                               {
                                                                  _loc41_ = param2.triggeringOutput;
                                                                  _loc48_ = param2.triggeringOutput.damageRange;
                                                                  _loc49_ = param2.getParentEffect();
                                                                  _loc23_ = _loc49_ != null?_loc49_.getCaster():null;
                                                                  _loc50_ = _loc49_ != null?_loc49_.getSpell().level:1;
                                                                  _loc51_ = _loc49_ != null && _loc49_.getSpell().isWeapon;
                                                                  if(_loc23_ != null && _loc49_ != null && _loc48_ != null && !_loc41_.damageRange.isCollision && _loc50_ <= effect.param2 && !_loc51_)
                                                                  {
                                                                     _loc17_.pendingEffects.remove(_loc41_);
                                                                     _loc14_ = DamageReceiver.receiveDamageOrHeal(fightContext,_loc49_,_loc41_.damageRange,_loc23_,_loc28_,param3);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc14_ = [];
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc40_ = Boolean(ActionIdHelper.isShield(_loc38_));
                                                                  if(_loc40_ == true)
                                                                  {
                                                                     _loc14_ = [EffectOutput.fromDamageRange(_loc17_.id,_loc34_)];
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc46_ = ActionIdHelper.isHeal(_loc38_);
                                                                     if(_loc46_ == true)
                                                                     {
                                                                        _loc14_ = DamageReceiver.receiveDamageOrHeal(fightContext,param2,_loc34_,_loc17_,_loc28_,param3);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc47_ = ActionIdHelper.isDamage(effect.category);
                                                                        _loc14_ = _loc47_ == true?DamageReceiver.receiveDamageOrHeal(fightContext,param2,_loc34_,_loc17_,_loc28_,param3):[];
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                _loc35_ = ActionIdHelper.isPush(_loc21_);
                                                if(_loc35_ == true)
                                                {
                                                   _loc38_ = effect.param1;
                                                   _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                   _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                                   _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                                }
                                                else
                                                {
                                                   _loc36_ = ActionIdHelper.isPull(_loc21_);
                                                   if(_loc36_ == true)
                                                   {
                                                      _loc38_ = effect.param1;
                                                      _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                      _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                                   }
                                                   else
                                                   {
                                                      _loc14_ = [EffectOutput.fromAmTheft(_loc17_.id,effect.getDamageInterval().min)];
                                                   }
                                                }
                                             }
                                          }
                                          _loc35_ = ActionIdHelper.isPush(_loc21_);
                                          if(_loc35_ == true)
                                          {
                                             _loc38_ = effect.param1;
                                             _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                             _loc40_ = Boolean(ActionIdHelper.allowCollisionDamages(effect.actionId));
                                             _loc14_ = PushUtils.push(fightContext,param2,_loc17_,_loc38_,_loc39_,_loc40_,param3);
                                          }
                                          else
                                          {
                                             _loc36_ = ActionIdHelper.isPull(_loc21_);
                                             if(_loc36_ == true)
                                             {
                                                _loc38_ = effect.param1;
                                                _loc39_ = ActionIdHelper.isForcedDrag(effect.actionId);
                                                _loc14_ = PushUtils.pull(fightContext,param2,_loc17_,_loc38_,_loc39_,param3);
                                             }
                                             else
                                             {
                                                _loc14_ = [EffectOutput.fromApTheft(_loc17_.id,effect.getDamageInterval().min)];
                                             }
                                          }
                                       }
                                    }
                                    _loc39_ = false;
                                    if(ActionIdHelper.isTargetMaxLifeAffected(effect.actionId))
                                    {
                                       _loc14_.push(EffectOutput.fromAffectedMaxLifePoints(_loc17_.id));
                                    }
                                    _loc32_ = 0;
                                    while(_loc32_ < int(_loc14_.length))
                                    {
                                       _loc41_ = _loc14_[_loc32_];
                                       _loc32_++;
                                       if(_loc41_.damageRange != null && param6 == true)
                                       {
                                          _loc41_.unknown = true;
                                       }
                                       _loc23_ = fightContext.getFighterById(_loc41_.fighterId);
                                       if(_loc41_.damageRange != null)
                                       {
                                          _loc34_ = _loc41_.damageRange;
                                          _loc40_ = !(_loc34_.min == 0 && _loc34_.max == 0);
                                       }
                                       else
                                       {
                                          _loc40_ = false;
                                       }
                                       if(_loc40_)
                                       {
                                          _loc41_.areLifePointsAffected = true;
                                          _loc34_ = DamageReceiver.getPermanentDamage(_loc41_.damageRange,_loc23_);
                                          _loc41_.areErodedLifePointsAffected = _loc34_ != null && !(_loc34_.min == 0 && _loc34_.max == 0);
                                       }
                                       if(_loc41_.areErodedLifePointsAffected)
                                       {
                                          _loc41_.areMaxLifePointsAffected = true;
                                       }
                                       if(_loc41_.death)
                                       {
                                          fightContext.addLastKilledAlly(_loc23_);
                                       }
                                       if(_loc41_.summon != null)
                                       {
                                          _loc39_ = true;
                                       }
                                       _loc23_.pendingEffects.add(_loc41_);
                                    }
                                    DamageCalculator.triggerHandler(_loc14_,param2,fightContext,_loc17_,_loc28_,param3);
                                    if(_loc39_ == true && _loc10_ != null)
                                    {
                                       _loc30_ = DamageCalculator.dataInterface.getStartingSpell(_loc10_,effect.param2);
                                       if(_loc30_ != null)
                                       {
                                          DamageCalculator.executeSpell(fightContext,_loc10_,_loc30_,param2.forceCritical,null,param3,param6);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function summonTakesSlot(param1:HaxeSpellEffect, param2:FightContext, param3:HaxeFighter) : Boolean
      {
         if(!ActionIdHelper.isSummonWithSlot(param1.actionId))
         {
            if(param1.actionId == 181)
            {
               return Boolean(DamageCalculator.dataInterface.summonMonster(param3,param1.param1,param1.param2).data.useSummonSlot());
            }
            return false;
         }
         return true;
      }
      
      public static function summon(param1:HaxeSpellEffect, param2:FightContext, param3:HaxeFighter, param4:int = -1) : HaxeFighter
      {
         var _loc6_:* = null as HaxeFighter;
         var _loc8_:Boolean = false;
         if(!MapTools.isValidCellId(param4))
         {
            param4 = param2.targetedCell;
         }
         var _loc5_:HaxeFighter = param2.getFighterFromCell(param4);
         if(!param2.map.isCellWalkable(param4) || _loc5_ != null && _loc5_.isAlive())
         {
            return null;
         }
         var _loc7_:int = param1.actionId;
         var _loc9_:int = _loc7_;
         if(_loc9_ != 180)
         {
            if(_loc9_ != 1097)
            {
               if(_loc9_ != 1189)
               {
                  _loc8_ = ActionIdHelper.isRevive(_loc7_);
                  _loc6_ = _loc8_ == true?param2.getLastKilledAlly(param3.teamId):DamageCalculator.dataInterface.summonMonster(param3,param1.param1,param1.param2);
               }
               addr88:
               if(_loc6_ == null)
               {
                  return null;
               }
               var _loc10_:HaxeFighter = param2.getFighterById(_loc6_.id);
               if(!!ActionIdHelper.isRevive(param1.actionId) && _loc10_ != null && _loc10_.isAlive())
               {
                  return null;
               }
               _loc6_.setCurrentPositionCell(param4);
               _loc6_.beforeLastSpellPosition = param4;
               if(param2.getFighterById(_loc6_.id) == null)
               {
                  param2.tempFighters.push(_loc6_);
                  param2.fighters.push(_loc6_);
               }
               return _loc6_;
            }
         }
         _loc6_ = param3.copy(param2);
         §§goto(addr88);
      }
      
      public static function triggerHandler(param1:Array, param2:RunningEffect, param3:FightContext, param4:HaxeFighter, param5:Boolean, param6:Boolean) : void
      {
         var _loc8_:* = null as EffectOutput;
         var _loc9_:* = null as HaxeFighter;
         var _loc10_:Boolean = false;
         var _loc7_:int = 0;
         while(_loc7_ < int(param1.length))
         {
            _loc8_ = param1[_loc7_];
            _loc7_++;
            if(_loc8_.damageRange != null && param2.forceCritical)
            {
               _loc8_.damageRange.isCritical = true;
            }
            _loc9_ = param3.getFighterById(_loc8_.fighterId);
            _loc10_ = MapTools.areCellsAdjacent(int(param2.getCaster().getCurrentPositionCell()),int(_loc9_.getCurrentPositionCell()));
            DamageCalculator.triggerEffects(param3,param2,_loc9_,_loc10_,_loc8_,param6);
         }
      }
      
      public static function getAOEMalus(param1:HaxeSpellEffect, param2:int, param3:HaxeFighter, param4:HaxeFighter) : Number
      {
         var _loc6_:* = null as SpellZone;
         var _loc5_:int = 0;
         if(param1.zone.radius >= 1)
         {
            _loc6_ = param1.zone;
            _loc5_ = _loc6_.getAOEMalus(param2,int(param3.getCurrentPositionCell()),int(param4.getBeforeLastSpellPosition()));
         }
         return (100 - _loc5_) / 100;
      }
      
      public static function triggerEffects(param1:FightContext, param2:RunningEffect, param3:HaxeFighter, param4:Boolean, param5:EffectOutput, param6:Boolean) : Boolean
      {
         var fightContext:FightContext = param1;
         var triggeringRunningEffect:RunningEffect = param2;
         var target:HaxeFighter = param3;
         var melee:Boolean = param4;
         var triggeringOutput:EffectOutput = param5;
         var isPreview:Boolean = param6;
         var hasTriggerEffect:Boolean = false;
         var _loc7_:Function = function(param1:LinkedList, param2:Boolean, param3:Function, param4:HaxeFighter):void
         {
            var _loc6_:* = null as LinkedListNode;
            var _loc7_:* = null as LinkedListNode;
            var _loc8_:* = null as HaxeBuff;
            var _loc9_:* = null as HaxeFighter;
            var _loc10_:* = null as HaxeSpellEffect;
            var _loc11_:* = null as RunningEffect;
            var _loc12_:* = null as FightContext;
            var _loc5_:LinkedListNode = param1.head;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_;
               _loc5_ = _loc5_.next;
               _loc7_ = _loc6_;
               _loc8_ = _loc7_.item;
               if(_loc8_.effect.actionId == 792 || _loc8_.effect.actionId == 793)
               {
                  _loc9_ = param4;
               }
               else
               {
                  _loc9_ = target;
               }
               if(!(_loc8_.effect.triggers == null || int(_loc8_.effect.triggers.length) == 0 || int(_loc8_.effect.triggers.length) == 1 && _loc8_.effect.triggers[0] == "I" || !_loc8_.canBeTriggeredBy(triggeringRunningEffect) || !!ActionIdHelper.isSpellExecution(_loc8_.effect.actionId) && _loc8_.effect.param3 > 0 && _loc8_.triggerCount >= _loc8_.effect.param3 || !!param2 && int(_loc8_.hasBeenTriggeredOn.indexOf(_loc9_.id)) != -1))
               {
                  if(param3(_loc8_))
                  {
                     if(_loc8_.effect.isCritical)
                     {
                        _loc10_ = _loc8_.effect.clone();
                        _loc10_.isCritical = false;
                     }
                     else
                     {
                        _loc10_ = _loc8_.effect;
                     }
                     _loc11_ = new RunningEffect(fightContext.getFighterById(_loc8_.casterId),_loc8_.spell,_loc10_);
                     _loc11_.triggeredByEffectSetting(triggeringRunningEffect);
                     _loc11_.triggeringOutput = triggeringOutput;
                     _loc11_.isTriggered = true;
                     _loc11_.forceCritical = triggeringRunningEffect.forceCritical;
                     _loc12_ = fightContext.copy();
                     _loc12_.targetedCell = int(_loc9_.getBeforeLastSpellPosition());
                     if(param2)
                     {
                        _loc8_.hasBeenTriggeredOn.push(_loc9_.id);
                     }
                     _loc8_.triggerCount = _loc8_.triggerCount + 1;
                     DamageCalculator.computeEffect(_loc12_,_loc11_,isPreview,[_loc9_],null);
                     hasTriggerEffect = true;
                  }
               }
            }
         };
         var _loc8_:HaxeFighter = triggeringRunningEffect.getCaster();
         _loc7_(target._buffs.copy(),false,function(param1:HaxeBuff):Boolean
         {
            return Boolean(param1.shouldBeTriggeredOnTarget(triggeringOutput,triggeringRunningEffect,target,melee,fightContext));
         },target);
         _loc7_(_loc8_._buffs.copy(),true,function(param1:HaxeBuff):Boolean
         {
            return Boolean(param1.shouldBeTriggeredOnCaster(triggeringOutput,triggeringRunningEffect,target,melee,fightContext));
         },_loc8_);
         return hasTriggerEffect;
      }
      
      public static function solveSpellExecution(param1:FightContext, param2:RunningEffect, param3:HaxeFighter, param4:Boolean) : Object
      {
         var _loc10_:int = 0;
         var _loc5_:HaxeFighter = param2.getCaster();
         var _loc6_:HaxeFighter = !!param2.isTriggered?param2.triggeringFighter:_loc5_;
         var _loc7_:HaxeFighter = null;
         var _loc8_:HaxeFighter = null;
         var _loc9_:Boolean = false;
         _loc10_ = param2.getSpellEffect().actionId;
         if(_loc10_ != 792)
         {
            if(_loc10_ != 793)
            {
               if(_loc10_ != 2792)
               {
                  if(_loc10_ != 2793)
                  {
                     if(_loc10_ == 1018)
                     {
                        _loc7_ = _loc6_;
                        _loc8_ = param3;
                     }
                     else if(_loc10_ == 1019)
                     {
                        _loc7_ = _loc6_;
                        _loc8_ = _loc6_;
                     }
                     else
                     {
                        if(_loc10_ != 1017)
                        {
                           if(_loc10_ != 2017)
                           {
                              if(_loc10_ != 1008)
                              {
                                 if(_loc10_ != 1160)
                                 {
                                    if(_loc10_ != 2160)
                                    {
                                       if(_loc10_ != 2794)
                                       {
                                          if(_loc10_ != 2795)
                                          {
                                             throw "ActionId " + param2.getSpellEffect().actionId + " is not a spell execution";
                                          }
                                       }
                                       _loc7_ = param3;
                                       _loc8_ = param3;
                                       _loc9_ = true;
                                    }
                                 }
                              }
                              _loc7_ = _loc5_;
                              _loc8_ = param3;
                           }
                        }
                        _loc7_ = param3;
                        _loc8_ = _loc6_;
                     }
                  }
                  addr123:
                  var _loc11_:HaxeSpellEffect = param2.getSpellEffect();
                  var _loc12_:Boolean = _loc9_;
                  if(_loc12_ == false)
                  {
                     _loc10_ = _loc8_.getBeforeLastSpellPosition();
                  }
                  else if(_loc12_ == true)
                  {
                     _loc10_ = param1.targetedCell;
                  }
                  var _loc13_:FightContext = param1.copy();
                  _loc13_.targetedCell = _loc10_;
                  _loc12_ = param2.getFirstParentEffect().getSpellEffect().isCritical;
                  var _loc14_:HaxeSpell = _loc11_.actionId == 1008?DamageCalculator.dataInterface.getBombCastOnFighterSpell(_loc11_.param1,_loc11_.param2):DamageCalculator.dataInterface.createSpellFromId(_loc11_.param1,_loc11_.param2);
                  if(_loc14_ != null)
                  {
                     return {
                        "context":_loc13_,
                        "caster":_loc7_,
                        "spell":_loc14_,
                        "isCritical":_loc12_
                     };
                  }
                  return null;
               }
            }
         }
         _loc7_ = param3;
         _loc8_ = param3;
         §§goto(addr123);
      }
      
      public static function executeMarks(param1:FightContext, param2:RunningEffect, param3:HaxeFighter, param4:int, param5:Boolean) : void
      {
         var _loc7_:int = 0;
         var _loc8_:* = null as Mark;
         var _loc9_:int = 0;
         var _loc10_:* = null as Array;
         var _loc6_:Array = param1.map.getMarkInteractingWithCell(param4);
         if(_loc6_ != null)
         {
            _loc7_ = 0;
            while(_loc7_ < int(_loc6_.length))
            {
               _loc8_ = _loc6_[_loc7_];
               _loc7_++;
               if(!!_loc8_.active && int(param1.triggeredMarks.indexOf(_loc8_.markId)) == -1)
               {
                  switch(_loc8_.markType)
                  {
                     default:
                     default:
                        continue;
                     case 2:
                        DamageCalculator.executeMarkSpell(param3,_loc8_,param2,param1,param5);
                        continue;
                     case 3:
                        DamageCalculator.executeWallDamage(param3,_loc8_,param2,param1,param5);
                        continue;
                     case 4:
                        _loc9_ = param1.map.getOutputPortalCell(param4);
                        _loc10_ = param1.map.getMarkInteractingWithCell(_loc9_,4);
                        param1.triggeredMarks.push(_loc8_.markId);
                        param1.triggeredMarks.push(_loc10_[0].markId);
                        param3.setCurrentPositionCell(_loc9_);
                        continue;
                  }
               }
               else
               {
                  continue;
               }
            }
         }
      }
      
      public static function executeMarkSpell(param1:HaxeFighter, param2:Mark, param3:RunningEffect, param4:FightContext, param5:Boolean) : void
      {
         if(!param2.active || FpUtils.arrayContains_Int(param4.triggeredMarks,param2.markId))
         {
            return;
         }
         param4.triggeredMarks.push(param2.markId);
         var _loc6_:FightContext = param4.copy();
         _loc6_.targetedCell = param2.mainCell;
         _loc6_.inMovement = true;
         var _loc7_:HaxeFighter = param4.getFighterById(param2.casterId);
         if(param1 != null)
         {
            param1.savePositionBeforeSpellExecution();
         }
         var _loc8_:Boolean = _loc7_.id != param4.originalCaster.id && _loc7_.playerType == PlayerTypeEnum.HUMAN;
         DamageCalculator.executeSpell(_loc6_,_loc7_,param2.associatedSpell,param3.forceCritical,param3,param5,_loc8_);
      }
      
      public static function executeWallDamage(param1:HaxeFighter, param2:Mark, param3:RunningEffect, param4:FightContext, param5:Boolean) : void
      {
         var _loc8_:* = null as HaxeFighter;
         var _loc9_:* = null as LinkedListNode;
         var _loc10_:* = null as LinkedListNode;
         var _loc11_:* = null as LinkedListNode;
         var _loc6_:int = 0;
         var _loc7_:Array = DamageCalculator.getBombsLinkedToWall(param1,param4);
         while(_loc6_ < int(_loc7_.length))
         {
            _loc8_ = _loc7_[_loc6_];
            _loc6_++;
            _loc9_ = _loc8_._buffs.head;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_;
               _loc9_ = _loc9_.next;
               _loc11_ = _loc10_;
               if(_loc11_.item.effect.actionId == 1027)
               {
                  _loc8_.getSummoner(param4).storePendingBuff(_loc11_.item);
               }
            }
            _loc8_.removeBuffByActionId(1027);
         }
         DamageCalculator.executeMarkSpell(param1,param2,param3,param4,param5);
      }
      
      public static function getBombsLinkedToWall(param1:HaxeFighter, param2:FightContext) : Array
      {
         var _loc6_:int = 0;
         var _loc7_:* = null as HaxeFighter;
         var _loc8_:int = 0;
         var _loc9_:* = null as HaxeFighter;
         var _loc3_:Array = [];
         var _loc4_:Array = [];
         var mainMark:Mark = param2.map.getMarkInteractingWithCell(int(param1.getCurrentPositionCell()),3)[0];
         var _loc5_:Array = param2.getFightersFromZone(DamageCalculator.WALL_ZONE,mainMark.mainCell,mainMark.mainCell);
         _loc5_.sort(function(param1:HaxeFighter, param2:HaxeFighter):int
         {
            return int(TargetManagement.comparePositions(mainMark.mainCell,false,int(param1.getCurrentPositionCell()),int(param2.getCurrentPositionCell())));
         });
         _loc6_ = 0;
         while(_loc6_ < int(_loc5_.length))
         {
            _loc7_ = _loc5_[_loc6_];
            _loc6_++;
            if(_loc7_.playerType == PlayerTypeEnum.MONSTER && _loc7_.data.isSummon() && int(HaxeFighter.BOMB_BREED_ID.indexOf(_loc7_.breed)) != -1 && Number(_loc7_.data.getSummonerId()) == mainMark.casterId)
            {
               if(int(_loc3_.length) == 0)
               {
                  _loc3_.push(_loc7_);
               }
               else
               {
                  _loc8_ = 0;
                  while(_loc8_ < int(_loc3_.length))
                  {
                     _loc9_ = _loc3_[_loc8_];
                     _loc8_++;
                     if(int(_loc3_.indexOf(_loc7_)) == -1)
                     {
                        _loc3_.push(_loc7_);
                     }
                     if(_loc9_ != _loc7_ && _loc7_.breed == _loc9_.breed && int(MapTools.getLookDirection4(int(_loc7_.getCurrentPositionCell()),int(_loc9_.getCurrentPositionCell()))) != -1 && int(MapTools.getDistance(int(_loc7_.getCurrentPositionCell()),int(_loc9_.getCurrentPositionCell()))) <= 7)
                     {
                        if(int(_loc4_.indexOf(_loc7_)) == -1)
                        {
                           _loc4_.push(_loc7_);
                        }
                        if(int(_loc4_.indexOf(_loc9_)) == -1)
                        {
                           _loc4_.push(_loc9_);
                        }
                        if(int(_loc4_.length) == 3)
                        {
                           return _loc4_;
                        }
                     }
                  }
               }
               continue;
            }
         }
         if(int(_loc4_.length) < 3 && int(_loc3_.length) < 3)
         {
            _loc6_ = 0;
            while(_loc6_ < int(_loc4_.length))
            {
               _loc7_ = _loc4_[_loc6_];
               _loc6_++;
               if(int(_loc4_.length) == 3)
               {
                  break;
               }
               _loc5_ = param2.getFightersFromZone(DamageCalculator.WALL_ZONE,int(_loc7_.getCurrentPositionCell()),int(_loc7_.getCurrentPositionCell()));
               _loc8_ = 0;
               while(_loc8_ < int(_loc5_.length))
               {
                  _loc9_ = _loc5_[_loc8_];
                  _loc8_++;
                  if(Number(_loc9_.data.getSummonerId()) == mainMark.casterId && (_loc9_.playerType == PlayerTypeEnum.MONSTER && _loc9_.data.isSummon() && int(HaxeFighter.BOMB_BREED_ID.indexOf(_loc9_.breed)) != -1) && int(_loc4_.indexOf(_loc9_)) == -1 && _loc9_.breed == _loc7_.breed)
                  {
                     _loc4_.push(_loc9_);
                     break;
                  }
               }
            }
         }
         return _loc4_;
      }
      
      public static function create32BitHashSpellLevel(param1:int, param2:int) : int
      {
         return param2 << 24 | param1;
      }
   }
}
