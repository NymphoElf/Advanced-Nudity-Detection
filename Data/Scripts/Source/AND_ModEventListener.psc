ScriptName AND_ModEventListener extends Quest

AND_Core Property Core Auto
AND_MCM Property Config Auto
AND_Modesty_Manager Property ModestyManager Auto
AND_Logger Property Logger Auto

Event OnInit()
	InitializeModEvents()
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
Modesty Events
===========================================
/;

Event OnSetUseDynamicModesty(Bool Enabled)
	Config.UseDynamicModesty = Enabled
EndEvent

Event OnGetUseDynamicModesty()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnUseDynamicModesty")
	ModEvent.PushBool(EventHandle, Config.UseDynamicModesty)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetStrictModestyRules(Bool Strict)
	Config.StrictModestyRules = Strict
EndEvent

Event OnGetStrictModestyRules()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnStrictModestyRules")
	ModEvent.PushBool(EventHandle, Config.StrictModestyRules)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetMinimumModestyRank(Int ModestyRank)
	If ModestyRank < 0
		ModestyRank = 0
	ElseIf ModestyRank > 6
		ModestyRank = 6
	EndIf
	
	Config.MinimumModestyRank = ModestyRank
EndEvent

Event OnGetMinimumModestyRank()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnMinimumModestyRank")
	ModEvent.PushInt(EventHandle, Config.MinimumModestyRank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetMinimumTopModestyRank(Int Rank)
	If Rank > 3
		Rank = 3
	ElseIf Rank < 0
		Rank = 0
	EndIf
	
	Config.MinimumTopModestyRank = Rank
EndEvent

Event OnGetMinimumTopModestyRank()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnMinimumTopModestyRank")
	ModEvent.PushInt(EventHandle, Config.MinimumTopModestyRank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetMinimumBottomModestyRank(Int Rank)
	If Rank > 3
		Rank = 3
	ElseIf Rank < 0
		Rank = 0
	EndIf
	
	Config.MinimumBottomModestyRank = Rank
EndEvent

Event OnGetMinimumBottomModestyRank()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnMinimumTopModestyRank")
	ModEvent.PushInt(EventHandle, Config.MinimumBottomModestyRank)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetHardcore(Bool EnableHardcore)
	Config.UseHardcoreModesty = EnableHardcore
	Config.HardcoreLockdown = EnableHardcore
EndEvent

Event OnGetHardcore()
	Bool IsHardcore = Config.HardcoreLockdown
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnHardcore")
	ModEvent.PushBool(EventHandle, IsHardcore)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetCorruption(Bool Corruption)
	Config.ModestyCorruption = Corruption
EndEvent

Event OnGetCorruption()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnCorruption")
	ModEvent.PushBool(EventHandle, Config.ModestyCorruption)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetPermShameless(Bool PermShameless)
	Config.PermanentShameless = PermShameless
EndEvent

Event OnGetPermShameless()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnPermShameless")
	ModEvent.PushBool(EventHandle, Config.PermanentShameless)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetModestyUpgradeBlocked(Bool BlockUpgrade)
	ModestyManager.UpgradeBlocked = BlockUpgrade
EndEvent

Event OnGetModestyUpgradeBlocked()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnUpgradeBlocked")
	ModEvent.PushBool(EventHandle, ModestyManager.UpgradeBlocked)
	ModEvent.Send(EventHandle)
EndEvent

Event OnSetImmodestyTime(Int ImmodestyTime)
	If ImmodestyTime < 1
		ImmodestyTime = 0
	ElseIf ImmodestyTime > 120
		ImmodestyTime = 120
	EndIf
	
	Config.ImmodestyTimeNeeded = ImmodestyTime
EndEvent

Event OnGetImmodestyTime()
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_ReturnImmodestyTime")
	ModEvent.PushInt(EventHandle, Config.ImmodestyTimeNeeded)
	ModEvent.Send(EventHandle)
EndEvent