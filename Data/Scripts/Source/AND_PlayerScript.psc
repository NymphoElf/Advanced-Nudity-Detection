ScriptName AND_PlayerScript extends ReferenceAlias

AND_Core Property AND_Main Auto
AND_MotionTimer Property AND_MotionClock Auto
AND_MCM Property AND_Config Auto

Actor Property PlayerRef Auto

GlobalVariable Property AND_DebugMode Auto

Event OnInit()
	Startup()
EndEvent

Function Startup()
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
	
	RegisterForAnimationEvent(PlayerRef, "FootLeft")
	RegisterForAnimationEvent(PlayerRef, "tailSprint")
	RegisterForAnimationEvent(PlayerRef, "EndAnimatedCameraDelta")
	
	RegisterForUpdateGameTime(0.25)
EndFunction

Event OnPlayerLoadGame()
	AND_Main.SLA_Check()
	AND_Main.SLSF_Reloaded_Check()
	
	RegisterForAnimationEvent(PlayerRef, "FootLeft")
	RegisterForAnimationEvent(PlayerRef, "tailSprint")
	RegisterForAnimationEvent(PlayerRef, "EndAnimatedCameraDelta")
EndEvent

Event OnAnimationEvent(ObjectReference akReference, String akEventName)
	If AND_Config.AllowMotionFlash == True
		If akReference == PlayerRef
			If akEventName == "FootLeft"
				If !PlayerRef.IsSprinting() && PlayerRef.IsRunning() && AND_MotionClock.RunTimer == 0
					AND_Main.AND_MovementDiceRoll()
					AND_MotionClock.RunTimer = 3
					AND_MotionClock.StartClock()
				EndIf
			EndIf
			
			If akEventName == "tailSprint"
				If AND_MotionClock.SprintTimer == 0
					AND_Main.AND_MovementDiceRoll()
				EndIf
			EndIf
			
			If akEventName == "EndAnimatedCameraDelta"
				If AND_MotionClock.SprintTimer == 0
					AND_Main.AND_MovementDiceRoll()
					AND_MotionClock.SprintTimer = 3
					AND_MotionClock.StartClock()
				EndIf
			EndIf
		EndIf
	EndIf
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Object Equipped.")
	EndIf
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(AND_Main.AND_Ignore))
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Equipped Null Object or has Ignore Keyword. Update Skipped.")
		EndIf
		return
	EndIf
	
	AND_Main.RegisterForSingleUpdate(0.1)
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Object Unequipped.")
	EndIf
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(AND_Main.AND_Ignore))
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Unequipped None Object or has Ignore Keyword. Update Skipped.")
		EndIf
		return
	EndIf
	
	AND_Main.RegisterForSingleUpdate(0.1)
EndEvent

Event OnUpdateGameTime()
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND Update Game Time")
	EndIf
	AND_Main.AND_DiceRoll()
EndEvent