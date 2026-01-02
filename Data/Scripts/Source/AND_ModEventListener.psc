ScriptName AND_ModEventListener extends Quest

AND_Core Property Core Auto
AND_MCM Property Config Auto
AND_Modesty_Manager Property ModestyManager Auto
AND_Logger Property Logger Auto
AND_PlayerScript Property PlayerScript Auto

Bool[] Property DynamicModestyEnabled Auto Hidden
Bool[] Property HardcoreEnabled Auto Hidden
Bool[] Property CorruptionEnabled Auto Hidden
Bool[] Property ShamelessPermanent Auto Hidden
Bool[] Property UpgradeIsBlocked Auto Hidden
Bool[] Property IsStrictRules Auto Hidden

String[] Property Plugins Auto Hidden

Int Property RegisteredMods = 0 Auto Hidden

Int[] Property MinStrictRank Auto Hidden
Int[] Property MinTopRank Auto Hidden
Int[] Property MinBottomRank Auto Hidden
Int[] Property ExternalImmodestyTime Auto Hidden

Event OnInit()
	InitializeModEvents()
	SetArrays()
EndEvent

Function InitializeModEvents()
	RegisterForModEvent("AdvancedNudityDetection_GetModestyRank", "OnGetModestyRank")
	RegisterForModEvent("AdvancedNudityDetection_GetTopModestyRank", "OnGetTopModestyRank")
	RegisterForModEvent("AdvancedNudityDetection_GetBottomModestyRank", "OnGetBottomModestyRank")
	
	RegisterForModEvent("AdvancedNudityDetection_GetShowingBra", "OnGetShowingBra")
	RegisterForModEvent("AdvancedNudityDetection_GetShowingUnderwear", "OnGetShowingUnderwear")
	RegisterForModEvent("AdvancedNudityDetection_GetShowingChest", "OnGetShowingChest")
	RegisterForModEvent("AdvancedNudityDetection_GetShowingGenitals", "OnGetShowingGenitals")
	RegisterForModEvent("AdvancedNudityDetection_GetShowingAss", "OnGetShowingAss")
	RegisterForModEvent("AdvancedNudityDetection_GetTopless", "OnGetTopless")
	RegisterForModEvent("AdvancedNudityDetection_GetBottomless", "OnGetBottomless")
	RegisterForModEvent("AdvancedNudityDetection_GetNude", "OnGetNude")
	
	RegisterForModEvent("AdvancedNudityDetection_RegisterMod", "OnRegisterMod")
	RegisterForModEvent("AdvancedNudityDetection_UnregisterMod", "OnUnregisterMod")
	
	RegisterForModEvent("AdvancedNudityDetection_EnableDynamicModesty", "OnEnableDynamicModesty")
	
	RegisterForModEvent("AdvancedNudityDetection_SetMinModesty", "OnSetMinimumModestyRank")
	RegisterForModEvent("AdvancedNudityDetection_GetMinModesty", "OnGetMinimumModestyRank")
	RegisterForModEvent("AdvancedNudityDetection_SetMinTopModesty", "OnSetMinimumTopModestyRank")
	RegisterForModEvent("AdvancedNudityDetection_GetMinTopModesty", "OnGetMinimumTopModestyRank")
	RegisterForModEvent("AdvancedNudityDetection_SetMinBottomModesty", "OnSetMinimumBottomModestyRank")
	RegisterForModEvent("AdvancedNudityDetection_GetMinBottomModesty", "OnGetMinimumBottomModestyRank")
	
	RegisterForModEvent("AdvancedNudityDetection_SetUseDynamicModesty", "OnSetUseDynamicModesty")
	RegisterForModEvent("AdvancedNudityDetection_GetUseDynamicModesty", "OnGetUseDynamicModesty")
	RegisterForModEvent("AdvancedNudityDetection_SetStrictModestyRules", "OnSetStrictModestyRules")
	RegisterForModEvent("AdvancedNudityDetection_GetStrictModestyRules", "OnGetStrictModestyRules")
	RegisterForModEvent("AdvancedNudityDetection_SetHardcore", "OnSetHardcore")
	RegisterForModEvent("AdvancedNudityDetection_GetHardcore", "OnGetHardcore")
	RegisterForModEvent("AdvancedNudityDetection_SetCorruption", "OnSetCorruption")
	RegisterForModEvent("AdvancedNudityDetection_GetCorruption", "OnGetCorruption")
	RegisterForModEvent("AdvancedNudityDetection_SetPermShameless", "OnSetPermShameless")
	RegisterForModEvent("AdvancedNudityDetection_GetPermShameless", "OnGetPermShameless")
	RegisterForModEvent("AdvancedNudityDetection_SetModestyUpgradeBlocked", "OnSetModestyUpgradeBlocked")
	RegisterForModEvent("AdvancedNudityDetection_GetModestyUpgradeBlocked", "OnGetModestyUpgradeBlocked")
	RegisterForModEvent("AdvancedNudityDetection_SetImmodestyTime", "OnSetImmodestyTime")
	RegisterForModEvent("AdvancedNudityDetection_GetImmodestyTime", "OnGetImmodestyTime")
EndFunction

Function SetArrays()
	Plugins = new String[100]
	
	DynamicModestyEnabled = new Bool[100]
	HardcoreEnabled = new Bool[100]
	CorruptionEnabled = new Bool[100]
	ShamelessPermanent = new Bool[100]
	UpgradeIsBlocked = new Bool[100]
	IsStrictRules = new Bool[100]
	
	MinStrictRank = new Int[100]
	MinTopRank = new Int[100]
	MinBottomRank = new Int[100]
	ExternalImmodestyTime = new Int[100]
EndFunction

Function CleanRegistry(Int StartIndex = 0)
	Int CleanIndex = StartIndex
	While CleanIndex < 100
		If Game.GetModByName(Plugins[CleanIndex]) != 255 || Plugins[CleanIndex] == ""
			CleanIndex += 1
		Else
			Plugins[CleanIndex] = ""
			
			DynamicModestyEnabled[CleanIndex] = False
			HardcoreEnabled[CleanIndex] = False
			CorruptionEnabled[CleanIndex] = False
			ShamelessPermanent[CleanIndex] = False
			UpgradeIsBlocked[CleanIndex] = False
			IsStrictRules[CleanIndex] = False
			
			MinStrictRank[CleanIndex] = 0
			MinTopRank[CleanIndex] = 0
			MinBottomRank[CleanIndex] = 0
			ExternalImmodestyTime[CleanIndex] = 0
		EndIf
	EndWhile
	
	CleanIndex = StartIndex
	Int NextIndex = CleanIndex + 1
	While NextIndex < 100
		If Plugins[CleanIndex] == "" && Plugins[NextIndex] != ""
			Plugins[CleanIndex] = Plugins[NextIndex]
			Plugins[NextIndex] = ""
			
			DynamicModestyEnabled[CleanIndex] = DynamicModestyEnabled[NextIndex]
			DynamicModestyEnabled[NextIndex] = False
			
			HardcoreEnabled[CleanIndex] = HardcoreEnabled[NextIndex]
			HardcoreEnabled[NextIndex] = False
			
			CorruptionEnabled[CleanIndex] = CorruptionEnabled[NextIndex]
			CorruptionEnabled[NextIndex] = False
			
			ShamelessPermanent[CleanIndex] = ShamelessPermanent[NextIndex]
			ShamelessPermanent[NextIndex] = False
			
			UpgradeIsBlocked[CleanIndex] = UpgradeIsBlocked[NextIndex]
			UpgradeIsBlocked[NextIndex] = False
			
			IsStrictRules[CleanIndex] = IsStrictRules[NextIndex]
			IsStrictRules[NextIndex] = False
			
			MinStrictRank[CleanIndex] = MinStrictRank[NextIndex]
			MinStrictRank[NextIndex] = 0
			
			MinTopRank[CleanIndex] = MinTopRank[NextIndex]
			MinTopRank[NextIndex] = 0
			
			MinBottomRank[CleanIndex] = MinBottomRank[NextIndex]
			MinBottomRank[NextIndex] = 0
			
			ExternalImmodestyTime[CleanIndex] = ExternalImmodestyTime[NextIndex]
			ExternalImmodestyTime[NextIndex] = 0
		EndIf
		
		CleanIndex += 1
		NextIndex += 1
	EndWhile
EndFunction

;/
=====================================================
Example - Request Modesty Faction Rank for an actor:

Int EventHandle = ModEvent.Create("AdvancedNudityDetection_GetModestyRank")
ModEvent.PushForm(EventHandle, ActorForm)
ModEvent.Send(EventHandle)
=====================================================

=====================================================
Example - Receive the information from our previous example:

RegisterForModEvent("AdvancedNudityDetection_ReturnModestyRank", "OnReceiveModestyRank")

Event OnReceiveModestyRank(Int Rank)
	Debug.Notification("Modesty Rank is:" + Rank)
	;Or do other things with this data
EndEvent
=====================================================
/;

Event OnGetModestyRank(Actor actorRef)
	Int Rank = actorRef.GetFactionRank(Core.ModestyFaction)
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnModestyRank")
	ModEvent.PushInt(EventHandle, Rank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetTopModestyRank(Actor actorRef)
	Int Rank = actorRef.GetFactionRank(Core.TopModestyFaction)
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnTopModestyRank")
	ModEvent.PushInt(EventHandle, Rank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetBottomModestyRank(Actor actorRef)
	Int Rank = actorRef.GetFactionRank(Core.BottomModestyFaction)
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnBottomModestyRank")
	ModEvent.PushInt(EventHandle, Rank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetShowingBra(Actor actorRef)
	Bool IsShowingBra = actorRef.GetFactionRank(Core.AND_ShowingBraFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsShowingBra")
	ModEvent.PushBool(EventHandle, IsShowingBra)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetShowingUnderwear(Actor actorRef)
	Bool IsShowingUnderwear = actorRef.GetFactionRank(Core.AND_ShowingUnderwearFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsShowingUnderwear")
	ModEvent.PushBool(EventHandle, IsShowingUnderwear)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetShowingChest(Actor actorRef)
	Bool IsShowingChest = actorRef.GetFactionRank(Core.AND_ShowingChestFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsShowingChest")
	ModEvent.PushBool(EventHandle, IsShowingChest)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetShowingGenitals(Actor actorRef)
	Bool IsShowingGenitals = actorRef.GetFactionRank(Core.AND_ShowingGenitalsFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsShowingGenitals")
	ModEvent.PushBool(EventHandle, IsShowingGenitals)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetShowingAss(Actor actorRef)
	Bool IsShowingAss = actorRef.GetFactionRank(Core.AND_ShowingAssFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsShowingAss")
	ModEvent.PushBool(EventHandle, IsShowingAss)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetTopless(Actor actorRef)
	Bool IsTopless = actorRef.GetFactionRank(Core.AND_ToplessFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsTopless")
	ModEvent.PushBool(EventHandle, IsTopless)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetBottomless(Actor actorRef)
	Bool IsBottomless = actorRef.GetFactionRank(Core.AND_BottomlessFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsBottomless")
	ModEvent.PushBool(EventHandle, IsBottomless)
	ModEvent.Send(EventHandle)
EndEvent

Event OnGetNude(Actor actorRef)
	Bool IsNude = actorRef.GetFactionRank(Core.AND_NudeActorFaction)
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnIsNude")
	ModEvent.PushBool(EventHandle, IsNude)
	ModEvent.Send(EventHandle)
EndEvent

;/
===========================================
Registry Events
===========================================
/;

Event OnRegisterMod(String PluginName)
	If Game.GetModByName(PluginName) != 255
		If Plugins.Find(PluginName) >= 0
			Logger.Log("<Mod Event Listener> [OnRegisterMod] Plugin (" + PluginName + ") already registered.")
		Else
			Int EmptyIndex = Plugins.Find("")
			If EmptyIndex >= 0
				Plugins[EmptyIndex] = PluginName
				RegisteredMods += 1
			Else
				Logger.Log("<Mod Event Listener> [OnRegisterMod] Registered Plugin List Full")
			EndIf
		EndIf
	Else
		Logger.Log("<Mod Event Listener> [OnRegisterMod] Plugin " + PluginName + " is not loaded or doesn't exist.")
	EndIf
EndEvent

Event OnUnregisterMod(String PluginName)
	UnregisterMod(PluginName)
EndEvent

Function UnregisterMod(String PluginName)
	Int PluginIndex = Plugins.Find(PluginName)
	If RegisteredMods == 0 || PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnUnregisterMod] Plugin " + PluginName + " is either already unregistered or was never registered.")
	Else
		Plugins[PluginIndex] = ""
		DynamicModestyEnabled[PluginIndex] = False
		
		RegisteredMods -= 1
		CleanRegistry(PluginIndex)
	EndIf
EndFunction

;/
===========================================
Modesty Events
===========================================
/;

Event OnEnableDynamicModesty(String Plugin, Bool Enabled)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnEnableDynamicModesty] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	DynamicModestyEnabled[PluginIndex] = Enabled
	
	If DynamicModestyEnabled.Find(True) >= 0
		Enabled = True
	EndIf
	
	Core.EnableDynamicModesty = Enabled
	
	If Enabled == True
		PlayerScript.SetPlayerModestyFactions()
		
		If ModestyManager.RegisteredForUpdate == False
			ModestyManager.RegisterForUpdateGameTime(1.0)
			ModestyManager.RegisteredForUpdate = True
		EndIf
	EndIf
EndEvent

Event OnSetUseDynamicModesty(Bool Enabled)
	;THIS FUNCTION IS DEPRECATED - IT REMOVES PLAYER CHOICE
	;If your mod depends on the player enabling Dynamic Modesty, tell them they must do so!
EndEvent

Event OnGetUseDynamicModesty()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnUseDynamicModesty")
	ModEvent.PushBool(EventHandle, Config.UseDynamicModesty)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetStrictModestyRules(String Plugin, Bool Strict)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetMinimumModestyRank] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	IsStrictRules[PluginIndex] = Strict
	
	If IsStrictRules.Find(True) >= 0
		Strict = True
	EndIf
	
	Config.StrictModestyRules = Strict
EndEvent

Event OnGetStrictModestyRules()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnStrictModestyRules")
	ModEvent.PushBool(EventHandle, Config.StrictModestyRules)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetMinimumModestyRank(String Plugin, Int ModestyRank)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetMinimumModestyRank] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	If ModestyRank < 0
		ModestyRank = 0
	ElseIf ModestyRank > 6
		ModestyRank = 6
	EndIf
	
	MinStrictRank[PluginIndex] = ModestyRank
	
	If MinStrictRank.Find(6) >= 0
		ModestyRank = 6
	ElseIf MinStrictRank.Find(5) >= 0
		ModestyRank = 5
	ElseIf MinStrictRank.Find(4) >= 0
		ModestyRank = 4
	ElseIf MinStrictRank.Find(3) >= 0
		ModestyRank = 3
	ElseIf MinStrictRank.Find(2) >= 0
		ModestyRank = 2
	ElseIf MinStrictRank.Find(1) >= 0
		ModestyRank = 1
	Else
		ModestyRank = 0
	EndIf
	
	Config.MinimumModestyRank = ModestyRank
EndEvent

Event OnGetMinimumModestyRank()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnMinimumModestyRank")
	ModEvent.PushInt(EventHandle, Config.MinimumModestyRank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetMinimumTopModestyRank(String Plugin, Int Rank)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetMinimumTopModestyRank] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	If Rank > 3
		Rank = 3
	ElseIf Rank < 0
		Rank = 0
	EndIf
	
	MinTopRank[PluginIndex] = Rank
	
	If MinTopRank.Find(3) >= 0
		Rank = 3
	ElseIf MinTopRank.Find(2) >= 0
		Rank = 2
	ElseIf MinTopRank.Find(1) >= 0
		Rank = 1
	Else
		Rank = 0
	EndIf
	
	Config.MinimumTopModestyRank = Rank
EndEvent

Event OnGetMinimumTopModestyRank()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnMinimumTopModestyRank")
	ModEvent.PushInt(EventHandle, Config.MinimumTopModestyRank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetMinimumBottomModestyRank(String Plugin, Int Rank)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetMinimumBottomModestyRank] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	If Rank > 3
		Rank = 3
	ElseIf Rank < 0
		Rank = 0
	EndIf
	
	MinBottomRank[PluginIndex] = Rank
	
	If MinBottomRank.Find(3) >= 0
		Rank = 3
	ElseIf MinBottomRank.Find(2) >= 0
		Rank = 2
	ElseIf MinBottomRank.Find(1) >= 0
		Rank = 1
	Else
		Rank = 0
	EndIf
	
	Config.MinimumBottomModestyRank = Rank
EndEvent

Event OnGetMinimumBottomModestyRank()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnMinimumTopModestyRank")
	ModEvent.PushInt(EventHandle, Config.MinimumBottomModestyRank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetHardcore(String Plugin, Bool EnableHardcore)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetHardcore] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	HardcoreEnabled[PluginIndex] = EnableHardcore
	
	If HardcoreEnabled.Find(True) >= 0
		EnableHardcore = True
	EndIf
	
	Config.UseHardcoreModesty = EnableHardcore
	Config.HardcoreLockdown = EnableHardcore
EndEvent

Event OnGetHardcore()
	Bool IsHardcore = Config.HardcoreLockdown
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnHardcore")
	ModEvent.PushBool(EventHandle, IsHardcore)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetCorruption(String Plugin, Bool Corruption)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetCorruption] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	CorruptionEnabled[PluginIndex] = Corruption
	
	If CorruptionEnabled.Find(True) >= 0
		Corruption = True
	EndIf
	
	Config.ModestyCorruption = Corruption
EndEvent

Event OnGetCorruption()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnCorruption")
	ModEvent.PushBool(EventHandle, Config.ModestyCorruption)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetPermShameless(String Plugin, Bool PermShameless)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetPermShameless] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	ShamelessPermanent[PluginIndex] = PermShameless
	
	If ShamelessPermanent.Find(True) >= 0
		PermShameless = True
	EndIf
	
	Config.PermanentShameless = PermShameless
EndEvent

Event OnGetPermShameless()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnPermShameless")
	ModEvent.PushBool(EventHandle, Config.PermanentShameless)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetModestyUpgradeBlocked(String Plugin, Bool BlockUpgrade)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetModestyUpgradeBlocked] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	UpgradeIsBlocked[PluginIndex] = BlockUpgrade
	
	If UpgradeIsBlocked.Find(True) >= 0
		BlockUpgrade = True
	EndIf
	
	ModestyManager.UpgradeBlocked = BlockUpgrade
EndEvent

Event OnGetModestyUpgradeBlocked()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnUpgradeBlocked")
	ModEvent.PushBool(EventHandle, ModestyManager.UpgradeBlocked)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetImmodestyTime(String Plugin, Int ImmodestyTime)
	Int PluginIndex = Plugins.Find(Plugin)
	If PluginIndex < 0
		Logger.Log("<Mod Event Listener> [OnSetImmodestyTime] Plugin " + Plugin + " is not registered.")
		return
	EndIf
	
	;Set timer to 0 if you want to remove your mod's influence on the modesty timer altogether
	If ImmodestyTime < 0
		ImmodestyTime = 0
	ElseIf ImmodestyTime > 120
		ImmodestyTime = 120
	EndIf
	
	ExternalImmodestyTime[PluginIndex] = ImmodestyTime
	
	Int ImmodestySum = 0
	Int AlteredTimers = 0
	Int Index = 0
	While Index < RegisteredMods
		If ExternalImmodestyTime[PluginIndex] > 0
			ImmodestySum = (ImmodestySum + ExternalImmodestyTime[Index])
			AlteredTimers += 1
		EndIf
		Index += 1
	EndWhile
	
	If AlteredTimers > 0
		ImmodestyTime = (ImmodestySum / AlteredTimers) ;Set to the average of all modified timers
	Else
		ImmodestyTime = 14 ;Fallback to default if all modified timers are cleared
	EndIf
	
	Config.ImmodestyTimeNeeded = ImmodestyTime
EndEvent

Event OnGetImmodestyTime()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnImmodestyTime")
	ModEvent.PushInt(EventHandle, Config.ImmodestyTimeNeeded)
	ModEvent.Send(EventHandle)
EndEvent