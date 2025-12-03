ScriptName AND_PlayerScript extends ReferenceAlias

Import PO3_SKSEFunctions

AND_Core Property Core Auto
AND_MotionTimer Property MotionClock Auto
AND_MCM Property Config Auto
AND_NPC_Modesty_Manager Property NPCModestyManager Auto
AND_ModEventListener Property ModEventListener Auto
AND_Logger Property Logger Auto

Actor Property PlayerRef Auto

Float Property GameTimeUpdateSpeed Auto Hidden

GlobalVariable Property TimeScale Auto

Int Property MaxTimeScale = 100 Auto Hidden

String Property ScanSetting Auto Hidden

Bool MainRollActive = False

Event OnInit()
	Startup()
EndEvent

Function Startup()
	RegisterForMenu("RaceSex Menu")
	
	PlayerRef.AddToFaction(Core.AND_ShowingAssFaction)
	PlayerRef.AddToFaction(Core.AND_ShowingChestFaction)
	PlayerRef.AddToFaction(Core.AND_ShowingGenitalsFaction)
	PlayerRef.AddToFaction(Core.AND_ShowingBraFaction)
	PlayerRef.AddToFaction(Core.AND_ShowingUnderwearFaction)
	PlayerRef.AddToFaction(Core.AND_ToplessFaction)
	PlayerRef.AddToFaction(Core.AND_BottomlessFaction)
	PlayerRef.AddToFaction(Core.AND_NudeActorFaction)
	
	PlayerRef.AddToFaction(Core.ModestyFaction)
	PlayerRef.SetFactionRank(Core.ModestyFaction, 0)
	PlayerRef.AddToFaction(Core.TopModestyFaction)
	PlayerRef.SetFactionRank(Core.TopModestyFaction, 0)
	PlayerRef.AddToFaction(Core.BottomModestyFaction)
	PlayerRef.SetFactionRank(Core.BottomModestyFaction, 0)
	
	PlayerRef.AddToFaction(Core.ShyWithMale)
	PlayerRef.SetFactionRank(Core.ShyWithMale, 1)
	PlayerRef.AddToFaction(Core.ShyWithFemale)
	PlayerRef.SetFactionRank(Core.ShyWithFemale, 0)
	
	RegisterForAnimationEvent(PlayerRef, "FootLeft")
	RegisterForAnimationEvent(PlayerRef, "tailSprint")
	RegisterForAnimationEvent(PlayerRef, "EndAnimatedCameraDelta")
	
	RegisterForUpdateGameTime(0.25)
EndFunction

Event OnPlayerLoadGame()
	String PlayerName = Core.PlayerBase.GetName()
	If Logger.LogName == "?" || Logger.LogName == ""
		Logger.LogName = PlayerName
	EndIf
	
	Logger.Log("===LOAD GAME===")
	Core.ModCheck()
	NPCModestyManager.RestoreNPCFactions()
	
	If (Core.DFFMA_Found == True || Core.BARE_Found == True)
		If PlayerRef.IsInFaction(Core.ModestyFaction) == False
			PlayerRef.AddToFaction(Core.ModestyFaction)
			PlayerRef.SetFactionRank(Core.ModestyFaction, 0)
		EndIf
		
		If PlayerRef.IsInFaction(Core.TopModestyFaction) == False
			PlayerRef.AddToFaction(Core.TopModestyFaction)
			PlayerRef.SetFactionRank(Core.TopModestyFaction, 0)
		EndIf
		
		If PlayerRef.IsInFaction(Core.BottomModestyFaction) == False
			PlayerRef.AddToFaction(Core.BottomModestyFaction)
			PlayerRef.SetFactionRank(Core.BottomModestyFaction, 0)
		EndIf
		
		If PlayerRef.IsInFaction(Core.ShyWithMale) == False
			PlayerRef.AddToFaction(Core.ShyWithMale)
			PlayerRef.SetFactionRank(Core.ShyWithMale, 1)
		EndIf
		
		If PlayerRef.IsInFaction(Core.ShyWithFemale) == False
			PlayerRef.AddToFaction(Core.ShyWithFemale)
			PlayerRef.SetFactionRank(Core.ShyWithFemale, 0)
		EndIf
	EndIf
	
	ModEventListener.InitializeModEvents()
	
	RegisterForAnimationEvent(PlayerRef, "FootLeft")
	RegisterForAnimationEvent(PlayerRef, "tailSprint")
	RegisterForAnimationEvent(PlayerRef, "EndAnimatedCameraDelta")
EndEvent

Event OnMenuClose(String MenuName)
	If MenuName == "RaceSex Menu"
		String PlayerName = Core.PlayerBase.GetName()
		
		Logger.LogName = PlayerName
		Logger.DuplicateCheck()
		Logger.Log("===ADVANCED NUDITY DETECTION LOG START===")
		Logger.Log("===PLAYER NAME: " + PlayerName + " ===")
		
		NPCModestyManager.ImportPermanentFemales()
		
		UnregisterForMenu("RaceSex Menu")
	EndIf
EndEvent

Event OnAnimationEvent(ObjectReference akReference, String akEventName)
	If Config.AllowMotionFlash == True
		If akReference == PlayerRef
			If akEventName == "FootLeft"
				If !PlayerRef.IsSprinting() && PlayerRef.IsRunning() && MotionClock.RunTimer == 0 && MainRollActive == False
					Core.AND_MovementDiceRoll()
					MotionClock.RunTimer = 3
					MotionClock.StartClock()
				EndIf
			EndIf
			
			If akEventName == "tailSprint"
				If MotionClock.SprintTimer == 0 && MainRollActive == False
					Core.AND_MovementDiceRoll()
				EndIf
			EndIf
			
			If akEventName == "EndAnimatedCameraDelta"
				If MotionClock.SprintTimer == 0 && MainRollActive == False
					Core.AND_MovementDiceRoll()
					MotionClock.SprintTimer = 3
					MotionClock.StartClock()
				EndIf
			EndIf
		EndIf
	EndIf
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	Logger.Log("<Player Script> [OnObjectEquipped] Object Data: Base Object = " + akBaseObject \
	+ " | Editor ID = " + GetFormEditorID(akBaseObject) + " | Object Reference = " + akReference \
	+ " | Object Name = " + akBaseObject.GetName() + " | Has Ignore Keyword = " + akBaseObject.HasKeyword(Core.AND_Ignore))
	
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(Core.AND_Ignore))
		Logger.Log("<Player Script> [OnObjectEquipped] Equipped Null Object or has Ignore Keyword. Update Skipped.")
		return
	EndIf
	
	If Core.EquipScanArmed == False
		Core.EquipScanArmed = True
		Core.RegisterForSingleUpdate(0.1)
	EndIf
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	Logger.Log("<Player Script> [OnObjectUnequipped] Object Data: Base Object = " + akBaseObject \
	+ " | Editor ID = " + GetFormEditorID(akBaseObject) + " | Object Reference = " + akReference \
	+ " | Object Name = " + akBaseObject.GetName() + " | Has Ignore Keyword = " + akBaseObject.HasKeyword(Core.AND_Ignore))

	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(Core.AND_Ignore))
		Logger.Log("<Player Script> [OnObjectUnequipped] Unequipped Null Object or has Ignore Keyword. Update Skipped.")
		return
	EndIf
	
	If Core.EquipScanArmed == False
		Core.EquipScanArmed = True
		Core.RegisterForSingleUpdate(0.1)
	EndIf
EndEvent

Event OnUpdateGameTime()
	If TimeScale.GetValue() as Int > MaxTimeScale
		UnregisterForUpdateGameTime()
		Debug.MessageBox("A.N.D. Warning - Time Scale too high. Current: " + TimeScale.GetValue() as Int + ". Maximum: " + MaxTimeScale + ". Either choose a slower AND scan frequency or change the settings on your Time Scale mod.")
		While TimeScale.GetValue() as Int > MaxTimeScale
			Logger.Log("<Player Script> [OnUpdateGameTime] Time Scale too high: " + TimeScale.GetValue() as Int + ". Waiting for Time Scale to go below: " + MaxTimeScale)
			Utility.Wait(30.0)
		EndWhile
		RegisterForUpdateGameTime(GameTimeUpdateSpeed)
		return
	EndIf
	
	Logger.Log("<Player Script> [OnUpdateGameTime] Update Game Time Triggered.")
	
	MainRollActive = True
	Core.AND_DiceRoll()
	MainRollActive = False
EndEvent