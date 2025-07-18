ScriptName AND_PlayerScript extends ReferenceAlias

AND_Core Property AND_Main Auto
AND_MotionTimer Property AND_MotionClock Auto
AND_MCM Property AND_Config Auto
AND_Modesty_Manager Property ModestyManager Auto
AND_ModEventListener Property ModEventListener Auto

Actor Property PlayerRef Auto

Float Property GameTimeUpdateSpeed Auto Hidden

GlobalVariable Property AND_DebugMode Auto
GlobalVariable Property TimeScale Auto

Int Property MaxTimeScale = 100 Auto Hidden

String Property ScanSetting Auto Hidden

Bool MainRollActive = False

Event OnInit()
	Startup()
EndEvent

Function Startup()
	PlayerRef.AddToFaction(AND_Main.AND_ShowingAssFaction)
	PlayerRef.AddToFaction(AND_Main.AND_ShowingChestFaction)
	PlayerRef.AddToFaction(AND_Main.AND_ShowingGenitalsFaction)
	PlayerRef.AddToFaction(AND_Main.AND_ShowingBraFaction)
	PlayerRef.AddToFaction(AND_Main.AND_ShowingUnderwearFaction)
	PlayerRef.AddToFaction(AND_Main.AND_ToplessFaction)
	PlayerRef.AddToFaction(AND_Main.AND_BottomlessFaction)
	PlayerRef.AddToFaction(AND_Main.AND_NudeActorFaction)
	PlayerRef.AddToFaction(ModestyManager.ModestyFaction)
	PlayerRef.SetFactionRank(ModestyManager.ModestyFaction, 0)
	
	RegisterForAnimationEvent(PlayerRef, "FootLeft")
	RegisterForAnimationEvent(PlayerRef, "tailSprint")
	RegisterForAnimationEvent(PlayerRef, "EndAnimatedCameraDelta")
	
	RegisterForUpdateGameTime(0.25)
EndFunction

Event OnPlayerLoadGame()
	AND_Main.ModCheck()
	
	If (AND_Main.DFFMA_Found == True || AND_Main.BARE_Found == True) && PlayerRef.IsInFaction(ModestyManager.ModestyFaction) == False
		PlayerRef.AddToFaction(ModestyManager.ModestyFaction)
		PlayerRef.SetFactionRank(ModestyManager.ModestyFaction, 0)
		
		PlayerRef.AddToFaction(ModestyManager.TopModestyFaction)
		PlayerRef.SetFactionRank(ModestyManager.TopModestyFaction, 0)
		
		PlayerRef.AddToFaction(ModestyManager.BottomModestyFaction)
		PlayerRef.SetFactionRank(ModestyManager.BottomModestyFaction, 0)
	EndIf
	
	ModEventListener.InitializeModEvents()
	
	RegisterForAnimationEvent(PlayerRef, "FootLeft")
	RegisterForAnimationEvent(PlayerRef, "tailSprint")
	RegisterForAnimationEvent(PlayerRef, "EndAnimatedCameraDelta")
EndEvent

Event OnAnimationEvent(ObjectReference akReference, String akEventName)
	If AND_Config.AllowMotionFlash == True
		If akReference == PlayerRef
			If akEventName == "FootLeft"
				If !PlayerRef.IsSprinting() && PlayerRef.IsRunning() && AND_MotionClock.RunTimer == 0 && MainRollActive == False
					AND_Main.AND_MovementDiceRoll()
					AND_MotionClock.RunTimer = 3
					AND_MotionClock.StartClock()
				EndIf
			EndIf
			
			If akEventName == "tailSprint"
				If AND_MotionClock.SprintTimer == 0 && MainRollActive == False
					AND_Main.AND_MovementDiceRoll()
				EndIf
			EndIf
			
			If akEventName == "EndAnimatedCameraDelta"
				If AND_MotionClock.SprintTimer == 0 && MainRollActive == False
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
	If TimeScale.GetValue() as Int > MaxTimeScale
		UnregisterForUpdateGameTime()
		Debug.MessageBox("A.N.D. Warning - Time Scale too high. Current: " + TimeScale.GetValue() as Int + ". Maximum: " + MaxTimeScale + ". Either choose a slower AND scan frequency or change the settings on your Time Scale mod.")
		While TimeScale.GetValue() as Int > MaxTimeScale
			Debug.Trace("AND - Time Scale too high: " + TimeScale.GetValue() as Int + ". Waiting for Time Scale to go below: " + MaxTimeScale)
			Utility.Wait(30.0)
		EndWhile
		RegisterForUpdateGameTime(GameTimeUpdateSpeed)
		return
	EndIf
	
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND Update Game Time")
	EndIf
	MainRollActive = True
	AND_Main.AND_DiceRoll()
	MainRollActive = False
EndEvent