package tools
{
   import haxe.IMap;
   import haxe.ds.IntMap;
   
   public class ActionIdHelper
   {
      
      public static var STAT_BUFF_ACTION_IDS:Array = [283,293,110,118,125,2844,123,119,126,124,422,424,426,428,430,138,112,165,1054,414,416,418,420,1171,2808,2812,2800,2804,2802,2806,2814,2810,178,2872,226,225,1166,1167,240,243,241,242,244,1076,111,128,1144,182,210,211,212,213,214,117,115,174,176,1039,1040,220,158,161,160,752,753,776,412,410,121,150,2846,2848,2852,2850,2854,2856,2858,2860,2836,2838,2840,2834,2842,2844];
      
      public static var STAT_DEBUFF_ACTION_IDS:Array = [157,153,2845,152,154,155,156,423,425,427,429,431,186,145,415,417,419,421,1172,2809,2813,2801,2805,2803,2807,2815,2811,179,245,248,246,247,249,1077,168,169,215,216,217,218,219,116,171,175,177,159,163,162,754,755,413,411,2857,2855,2861,2859,2853,2851,2849,2847,2843,2841,2839,2837,2835];
      
      public static var actionIdToStatNameMap:IMap = _loc1_;
       
      
      public function ActionIdHelper()
      {
      }
      
      public static function isBasedOnCasterLife(param1:int) : Boolean
      {
         if(!(ActionIdHelper.isBasedOnCasterLifePercent(param1) || ActionIdHelper.isBasedOnCasterLifeMidlife(param1) || ActionIdHelper.isBasedOnCasterLifeMissing(param1)))
         {
            return Boolean(ActionIdHelper.isBasedOnCasterLifeMissingMaxLife(param1));
         }
         return true;
      }
      
      public static function isBasedOnCasterLifePercent(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 85)
         {
            if(_loc2_ != 86)
            {
               if(_loc2_ != 87)
               {
                  if(_loc2_ != 88)
                  {
                     if(_loc2_ != 89)
                     {
                        if(_loc2_ != 90)
                        {
                           if(_loc2_ != 671)
                           {
                              return false;
                           }
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public static function isBasedOnCasterLifeMissing(param1:int) : Boolean
      {
         if(param1 == 279 || param1 == 275 || param1 == 276 || param1 == 277 || param1 == 278)
         {
            return true;
         }
         return false;
      }
      
      public static function isBasedOnCasterLifeMissingMaxLife(param1:int) : Boolean
      {
         if(param1 == 1118 || param1 == 1121 || param1 == 1122 || param1 == 1119 || param1 == 1120)
         {
            return true;
         }
         return false;
      }
      
      public static function isBasedOnCasterLifeMidlife(param1:int) : Boolean
      {
         return param1 == 672;
      }
      
      public static function isSplash(param1:int) : Boolean
      {
         if(!ActionIdHelper.isSplashDamage(param1))
         {
            return Boolean(ActionIdHelper.isSplashHeal(param1));
         }
         return true;
      }
      
      public static function isSplashDamage(param1:int) : Boolean
      {
         if(!ActionIdHelper.isSplashFinalDamage(param1))
         {
            return Boolean(ActionIdHelper.isSplashRawDamage(param1));
         }
         return true;
      }
      
      public static function isSplashFinalDamage(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 1223)
         {
            if(_loc2_ != 1224)
            {
               if(_loc2_ != 1225)
               {
                  if(_loc2_ != 1226)
                  {
                     if(_loc2_ != 1227)
                     {
                        if(_loc2_ != 1228)
                        {
                           return false;
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public static function isSplashRawDamage(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 1123)
         {
            if(_loc2_ != 1124)
            {
               if(_loc2_ != 1125)
               {
                  if(_loc2_ != 1126)
                  {
                     if(_loc2_ != 1127)
                     {
                        if(_loc2_ != 1128)
                        {
                           return false;
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public static function isSplashHeal(param1:int) : Boolean
      {
         if(param1 == 2020)
         {
            return true;
         }
         return false;
      }
      
      public static function isBasedOnMovementPoints(param1:int) : Boolean
      {
         if(param1 == 1012 || param1 == 1013 || param1 == 1016 || param1 == 1015 || param1 == 1014)
         {
            return true;
         }
         return false;
      }
      
      public static function isBasedOnTargetLifePercent(param1:int) : Boolean
      {
         if(param1 == 1071 || param1 == 1068 || param1 == 1070 || param1 == 1067 || param1 == 1069 || param1 == 1048)
         {
            return true;
         }
         return false;
      }
      
      public static function isTargetMaxLifeAffected(param1:int) : Boolean
      {
         if(!(param1 == 1037 || param1 == 153 || param1 == 1033 || param1 == 125 || param1 == 1078 || param1 == 610 || param1 == 267 || param1 == 2844))
         {
            return param1 == 2845;
         }
         return true;
      }
      
      public static function isBasedOnTargetLife(param1:int) : Boolean
      {
         if(!(ActionIdHelper.isBasedOnTargetLifePercent(param1) || ActionIdHelper.isBasedOnTargetMaxLife(param1)))
         {
            return Boolean(ActionIdHelper.isBasedOnTargetLifeMissingMaxLife(param1));
         }
         return true;
      }
      
      public static function isBasedOnTargetMaxLife(param1:int) : Boolean
      {
         return param1 == 1109;
      }
      
      public static function isBasedOnTargetLifeMissingMaxLife(param1:int) : Boolean
      {
         if(param1 == 1092 || param1 == 1095 || param1 == 1096 || param1 == 1093 || param1 == 1094)
         {
            return true;
         }
         return false;
      }
      
      public static function isBoostable(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = param1;
         if(_loc3_ != 80)
         {
            if(_loc3_ != 82)
            {
               if(_loc3_ != 144)
               {
                  if(_loc3_ != 1063)
                  {
                     if(_loc3_ != 1064)
                     {
                        if(_loc3_ != 1065)
                        {
                           if(_loc3_ != 1066)
                           {
                              _loc2_ = ActionIdHelper.isBasedOnCasterLife(param1) || ActionIdHelper.isBasedOnTargetLife(param1) || ActionIdHelper.isSplash(param1);
                              if(_loc2_ == true)
                              {
                                 return false;
                              }
                              return true;
                           }
                        }
                     }
                  }
               }
            }
         }
         return false;
      }
      
      public static function isLifeSteal(param1:int) : Boolean
      {
         if(param1 == 95 || param1 == 82 || param1 == 92 || param1 == 94 || param1 == 91 || param1 == 93)
         {
            return true;
         }
         return false;
      }
      
      public static function isHeal(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 81)
         {
            if(_loc2_ != 90)
            {
               if(_loc2_ != 108)
               {
                  if(_loc2_ != 143)
                  {
                     if(_loc2_ != 407)
                     {
                        if(_loc2_ != 786)
                        {
                           if(_loc2_ != 1037)
                           {
                              if(_loc2_ != 1109)
                              {
                                 if(_loc2_ != 2020)
                                 {
                                    return false;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public static function isShield(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 1020)
         {
            if(_loc2_ != 1039)
            {
               if(_loc2_ != 1040)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function isTargetMarkDispell(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 2018)
         {
            if(_loc2_ != 2019)
            {
               if(_loc2_ != 2024)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function isStatBoost(param1:int) : Boolean
      {
         switch(param1)
         {
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
               return false;
            case 266:
            default:
            case 268:
            case 269:
            case 270:
            case 271:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            case 414:
               return true;
         }
      }
      
      public static function statBoostToStatName(param1:int) : String
      {
         switch(param1)
         {
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
               return null;
            case 266:
            default:
               return "chance";
            case 268:
               return "agility";
            case 269:
               return "intelligence";
            case 270:
               return "wisdom";
            case 271:
               return "strength";
         }
      }
      
      public static function statBoostToBuffActionId(param1:int) : int
      {
         switch(param1)
         {
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
               return 0;
            case 266:
            default:
               return 123;
            case 268:
               return 119;
            case 269:
               return 126;
            case 270:
               return 124;
            case 271:
               return 118;
         }
      }
      
      public static function statBoostToDebuffActionId(param1:int) : int
      {
         switch(param1)
         {
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
               return -1;
            case 266:
            default:
               return 152;
            case 268:
               return 154;
            case 269:
               return 155;
            case 270:
               return 156;
            case 271:
               return 157;
         }
      }
      
      public static function isDamage(param1:int) : Boolean
      {
         if(param1 == 2)
         {
            return true;
         }
         return false;
      }
      
      public static function isPush(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 5)
         {
            if(_loc2_ != 1021)
            {
               if(_loc2_ != 1041)
               {
                  if(_loc2_ != 1103)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      public static function isPull(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 6)
         {
            if(_loc2_ != 1022)
            {
               if(_loc2_ != 1042)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function isForcedDrag(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 1021)
         {
            if(_loc2_ != 1022)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function isDrag(param1:int) : Boolean
      {
         if(!ActionIdHelper.isPush(param1))
         {
            return Boolean(ActionIdHelper.isPull(param1));
         }
         return true;
      }
      
      public static function allowCollisionDamages(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 5)
         {
            if(_loc2_ != 1041)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function isSummon(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = param1;
         if(_loc3_ == 181)
         {
            _loc2_ = ActionIdHelper.isSummonWithSlot(param1);
            if(_loc2_ == true)
            {
               return true;
            }
            return true;
         }
         if(_loc3_ != 780)
         {
            if(_loc3_ != 1008)
            {
               if(_loc3_ != 1097)
               {
                  if(_loc3_ != 1189)
                  {
                     _loc2_ = ActionIdHelper.isSummonWithSlot(param1);
                     if(_loc2_ == true)
                     {
                        return true;
                     }
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      public static function isSummonWithSlot(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 180)
         {
            if(_loc2_ != 405)
            {
               if(_loc2_ != 1011)
               {
                  if(_loc2_ != 1034)
                  {
                     if(_loc2_ != 2796)
                     {
                        return false;
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public static function isSummonWithoutTarget(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 180)
         {
            if(_loc2_ != 181)
            {
               if(_loc2_ != 780)
               {
                  if(_loc2_ != 1008)
                  {
                     if(_loc2_ != 1011)
                     {
                        if(_loc2_ != 1034)
                        {
                           if(_loc2_ != 1097)
                           {
                              if(_loc2_ != 1189)
                              {
                                 return false;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public static function isKillAndSummon(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 405)
         {
            if(_loc2_ != 2796)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function isRevive(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 780)
         {
            if(_loc2_ != 1034)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function getSplashFinalTakenDamageElement(param1:int) : int
      {
         switch(param1)
         {
            case 0:
               return 1224;
            case 1:
               return 1228;
            case 2:
               return 1226;
            case 3:
               return 1227;
            case 4:
               return 1225;
         }
      }
      
      public static function getSplashRawTakenDamageElement(param1:int) : int
      {
         switch(param1)
         {
            case 0:
               return 1124;
            case 1:
               return 1128;
            case 2:
               return 1126;
            case 3:
               return 1127;
            case 4:
               return 1125;
         }
      }
      
      public static function isFakeDamage(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 90)
         {
            if(_loc2_ != 1047)
            {
               if(_loc2_ != 1048)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function isSpellExecution(param1:int) : Boolean
      {
         if(param1 == 1160 || param1 == 2160 || param1 == 1019 || param1 == 1018 || param1 == 792 || param1 == 2792 || param1 == 2794 || param1 == 2795 || param1 == 1017 || param1 == 2017 || param1 == 793 || param1 == 2793)
         {
            return true;
         }
         return false;
      }
      
      public static function isTeleport(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = param1;
         if(_loc3_ != 4)
         {
            if(_loc3_ != 1099)
            {
               if(_loc3_ != 1100)
               {
                  if(_loc3_ != 1101)
                  {
                     if(_loc3_ != 1104)
                     {
                        if(_loc3_ != 1105)
                        {
                           if(_loc3_ != 1106)
                           {
                              _loc2_ = ActionIdHelper.isExchange(param1);
                              if(_loc2_ == true)
                              {
                                 return true;
                              }
                              return false;
                           }
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public static function isExchange(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 8)
         {
            if(_loc2_ != 1023)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function canTeleportOverBreedSwitchPos(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 4)
         {
            if(_loc2_ != 1023)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function allowAOEMalus(param1:int) : Boolean
      {
         if(!!ActionIdHelper.isSplash(param1) && false || ActionIdHelper.isShield(param1))
         {
            return false;
         }
         return true;
      }
      
      public static function canTriggerHealMultiplier(param1:int) : Boolean
      {
         if(param1 == 90)
         {
            return false;
         }
         return true;
      }
      
      public static function canTriggerDamageMultiplier(param1:int) : Boolean
      {
         if(param1 == 90)
         {
            return false;
         }
         return true;
      }
      
      public static function canTriggerOnHeal(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 90)
         {
            if(_loc2_ != 786)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function canTriggerOnDamage(param1:int) : Boolean
      {
         if(param1 == 1048)
         {
            return false;
         }
         return true;
      }
      
      public static function StatToBuffPercentActionIds(param1:String) : int
      {
         var _loc2_:String = param1;
         if(_loc2_ == "actionPoints")
         {
            return 2846;
         }
         if(_loc2_ == "agility")
         {
            return 2836;
         }
         if(_loc2_ == "chance")
         {
            return 2840;
         }
         if(_loc2_ == "intelligence")
         {
            return 2838;
         }
         if(_loc2_ != "maxMovementPoints")
         {
            if(_loc2_ != "movementPoints")
            {
               if(_loc2_ == "strength")
               {
                  return 2834;
               }
               if(_loc2_ == "vitality")
               {
                  return 2844;
               }
               if(_loc2_ == "wisdom")
               {
                  return 2842;
               }
               return -1;
            }
         }
         return 2848;
      }
      
      public static function StatToDebuffPercentActionIds(param1:String) : int
      {
         var _loc2_:String = param1;
         if(_loc2_ == "actionPoints")
         {
            return 2847;
         }
         if(_loc2_ == "agility")
         {
            return 2837;
         }
         if(_loc2_ == "chance")
         {
            return 2841;
         }
         if(_loc2_ == "intelligence")
         {
            return 2839;
         }
         if(_loc2_ != "maxMovementPoints")
         {
            if(_loc2_ != "movementPoints")
            {
               if(_loc2_ == "strength")
               {
                  return 2835;
               }
               if(_loc2_ == "vitality")
               {
                  return 2845;
               }
               if(_loc2_ == "wisdom")
               {
                  return 2843;
               }
               return -1;
            }
         }
         return 2848;
      }
      
      public static function StatToBuffActionIds(param1:String) : int
      {
         var _loc2_:String = param1;
         if(_loc2_ == "actionPoints")
         {
            return 111;
         }
         if(_loc2_ == "agility")
         {
            return 119;
         }
         if(_loc2_ == "airDamageBonus")
         {
            return 428;
         }
         if(_loc2_ == "airElementReduction")
         {
            return 242;
         }
         if(_loc2_ == "airElementResistPercent")
         {
            return 212;
         }
         if(_loc2_ == "allDamagesBonus")
         {
            return 112;
         }
         if(_loc2_ == "bombCombo")
         {
            return 1027;
         }
         if(_loc2_ == "chance")
         {
            return 123;
         }
         if(_loc2_ == "criticalDamageBonus")
         {
            return 418;
         }
         if(_loc2_ == "criticalDamageReduction")
         {
            return 420;
         }
         if(_loc2_ == "damagesBonusPercent")
         {
            return 138;
         }
         if(_loc2_ == "dealtDamagesMultiplicator")
         {
            return 1171;
         }
         if(_loc2_ == "earthDamageBonus")
         {
            return 422;
         }
         if(_loc2_ == "earthElementReduction")
         {
            return 240;
         }
         if(_loc2_ == "earthElementResistPercent")
         {
            return 210;
         }
         if(_loc2_ == "fireDamageBonus")
         {
            return 424;
         }
         if(_loc2_ == "fireElementReduction")
         {
            return 243;
         }
         if(_loc2_ == "fireElementResistPercent")
         {
            return 213;
         }
         if(_loc2_ == "glyphPower")
         {
            return 1166;
         }
         if(_loc2_ == "healBonus")
         {
            return 178;
         }
         if(_loc2_ == "intelligence")
         {
            return 126;
         }
         if(_loc2_ == "maxLifePoints")
         {
            return 110;
         }
         if(_loc2_ == "meleeDamageDonePercent")
         {
            return 2800;
         }
         if(_loc2_ == "meleeDamageReceivedPercent")
         {
            return 2802;
         }
         if(_loc2_ != "maxMovementPoints")
         {
            if(_loc2_ != "movementPoints")
            {
               if(_loc2_ == "neutralDamageBonus")
               {
                  return 430;
               }
               if(_loc2_ == "neutralElementReduction")
               {
                  return 244;
               }
               if(_loc2_ == "neutralElementResistPercent")
               {
                  return 214;
               }
               if(_loc2_ == "percentResist")
               {
                  return 1076;
               }
               if(_loc2_ == "pushDamageBonus")
               {
                  return 414;
               }
               if(_loc2_ == "pushDamageFixedResist")
               {
                  return 416;
               }
               if(_loc2_ == "pvpAirElementPercentResist")
               {
                  return 252;
               }
               if(_loc2_ == "pvpAirElementReduction")
               {
                  return 262;
               }
               if(_loc2_ == "pvpEarthElementPercentResist")
               {
                  return 250;
               }
               if(_loc2_ == "pvpEarthElementReduction")
               {
                  return 260;
               }
               if(_loc2_ == "pvpFireElementReduction")
               {
                  return 263;
               }
               if(_loc2_ == "pvpFireElementResistPercent")
               {
                  return 253;
               }
               if(_loc2_ == "pvpNeutralElementPercentResist")
               {
                  return 254;
               }
               if(_loc2_ == "pvpNeutralElementReduction")
               {
                  return 264;
               }
               if(_loc2_ == "pvpWaterElementPercentResist")
               {
                  return 251;
               }
               if(_loc2_ == "pvpWaterElementReduction")
               {
                  return 261;
               }
               if(_loc2_ == "rangedDamageDonePercent")
               {
                  return 2804;
               }
               if(_loc2_ == "rangedDamageReceivedPercent")
               {
                  return 2806;
               }
               if(_loc2_ == "runePower")
               {
                  return 1167;
               }
               if(_loc2_ == "shieldPoints")
               {
                  return 1040;
               }
               if(_loc2_ == "spellDamageDonePercent")
               {
                  return 2812;
               }
               if(_loc2_ == "spellDamageReceivedPercent")
               {
                  return 2814;
               }
               if(_loc2_ == "spellPercentDamages")
               {
                  return 1054;
               }
               if(_loc2_ == "strength")
               {
                  return 118;
               }
               if(_loc2_ == "trapBonus")
               {
                  return 225;
               }
               if(_loc2_ == "trapBonusPercent")
               {
                  return 226;
               }
               if(_loc2_ == "vitality")
               {
                  return 125;
               }
               if(_loc2_ == "waterDamageBonus")
               {
                  return 426;
               }
               if(_loc2_ == "waterElementReduction")
               {
                  return 241;
               }
               if(_loc2_ == "waterElementResistPercent")
               {
                  return 211;
               }
               if(_loc2_ == "weaponDamageDonePercent")
               {
                  return 2808;
               }
               if(_loc2_ == "weaponDamageReceivedPercent")
               {
                  return 2810;
               }
               if(_loc2_ == "weaponDamagesBonusPercent")
               {
                  return 165;
               }
               if(_loc2_ == "weaponPower")
               {
                  return 1144;
               }
               if(_loc2_ == "wisdom")
               {
                  return 124;
               }
               return -1;
            }
         }
         return 128;
      }
      
      public static function StatToDebuffActionIds(param1:String) : int
      {
         var _loc2_:String = param1;
         if(_loc2_ == "actionPoints")
         {
            return 168;
         }
         if(_loc2_ == "agility")
         {
            return 154;
         }
         if(_loc2_ == "airDamageBonus")
         {
            return 429;
         }
         if(_loc2_ == "airElementReduction")
         {
            return 247;
         }
         if(_loc2_ == "airElementResistPercent")
         {
            return 217;
         }
         if(_loc2_ == "allDamagesBonus")
         {
            return 145;
         }
         if(_loc2_ == "chance")
         {
            return 152;
         }
         if(_loc2_ == "criticalDamageBonus")
         {
            return 419;
         }
         if(_loc2_ == "criticalDamageReduction")
         {
            return 421;
         }
         if(_loc2_ == "damagesBonusPercent")
         {
            return 186;
         }
         if(_loc2_ == "dealtDamagesMultiplicator")
         {
            return 1172;
         }
         if(_loc2_ == "earthDamageBonus")
         {
            return 423;
         }
         if(_loc2_ == "earthElementReduction")
         {
            return 245;
         }
         if(_loc2_ == "earthElementResistPercent")
         {
            return 215;
         }
         if(_loc2_ == "fireDamageBonus")
         {
            return 425;
         }
         if(_loc2_ == "fireElementReduction")
         {
            return 248;
         }
         if(_loc2_ == "fireElementResistPercent")
         {
            return 218;
         }
         if(_loc2_ == "healBonus")
         {
            return 179;
         }
         if(_loc2_ == "intelligence")
         {
            return 155;
         }
         if(_loc2_ == "meleeDamageDonePercent")
         {
            return 2801;
         }
         if(_loc2_ == "meleeDamageReceivedPercent")
         {
            return 2803;
         }
         if(_loc2_ != "maxMovementPoints")
         {
            if(_loc2_ != "movementPoints")
            {
               if(_loc2_ == "neutralDamageBonus")
               {
                  return 431;
               }
               if(_loc2_ == "neutralElementReduction")
               {
                  return 249;
               }
               if(_loc2_ == "neutralElementResistPercent")
               {
                  return 219;
               }
               if(_loc2_ == "percentResist")
               {
                  return 1077;
               }
               if(_loc2_ == "pushDamageBonus")
               {
                  return 415;
               }
               if(_loc2_ == "pushDamageFixedResist")
               {
                  return 417;
               }
               if(_loc2_ == "pvpAirElementPercentResist")
               {
                  return 257;
               }
               if(_loc2_ == "pvpEarthElementPercentResist")
               {
                  return 255;
               }
               if(_loc2_ == "pvpFireElementResistPercent")
               {
                  return 258;
               }
               if(_loc2_ == "pvpNeutralElementPercentResist")
               {
                  return 259;
               }
               if(_loc2_ == "pvpWaterElementPercentResist")
               {
                  return 256;
               }
               if(_loc2_ == "rangedDamageDonePercent")
               {
                  return 2805;
               }
               if(_loc2_ == "rangedDamageReceivedPercent")
               {
                  return 2807;
               }
               if(_loc2_ == "spellDamageDonePercent")
               {
                  return 2813;
               }
               if(_loc2_ == "spellDamageReceivedPercent")
               {
                  return 2815;
               }
               if(_loc2_ == "strength")
               {
                  return 157;
               }
               if(_loc2_ == "vitality")
               {
                  return 153;
               }
               if(_loc2_ == "waterDamageBonus")
               {
                  return 427;
               }
               if(_loc2_ == "waterElementReduction")
               {
                  return 246;
               }
               if(_loc2_ == "waterElementResistPercent")
               {
                  return 216;
               }
               if(_loc2_ == "weaponDamageDonePercent")
               {
                  return 2809;
               }
               if(_loc2_ == "weaponDamageReceivedPercent")
               {
                  return 2811;
               }
               if(_loc2_ == "wisdom")
               {
                  return 156;
               }
               return -1;
            }
         }
         return 128;
      }
      
      public static function isLinearBuffActionIds(param1:String) : Boolean
      {
         var _loc2_:String = param1;
         if(_loc2_ != "airElementResistPercent")
         {
            if(_loc2_ != "earthElementResistPercent")
            {
               if(_loc2_ != "fireElementResistPercent")
               {
                  if(_loc2_ != "meleeDamageReceivedPercent")
                  {
                     if(_loc2_ != "neutralElementResistPercent")
                     {
                        if(_loc2_ != "percentResist")
                        {
                           if(_loc2_ != "pvpAirElementPercentResist")
                           {
                              if(_loc2_ != "pvpEarthElementPercentResist")
                              {
                                 if(_loc2_ != "pvpFireElementResistPercent")
                                 {
                                    if(_loc2_ != "pvpNeutralElementPercentResist")
                                    {
                                       if(_loc2_ != "pvpWaterElementPercentResist")
                                       {
                                          if(_loc2_ != "rangedDamageReceivedPercent")
                                          {
                                             if(_loc2_ != "spellDamageReceivedPercent")
                                             {
                                                if(_loc2_ != "trapBonusPercent")
                                                {
                                                   if(_loc2_ != "waterElementResistPercent")
                                                   {
                                                      if(_loc2_ != "weaponDamageReceivedPercent")
                                                      {
                                                         if(_loc2_ != "weaponDamagesBonusPercent")
                                                         {
                                                            return true;
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
                     }
                  }
               }
            }
         }
         return false;
      }
      
      public static function isBuff(param1:int) : Boolean
      {
         if((int(ActionIdHelper.STAT_BUFF_ACTION_IDS.indexOf(param1)) != -1 || int(ActionIdHelper.STAT_DEBUFF_ACTION_IDS.indexOf(param1)) != -1) && !ActionIdHelper.isShield(param1))
         {
            return true;
         }
         return false;
      }
      
      public static function isPositiveBoost(param1:int) : Boolean
      {
         return int(ActionIdHelper.STAT_BUFF_ACTION_IDS.indexOf(param1)) != -1;
      }
      
      public static function isNegativeBoost(param1:int) : Boolean
      {
         return int(ActionIdHelper.STAT_DEBUFF_ACTION_IDS.indexOf(param1)) != -1;
      }
      
      public static function getActionIdStatName(param1:int) : String
      {
         return ActionIdHelper.actionIdToStatNameMap.h[param1];
      }
      
      public static function spellExecutionHasGlobalLimitation(param1:int) : Boolean
      {
         var _loc2_:int = param1;
         if(_loc2_ != 2017)
         {
            if(_loc2_ != 2160)
            {
               if(_loc2_ != 2792)
               {
                  if(_loc2_ != 2793)
                  {
                     if(_loc2_ != 2795)
                     {
                        return false;
                     }
                  }
               }
            }
         }
         return true;
      }
   }
}
