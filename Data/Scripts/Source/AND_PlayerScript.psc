ScriptName AND_PlayerScript extends ReferenceAlias

AND_Core Property AND_Main Auto

Actor Property PlayerRef Auto

Event OnInit()
	If !PlayerRef.IsInFaction(AND_Main.AND_ShowingAssFaction)
		PlayerRef.AddToFaction(AND_Main.AND_ShowingAssFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_Main.AND_ShowingChestFaction)
		PlayerRef.AddToFaction(AND_Main.AND_ShowingChestFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_Main.AND_ShowingGenitalsFaction)
		PlayerRef.AddToFaction(AND_Main.AND_ShowingGenitalsFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_Main.AND_ShowingBraFaction)
		PlayerRef.AddToFaction(AND_Main.AND_ShowingBraFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_Main.AND_ShowingUnderwearFaction)
		PlayerRef.AddToFaction(AND_Main.AND_ShowingUnderwearFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_Main.AND_ToplessFaction)
		PlayerRef.AddToFaction(AND_Main.AND_ToplessFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_Main.AND_BottomlessFaction)
		PlayerRef.AddToFaction(AND_Main.AND_BottomlessFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_Main.AND_NudeActorFaction)
		PlayerRef.AddToFaction(AND_Main.AND_NudeActorFaction)
	EndIf
	
	RegisterForUpdateGameTime(0.25)
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	If AND_Main.AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Object Equipped.")
	EndIf
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(AND_Main.AND_Ignore))
		If AND_Main.AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Equipped Null Object or has Ignore Keyword. Update Skipped.")
		EndIf
		return
	EndIf
	
	AND_Main.RegisterForSingleUpdate(0.1)
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	If AND_Main.AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Object Unequipped.")
	EndIf
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(AND_Main.AND_Ignore))
		If AND_Main.AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Unequipped None Object or has Ignore Keyword. Update Skipped.")
		EndIf
		return
	EndIf
	
	AND_Main.RegisterForSingleUpdate(0.1)
EndEvent

Event OnUpdateGameTime()
	AND_Main.AND_DiceRoll()
EndEvent