package com.ankamagames.dofus.logic.game.fight.frames.Preview
{
   import com.ankamagames.atouin.managers.EntitiesManager;
   import com.ankamagames.dofus.datacenter.monsters.Monster;
   import com.ankamagames.dofus.datacenter.monsters.MonsterGrade;
   import com.ankamagames.dofus.datacenter.spells.Spell;
   import com.ankamagames.dofus.datacenter.spells.SpellBomb;
   import com.ankamagames.dofus.datacenter.spells.SpellLevel;
   import com.ankamagames.dofus.datacenter.spells.SpellState;
   import com.ankamagames.dofus.kernel.Kernel;
   import com.ankamagames.dofus.logic.game.fight.frames.FightContextFrame;
   import com.ankamagames.dofus.network.types.game.context.fight.GameContextBasicSpawnInformation;
   import com.ankamagames.dofus.network.types.game.context.fight.GameFightMinimalStats;
   import com.ankamagames.dofus.network.types.game.context.fight.GameFightMonsterInformations;
   import damageCalculation.DamageCalculationInterface;
   import damageCalculation.fighterManagement.HaxeFighter;
   import damageCalculation.fighterManagement.PlayerTypeEnum;
   import damageCalculation.spellManagement.HaxeSpell;
   import damageCalculation.spellManagement.HaxeSpellState;
   
   public class DamageCalculationTranslator implements DamageCalculationInterface
   {
       
      
      public function DamageCalculationTranslator()
      {
         super();
      }
      
      public function createSpellFromId(spellId:uint, level:int) : HaxeSpell
      {
         var spell:Spell = Spell.getSpellById(spellId);
         var spellLevel:SpellLevel = spell.getSpellLevel(level);
         if(level != spellLevel.grade)
         {
            return null;
         }
         return DamagePreview.createHaxeSpell(spellLevel);
      }
      
      public function getBombCastOnFighterSpell(bombId:int, level:int) : HaxeSpell
      {
         var bombSpellId:int = SpellBomb.getSpellBombById(bombId).instantSpellId;
         var spellLevel:SpellLevel = Spell.getSpellById(bombSpellId).getSpellLevel(level);
         return DamagePreview.createHaxeSpell(spellLevel);
      }
      
      public function getLinkedExplosionSpellFromFighter(bomb:HaxeFighter) : HaxeSpell
      {
         var context:FightContextFrame = null;
         var infos:GameFightMonsterInformations = null;
         var spellId:int = 0;
         var spellLevel:SpellLevel = null;
         if(bomb.isBomb())
         {
            context = Kernel.getWorker().getFrame(FightContextFrame) as FightContextFrame;
            if(context == null)
            {
               return null;
            }
            infos = context.entitiesFrame.getEntityInfos(bomb.id) as GameFightMonsterInformations;
            if(infos == null)
            {
               return null;
            }
            spellId = SpellBomb.getSpellBombById(bomb.breed).chainReactionSpellId;
            spellLevel = Spell.getSpellById(spellId).spellLevelsInfo[infos.creatureGrade - 1];
            return DamagePreview.createHaxeSpell(spellLevel);
         }
         return null;
      }
      
      public function getBombExplosionSpellFromFighter(bomb:HaxeFighter) : HaxeSpell
      {
         var context:FightContextFrame = null;
         var infos:GameFightMonsterInformations = null;
         var spellId:int = 0;
         var spellLevel:SpellLevel = null;
         if(bomb != null && bomb.playerType == PlayerTypeEnum.MONSTER && bomb.data.isSummon())
         {
            context = Kernel.getWorker().getFrame(FightContextFrame) as FightContextFrame;
            if(context == null)
            {
               return null;
            }
            infos = context.entitiesFrame.getEntityInfos(bomb.id) as GameFightMonsterInformations;
            if(infos == null)
            {
               return null;
            }
            spellId = SpellBomb.getSpellBombById(bomb.breed).explodSpellId;
            spellLevel = Spell.getSpellById(spellId).spellLevelsInfo[infos.creatureGrade - 1];
            return DamagePreview.createHaxeSpell(spellLevel);
         }
         return null;
      }
      
      public function createStateFromId(stateId:uint) : HaxeSpellState
      {
         var effectId:int = 0;
         var state:SpellState = SpellState.getSpellStateById(stateId);
         var effects:Array = [];
         for each(effectId in state.effectsIds)
         {
            effects.push(effectId);
         }
         return new HaxeSpellState(stateId,effects);
      }
      
      public function summonMonster(caster:HaxeFighter, id:int, grade:int = -1) : HaxeFighter
      {
         var infos:GameFightMonsterInformations = new GameFightMonsterInformations();
         infos.spawnInfo = new GameContextBasicSpawnInformation();
         infos.spawnInfo.alive = true;
         infos.spawnInfo.teamId = caster.teamId;
         infos.stats = new GameFightMinimalStats();
         infos.stats.lifePoints = 1;
         infos.stats.maxLifePoints = 1;
         infos.stats.baseMaxLifePoints = 1;
         infos.creatureGrade = grade;
         infos.creatureGenericId = id;
         infos.stats.summoned = true;
         infos.stats.summoner = caster.id;
         var fighter:HaxeFighter = new FighterTranslator(infos,EntitiesManager.getInstance().getFreeEntityId());
         if(!fighter.level)
         {
            fighter.level = caster.level;
         }
         return fighter;
      }
      
      public function getStartingSpell(fighter:HaxeFighter, grade:int = -1) : HaxeSpell
      {
         var monster:Monster = null;
         var currentMonsterGrade:MonsterGrade = null;
         var currentGrade:MonsterGrade = null;
         var spellLevel:SpellLevel = null;
         if(fighter.playerType == PlayerTypeEnum.MONSTER)
         {
            monster = Monster.getMonsterById(fighter.breed);
            if(monster)
            {
               for each(currentGrade in monster.grades)
               {
                  if(currentGrade.grade === grade)
                  {
                     currentMonsterGrade = currentGrade;
                     break;
                  }
               }
               spellLevel = SpellLevel.getLevelById(currentMonsterGrade.startingSpellId);
               if(spellLevel)
               {
                  return DamagePreview.createHaxeSpell(spellLevel);
               }
            }
         }
         return null;
      }
   }
}
