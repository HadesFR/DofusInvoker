package Ankama_Social.ui
{
   import com.ankamagames.berilia.api.UiApi;
   import com.ankamagames.berilia.components.Grid;
   import com.ankamagames.berilia.components.Label;
   import com.ankamagames.berilia.types.graphic.ButtonContainer;
   import com.ankamagames.berilia.utils.ComponentHookList;
   import com.ankamagames.dofus.datacenter.guild.EmblemSymbol;
   import com.ankamagames.dofus.internalDatacenter.guild.AllianceWrapper;
   import com.ankamagames.dofus.internalDatacenter.guild.GuildWrapper;
   import com.ankamagames.dofus.logic.game.common.actions.alliance.AllianceChangeGuildRightsAction;
   import com.ankamagames.dofus.logic.game.common.actions.alliance.AllianceKickRequestAction;
   import com.ankamagames.dofus.logic.game.common.actions.alliance.SetEnableAVARequestAction;
   import com.ankamagames.dofus.misc.lists.HookList;
   import com.ankamagames.dofus.misc.lists.PrismHookList;
   import com.ankamagames.dofus.misc.lists.SocialHookList;
   import com.ankamagames.dofus.network.enums.AggressableStatusEnum;
   import com.ankamagames.dofus.network.enums.GameServerTypeEnum;
   import com.ankamagames.dofus.uiApi.ChatApi;
   import com.ankamagames.dofus.uiApi.DataApi;
   import com.ankamagames.dofus.uiApi.PlayedCharacterApi;
   import com.ankamagames.dofus.uiApi.SocialApi;
   import com.ankamagames.dofus.uiApi.SystemApi;
   import com.ankamagames.dofus.uiApi.UiTutoApi;
   import com.ankamagames.dofus.uiApi.UtilApi;
   import flash.utils.Dictionary;
   
   public class AllianceMembers
   {
       
      
      [Api(name="SystemApi")]
      public var sysApi:SystemApi;
      
      [Api(name="UiApi")]
      public var uiApi:UiApi;
      
      [Api(name="UtilApi")]
      public var utilApi:UtilApi;
      
      [Api(name="ChatApi")]
      public var chatApi:ChatApi;
      
      [Api(name="UiTutoApi")]
      public var hintsApi:UiTutoApi;
      
      [Module(name="Ankama_Common")]
      public var modCommon:Object;
      
      [Api(name="SocialApi")]
      public var socialApi:SocialApi;
      
      [Api(name="DataApi")]
      public var dataApi:DataApi;
      
      [Api(name="PlayedCharacterApi")]
      public var playerApi:PlayedCharacterApi;
      
      private var _guildsList:Array;
      
      private var _emblemsPath:String;
      
      private var _myGuild:GuildWrapper;
      
      private var _myAlliance:AllianceWrapper;
      
      private var _bDescendingSort:Boolean = false;
      
      private var _compsLblName:Dictionary;
      
      private var _compsBtnLeader:Dictionary;
      
      private var _compsBtnKick:Dictionary;
      
      private var _compsTxEmblem:Dictionary;
      
      private var _guildIdWaitingForKick:int;
      
      private var _guildIdWaitingForLeader:int;
      
      private var _avaEnabled:Boolean = false;
      
      public var gd_guilds:Grid;
      
      public var btn_ava:ButtonContainer;
      
      public var btn_tabName:ButtonContainer;
      
      public var btn_tabLevel:ButtonContainer;
      
      public var btn_tabMembers:ButtonContainer;
      
      public var lbl_members:Label;
      
      public function AllianceMembers()
      {
         this._compsLblName = new Dictionary(true);
         this._compsBtnLeader = new Dictionary(true);
         this._compsBtnKick = new Dictionary(true);
         this._compsTxEmblem = new Dictionary(true);
         super();
      }
      
      public function main(... params) : void
      {
         var g:Object = null;
         var playerAlignment:Object = null;
         this.sysApi.addHook(SocialHookList.AllianceUpdateInformations,this.onAllianceUpdateInformations);
         this.sysApi.addHook(PrismHookList.PvpAvaStateChange,this.onPvpAvaStateChange);
         this.sysApi.addHook(HookList.GameFightEnd,this.onGameFightEnd);
         this.sysApi.addHook(HookList.GameFightJoin,this.onGameFightJoin);
         this.uiApi.addComponentHook(this.btn_ava,ComponentHookList.ON_ROLL_OVER);
         this.uiApi.addComponentHook(this.btn_ava,ComponentHookList.ON_ROLL_OUT);
         this._emblemsPath = this.uiApi.me().getConstant("emblems_uri");
         this._myGuild = this.socialApi.getGuild();
         this._myAlliance = this.socialApi.getAlliance();
         this._avaEnabled = false;
         if(this.playerApi.getPlayedCharacterInfo().level >= 50)
         {
            playerAlignment = this.playerApi.characteristics().alignmentInfos;
            if(playerAlignment.aggressable == AggressableStatusEnum.AvA_ENABLED_AGGRESSABLE || playerAlignment.aggressable == AggressableStatusEnum.AvA_ENABLED_NON_AGGRESSABLE || playerAlignment.aggressable == AggressableStatusEnum.AvA_DISQUALIFIED || playerAlignment.aggressable == AggressableStatusEnum.AvA_PREQUALIFIED_AGGRESSABLE)
            {
               this._avaEnabled = true;
            }
         }
         else
         {
            this.btn_ava.softDisabled = true;
         }
         if(this.sysApi.getCurrentServer().gameTypeId == GameServerTypeEnum.SERVER_TYPE_TEMPORIS && this.dataApi.getCurrentSeason().seasonNumber == 3)
         {
            this._avaEnabled = false;
            this.btn_ava.softDisabled = true;
         }
         if(this._avaEnabled)
         {
            this.btn_ava.selected = true;
         }
         else
         {
            this.btn_ava.selected = false;
         }
         if(this.playerApi.isInFight())
         {
            this.btn_ava.softDisabled = true;
         }
         var tempGuilds:Object = this.socialApi.getAllianceGuilds();
         this._guildsList = new Array();
         for each(g in tempGuilds)
         {
            this._guildsList.push(g);
         }
         this.gd_guilds.dataProvider = this._guildsList;
         this.lbl_members.text = this.uiApi.processText(this.uiApi.getText("ui.alliance.membersInGuilds",this._myAlliance.nbMembers,this._myAlliance.nbGuilds),"n",this._myAlliance.nbGuilds < 2,this._myAlliance.nbGuilds == 0);
      }
      
      public function updateGuildLine(data:*, components:*, selected:Boolean) : void
      {
         var icon:EmblemSymbol = null;
         if(!this._compsBtnKick[components.btn_kick.name])
         {
            this.uiApi.addComponentHook(components.btn_kick,ComponentHookList.ON_RELEASE);
            this.uiApi.addComponentHook(components.btn_kick,ComponentHookList.ON_ROLL_OVER);
            this.uiApi.addComponentHook(components.btn_kick,ComponentHookList.ON_ROLL_OUT);
         }
         this._compsBtnKick[components.btn_kick.name] = data;
         if(!this._compsBtnLeader[components.btn_giveLeadership.name])
         {
            this.uiApi.addComponentHook(components.btn_giveLeadership,ComponentHookList.ON_RELEASE);
            this.uiApi.addComponentHook(components.btn_giveLeadership,ComponentHookList.ON_ROLL_OVER);
            this.uiApi.addComponentHook(components.btn_giveLeadership,ComponentHookList.ON_ROLL_OUT);
         }
         this._compsBtnLeader[components.btn_giveLeadership.name] = data;
         if(!this._compsLblName[components.lbl_guildName.name])
         {
            this.uiApi.addComponentHook(components.lbl_guildName,ComponentHookList.ON_ROLL_OVER);
            this.uiApi.addComponentHook(components.lbl_guildName,ComponentHookList.ON_ROLL_OUT);
         }
         this._compsLblName[components.lbl_guildName.name] = data;
         if(!this._compsLblName[components.lbl_members.name])
         {
            this.uiApi.addComponentHook(components.lbl_members,ComponentHookList.ON_ROLL_OVER);
            this.uiApi.addComponentHook(components.lbl_members,ComponentHookList.ON_ROLL_OUT);
         }
         this._compsLblName[components.lbl_members.name] = data;
         if(!this._compsLblName[components.tx_leader.name])
         {
            this.uiApi.addComponentHook(components.tx_leader,ComponentHookList.ON_ROLL_OVER);
            this.uiApi.addComponentHook(components.tx_leader,ComponentHookList.ON_ROLL_OUT);
         }
         this._compsLblName[components.tx_leader.name] = true;
         this._compsTxEmblem[components.tx_emblemBack.name] = data;
         this._compsTxEmblem[components.tx_emblemUp.name] = data;
         if(data != null)
         {
            components.lbl_guildName.text = this.chatApi.getGuildLink(data,data.guildName);
            components.lbl_leaderName.text = this.uiApi.getText("ui.guild.leadBy","{player," + data.leaderName + "," + data.leaderId + "::" + data.leaderName + "}");
            components.lbl_lvl.text = data.guildLevel;
            components.lbl_perco.text = data.nbTaxCollectors + " " + this.uiApi.getText("ui.social.guildTaxCollectors").toLowerCase();
            components.lbl_members.text = this.uiApi.getText("ui.guild.onlineMembers",data.nbConnectedMembers,data.nbMembers);
            components.tx_emblemBack.uri = data.backEmblem.iconUri;
            components.tx_emblemUp.uri = data.upEmblem.iconUri;
            this.utilApi.changeColor(components.tx_emblemBack,data.backEmblem.color,1);
            icon = this.dataApi.getEmblemSymbol(data.upEmblem.idEmblem);
            if(icon.colorizable)
            {
               this.utilApi.changeColor(components.tx_emblemUp,data.upEmblem.color,0);
            }
            else
            {
               this.utilApi.changeColor(components.tx_emblemUp,data.upEmblem.color,0,true);
            }
            if(data.allianceLeader)
            {
               components.tx_leader.visible = true;
            }
            else
            {
               components.tx_leader.visible = false;
            }
            if(this._myGuild.guildId == this._myAlliance.leadingGuildId && this.socialApi.hasGuildRight(this.playerApi.id(),"isBoss"))
            {
               components.btn_kick.visible = true;
               if(this._myGuild.guildId == data.guildId)
               {
                  components.btn_giveLeadership.visible = false;
               }
               else
               {
                  components.btn_giveLeadership.visible = true;
               }
            }
            else
            {
               components.btn_giveLeadership.visible = false;
               if(this._myGuild.guildId == data.guildId && this.socialApi.hasGuildRight(this.playerApi.id(),"isBoss"))
               {
                  components.btn_kick.visible = true;
               }
               else
               {
                  components.btn_kick.visible = false;
               }
            }
         }
         else
         {
            components.lbl_guildName.text = "";
            components.lbl_leaderName.text = "";
            components.lbl_lvl.text = "";
            components.lbl_perco.text = "";
            components.lbl_members.text = "";
            components.tx_emblemBack.uri = null;
            components.tx_emblemUp.uri = null;
            components.tx_leader.visible = false;
            components.btn_giveLeadership.visible = false;
            components.btn_kick.visible = false;
         }
      }
      
      private function popupDeleteGuild(data:Object) : void
      {
         var text:String = null;
         if(data.guildId == this._myAlliance.leadingGuildId && this._guildsList.length > 1)
         {
            this.modCommon.openPopup(this.uiApi.getText("ui.popup.warning"),this.uiApi.getText("ui.alliance.guildLeaderCantBeBanned"),[this.uiApi.getText("ui.common.ok")]);
         }
         else
         {
            if(this._myGuild.guildId == data.guildId)
            {
               text = this.uiApi.getText("ui.alliance.quitConfirm");
            }
            else
            {
               text = this.uiApi.getText("ui.alliance.kickConfirm",data.guildName);
            }
            this._guildIdWaitingForKick = data.guildId;
            this.modCommon.openPopup(this.uiApi.getText("ui.popup.warning"),text,[this.uiApi.getText("ui.common.yes"),this.uiApi.getText("ui.common.no")],[this.onConfirmDeleteGuild,this.onCancelDeleteGuild],this.onConfirmDeleteGuild,this.onCancelDeleteGuild);
         }
      }
      
      private function onConfirmDeleteGuild() : void
      {
         this.sysApi.sendAction(new AllianceKickRequestAction([this._guildIdWaitingForKick]));
         this._guildIdWaitingForKick = 0;
      }
      
      private function onCancelDeleteGuild() : void
      {
         this._guildIdWaitingForKick = 0;
      }
      
      private function popupLeaderGuild(data:Object) : void
      {
         var text:String = this.uiApi.getText("ui.alliance.giveLeadershipConfirm",data.guildName);
         this._guildIdWaitingForLeader = data.guildId;
         this.modCommon.openPopup(this.uiApi.getText("ui.popup.warning"),text,[this.uiApi.getText("ui.common.yes"),this.uiApi.getText("ui.common.no")],[this.onConfirmLeaderGuild,this.onCancelLeaderGuild],this.onConfirmLeaderGuild,this.onCancelLeaderGuild);
      }
      
      private function onConfirmLeaderGuild() : void
      {
         this.sysApi.sendAction(new AllianceChangeGuildRightsAction([this._guildIdWaitingForLeader,1]));
         this._guildIdWaitingForLeader = 0;
      }
      
      private function onCancelLeaderGuild() : void
      {
         this._guildIdWaitingForLeader = 0;
      }
      
      private function onAllianceUpdateInformations() : void
      {
         var g:Object = null;
         var tempGuilds:Object = this.socialApi.getAllianceGuilds();
         this._guildsList = new Array();
         for each(g in tempGuilds)
         {
            this._guildsList.push(g);
         }
         this.gd_guilds.dataProvider = this._guildsList;
      }
      
      private function onPvpAvaStateChange(status:int, probationTime:uint) : void
      {
         if(status == AggressableStatusEnum.AvA_ENABLED_AGGRESSABLE || status == AggressableStatusEnum.AvA_ENABLED_NON_AGGRESSABLE || status == AggressableStatusEnum.AvA_DISQUALIFIED || status == AggressableStatusEnum.AvA_PREQUALIFIED_AGGRESSABLE)
         {
            this._avaEnabled = true;
            this.btn_ava.selected = true;
         }
         else
         {
            this._avaEnabled = false;
            this.btn_ava.selected = false;
         }
      }
      
      public function onGameFightJoin(... rest) : void
      {
         this.btn_ava.softDisabled = true;
      }
      
      public function onGameFightEnd(... rest) : void
      {
         this.btn_ava.softDisabled = false;
      }
      
      public function showTabHints() : void
      {
         this.hintsApi.showSubHints();
      }
      
      public function onRelease(target:Object) : void
      {
         var data:Object = null;
         var data2:Object = null;
         if(target == this.btn_ava && this.btn_ava.softDisabled == false)
         {
            this.sysApi.sendAction(new SetEnableAVARequestAction([!this._avaEnabled]));
         }
         if(target == this.btn_tabName)
         {
            if(this._bDescendingSort)
            {
               this.gd_guilds.sortOn("guildName",Array.CASEINSENSITIVE);
            }
            else
            {
               this.gd_guilds.sortOn("guildName",Array.CASEINSENSITIVE | Array.DESCENDING);
            }
            this._bDescendingSort = !this._bDescendingSort;
         }
         else if(target == this.btn_tabLevel)
         {
            if(this._bDescendingSort)
            {
               this.gd_guilds.sortOn("guildLevel",Array.NUMERIC);
            }
            else
            {
               this.gd_guilds.sortOn("guildLevel",Array.NUMERIC | Array.DESCENDING);
            }
            this._bDescendingSort = !this._bDescendingSort;
         }
         else if(target == this.btn_tabMembers)
         {
            if(this._bDescendingSort)
            {
               this.gd_guilds.sortOn("nbConnectedMembers",Array.NUMERIC);
            }
            else
            {
               this.gd_guilds.sortOn("nbConnectedMembers",Array.NUMERIC | Array.DESCENDING);
            }
            this._bDescendingSort = !this._bDescendingSort;
         }
         else if(target.name.indexOf("btn_giveLeadership") != -1)
         {
            data = this._compsBtnLeader[target.name];
            this.popupLeaderGuild(data);
         }
         else if(target.name.indexOf("btn_kick") != -1)
         {
            data2 = this._compsBtnKick[target.name];
            this.popupDeleteGuild(data2);
         }
      }
      
      public function onRollOver(target:Object) : void
      {
         var tooltipText:String = null;
         var data:Object = null;
         var months:int = 0;
         var days:int = 0;
         var hours:int = 0;
         var argText:String = null;
         var point:uint = 6;
         var relPoint:uint = 0;
         if(target.name.indexOf("btn_giveLeadership") != -1)
         {
            tooltipText = this.uiApi.getText("ui.alliance.giveLeadership");
         }
         else if(target.name.indexOf("btn_kick") != -1)
         {
            tooltipText = this.uiApi.getText("ui.alliance.kickGuild");
         }
         else if(target.name.indexOf("btn_ava") != -1)
         {
            tooltipText = this.uiApi.getText("ui.alliance.enableAvATooltip");
            if(this.playerApi.getPlayedCharacterInfo().level < 50)
            {
               tooltipText = tooltipText + ("\n" + this.uiApi.getText("ui.spell.requiredLevel") + " 50");
            }
            if(this.playerApi.isInFight())
            {
               tooltipText = tooltipText + ("\n" + this.uiApi.getText("ui.error.cantDoInFight"));
            }
            if(this.sysApi.getCurrentServer().gameTypeId == GameServerTypeEnum.SERVER_TYPE_TEMPORIS && this.dataApi.getCurrentSeason().seasonNumber == 3)
            {
               tooltipText = this.uiApi.getText("ui.temporis.avaDisable");
            }
         }
         else if(target.name.indexOf("tx_leader") != -1)
         {
            tooltipText = this.uiApi.getText("ui.guild.right.leader");
         }
         else if(target.name.indexOf("lbl_members") != -1)
         {
            data = this._compsLblName[target.name];
            if(!data)
            {
               return;
            }
            this.sysApi.log(2,"guild " + data.guildName + "    hoursSinceLastConnection " + data.hoursSinceLastConnection);
            if(data.nbConnectedMembers == 0 && data.hoursSinceLastConnection > 0)
            {
               months = Math.floor(data.hoursSinceLastConnection / 720);
               days = (data.hoursSinceLastConnection - months * 720) / 24;
               hours = data.hoursSinceLastConnection - days * 24 - months * 720;
               if(months > 0)
               {
                  if(days > 0)
                  {
                     argText = this.uiApi.processText(this.uiApi.getText("ui.social.monthsAndDaysSinceLastConnection",months,days),"m",days <= 1);
                  }
                  else
                  {
                     argText = this.uiApi.processText(this.uiApi.getText("ui.social.monthsSinceLastConnection",months),"m",months <= 1);
                  }
               }
               else if(days > 0)
               {
                  argText = this.uiApi.processText(this.uiApi.getText("ui.social.daysSinceLastConnection",days),"m",days <= 1);
               }
               else
               {
                  argText = this.uiApi.getText("ui.social.lessThanADay");
               }
               tooltipText = this.uiApi.getText("ui.social.lastConnection",argText);
            }
         }
         if(tooltipText)
         {
            this.uiApi.showTooltip(this.uiApi.textTooltipInfo(tooltipText),target,false,"standard",point,relPoint,3,null,null,null,"TextInfo");
         }
      }
      
      public function onRollOut(target:Object) : void
      {
         this.uiApi.hideTooltip();
      }
      
      public function onTextureReady(target:Object) : void
      {
         var icon:EmblemSymbol = null;
         if(target.name.indexOf("tx_emblemBack") != -1)
         {
            this.utilApi.changeColor(target.getChildByName("back"),this._compsTxEmblem[target.name].backEmblem.color,1);
         }
         else if(target.name.indexOf("tx_emblemUp") != -1)
         {
            icon = this.dataApi.getEmblemSymbol(this._compsTxEmblem[target.name].upEmblem.idEmblem);
            if(icon.colorizable)
            {
               this.utilApi.changeColor(target.getChildByName("up"),this._compsTxEmblem[target.name].upEmblem.color,0);
            }
            else
            {
               this.utilApi.changeColor(target.getChildByName("up"),this._compsTxEmblem[target.name].upEmblem.color,0,true);
            }
         }
      }
   }
}
