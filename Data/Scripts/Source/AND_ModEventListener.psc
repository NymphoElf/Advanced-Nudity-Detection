ScriptName AND_ModEventListener extends Quest

AND_Core Property Core Auto

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