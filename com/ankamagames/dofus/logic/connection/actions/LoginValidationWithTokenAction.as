package com.ankamagames.dofus.logic.connection.actions
{
   public class LoginValidationWithTokenAction extends LoginValidationAction
   {
       
      
      public function LoginValidationWithTokenAction(params:Array = null)
      {
         super(params);
      }
      
      public static function create(autoSelectServer:Boolean = false, serverId:uint = 0) : LoginValidationWithTokenAction
      {
         var a:LoginValidationWithTokenAction = new LoginValidationWithTokenAction(arguments);
         a.password = "";
         a.username = "";
         a.autoSelectServer = autoSelectServer;
         a.serverId = serverId;
         return a;
      }
   }
}
