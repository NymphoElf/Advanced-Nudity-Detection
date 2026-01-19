ScriptName AND_PlayerScript extends ReferenceAlias

Import PO3_SKSEFunctions

AND_Core Property Core Auto
AND_MotionTimer Property MotionClock Auto
AND_MCM Property Config Auto
AND_NPC_Modesty_Manager Property NPCModestyManager Auto
AND_ModEventListener Property ModEventListener Auto
AND_Logger Property Logger Auto

Actor Property PlayerRef Auto

Bool Property PermanentsImported = False Auto Hidden
Bool Property IsWearingAssCurtain = False Auto Hidden
Bool Property IsWearingChestCurtain = False Auto Hidden
Bool Property IsWearingPelvicCurtain = False Auto Hidden

Float Property GameTimeUpdateSpeed Auto Hidden

GlobalVariable Property TimeScale Auto

Int Property MaxTimeScale = 100 Auto Hidden

Message Property IsTransformedMessage Auto
Message Property AddTransformRace Auto

String Property ScanSetting Auto Hidden

Bool MainRollActive = False

Event OnInit()
	AND_Logger.FastLog("<PlayerScript> [OnInit] - INIT START")
	Startup()
	AND_Logger.FastLog("<PlayerScript> [OnInit] - INIT END")
EndEvent

Function Startup()
	AND_Logger.FastLog("<PlayerScript> [Startup] - STARTUP BEGIN")
	
	AND_Logger.FastLog("<PlayerScript> [Startup] - Attempting to register for RaceSex Menu...")
	RegisterForMenu("RaceSex Menu")
	AND_Logger.FastLog("<PlayerScript> [Startup] - Register for RaceSex Menu Completed.")
	
	AND_Logger.FastLog("<PlayerScript> [Startup] - Attempting to register for Console Menu...")
	RegisterForMenu("Console")
	AND_Logger.FastLog("<PlayerScript> [Startup] - Register for Console Completed.")
	
	AND_Logger.FastLog("<PlayerScript> [Startup] - Attempting to register for UpdateGameTime...")
	RegisterForUpdateGameTime(0.25)
	AND_Logger.FastLog("<PlayerScript> [Startup] - Register for UpdateGameTime Completed")
	
	AND_Logger.FastLog("<PlayerScript> [Startup] - STARTUP COMPLETE")
EndFunction

Event OnPlayerLoadGame()
	String PlayerName = Core.PlayerBase.GetName()
	
	If Core.BaseRace == None
		AND_Logger.FastLog("<PlayerScript> [OnPlayerLoadGame] - Base Race is None!", Logger.ERROR)
		Debug.MessageBox("A.N.D. - Your character's race was not detected. Please confirm your charcater's race again.")
		Game.ShowRaceMenu()
	EndIf
	
	AND_Logger.FastLog("===LOAD GAME===")
	Core.ModCheck()
	NPCModestyManager.RestoreNPCFactions()
	
	If Core.DFFMA_Found == True
		SetPlayerModestyFactions()
	EndIf
	
	ModEventListener.InitializeModEvents()
	
	RegisterForAnimations()
	
	ModEventListener.CleanRegistry()
EndEvent

Function RegisterForAnimations()
	RegisterForAnimationEvent(PlayerRef, "FootLeft")
	RegisterForAnimationEvent(PlayerRef, "FootSprintLeft")
EndFunction

Function InitializeFactions()
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
EndFunction

Function SetPlayerModestyFactions()
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
EndFunction

Event OnMenuClose(String MenuName)
	AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - Menu Closed")
	If MenuName == "RaceSex Menu"
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - RaceSex Menu Closed")
		String PlayerName = Core.PlayerBase.GetName()
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - Player Name is: " + PlayerName)
		
		Core.BaseRace = Core.PlayerBase.GetRace()
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - Base Race is: " + Core.BaseRace)
		
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - Attempting to register for animations...")
		RegisterForAnimations()
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - Animation Register Completed.")
		
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - Attempting to Initialize Factions...")
		InitializeFactions()
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - Faction Initialize Completed.")
		
		AND_Logger.FastLog("<PlayerScript> [OnCloseMenu] - PLAYER NAME: " + PlayerName)
		
		If PermanentsImported == False
			NPCModestyManager.ImportPermanentFemales()
			PermanentsImported = True
		EndIf
		
		If Core.BaseRace == None
			AND_Logger.FastLog("<PlayerScript> [OnPlayerLoadGame] - Base Race is None!", Logger.ERROR)
			Debug.MessageBox("A.N.D. - Your character's race was not detected. Please confirm your character's race again.")
			Game.ShowRaceMenu()
		EndIf
	EndIf
	
	If MenuName == "Console"
		Race arPlayer = Core.PlayerBase.GetRace()
		If arPlayer != Core.BaseRace
			If Core.DefaultRaces.Find(arPlayer) >= 0
				Core.BaseRace = arPlayer
			ElseIf Core.TransformedRaces.Find(arPlayer) >= 0 || Core.CustomTransform.Find(arPlayer) >= 0
				;Do nothing, player is still Transformed
			Else
				Int TransformedSelection = IsTransformedMessage.Show()
				If TransformedSelection == 1 ;Custom Race
					Core.BaseRace = arPlayer
					Debug.MessageBox("A.N.D. MESSAGE - Your race is detected as: " + arPlayer + " " + arPlayer.GetName() + ". If this is not your NON-transformed race, use Racemenu to reset it to the correct race.")
				Else
					Int AddTransform = AddTransformRace.Show()
					If AddTransform == 0
						Core.AddCustomTransform(arPlayer)
					EndIf
				EndIf
			EndIf
		EndIf
	EndIf
EndEvent

Event OnAnimationEvent(ObjectReference akReference, String akEventName)
	AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Sender: " + akReference + " | Event: " + akEventName)
	AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Sender: " + akReference + " | PlayerRef: " + PlayerRef)
	If Config.AllowMotionFlash == True && akReference == PlayerRef
		AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Motion Flash Enabled and Ref is PlayerRef")
		AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Ass Cutain: " + IsWearingAssCurtain)
		AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Chest Cutain: " + IsWearingChestCurtain)
		AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Pelvic Cutain: " + IsWearingPelvicCurtain)
		If (IsWearingAssCurtain == True || IsWearingChestCurtain == True || IsWearingPelvicCurtain == True)
			If akEventName == "FootLeft"
				AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Event is 'FootLeft'")
				If MotionClock.CooldownActive == False && MainRollActive == False
					AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Running Motion Flash Trigger")
					Core.AND_MovementDiceRoll(False)
					MotionClock.Cooldown()
				EndIf
			EndIf
			
			If akEventName == "FootSprintLeft"
				AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Event is 'FootSprintLeft'")
				If MotionClock.CooldownActive == False && MainRollActive == False
					AND_Logger.FastLog("<PlayerScript> [OnAnimationEvent] Sprinting Motion Flash Trigger")
					Core.AND_MovementDiceRoll(True)
					MotionClock.Cooldown()
				EndIf
			EndIf
		EndIf
	EndIf
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	AND_Logger.FastLog("<Player Script> [OnObjectEquipped] Object Data: Base Object = " + akBaseObject \
	+ " | Editor ID = " + GetFormEditorID(akBaseObject) + " | Object Reference = " + akReference \
	+ " | Object Name = " + akBaseObject.GetName() + " | Has Ignore Keyword = " + akBaseObject.HasKeyword(Core.AND_Ignore))
	
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(Core.AND_Ignore))
		AND_Logger.FastLog("<Player Script> [OnObjectEquipped] Equipped Null Object or has Ignore Keyword. Update Skipped.")
		return
	EndIf
	
	If Core.EquipScanArmed == False
		Core.EquipScanArmed = True
		CheckWearingCurtain()
		Core.RegisterForSingleUpdate(0.1)
	EndIf
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	AND_Logger.FastLog("<Player Script> [OnObjectUnequipped] Object Data: Base Object = " + akBaseObject \
	+ " | Editor ID = " + GetFormEditorID(akBaseObject) + " | Object Reference = " + akReference \
	+ " | Object Name = " + akBaseObject.GetName() + " | Has Ignore Keyword = " + akBaseObject.HasKeyword(Core.AND_Ignore))

	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(Core.AND_Ignore))
		AND_Logger.FastLog("<Player Script> [OnObjectUnequipped] Unequipped Null Object or has Ignore Keyword. Update Skipped.")
		return
	EndIf
	
	If Core.EquipScanArmed == False
		Core.EquipScanArmed = True
		CheckWearingCurtain()
		Core.RegisterForSingleUpdate(0.1)
	EndIf
EndEvent

Function CheckWearingCurtain()
	If Core.PlayerBase.GetSex() == 0
		IsWearingChestCurtain = (PlayerRef.WornHasKeyword(Core.AND_ChestCurtain_Male) || PlayerRef.WornHasKeyword(Core.AND_ChestCurtainT_Male))
		
		IsWearingAssCurtain = (PlayerRef.WornHasKeyword(Core.AND_AssCurtain_Male) || PlayerRef.WornHasKeyword(Core.AND_AssCurtainT_Male) || PlayerRef.WornHasKeyword(Core.AND_Miniskirt_Male) || PlayerRef.WornHasKeyword(Core.AND_MiniskirtT_Male))
		IsWearingPelvicCurtain = (PlayerRef.WornHasKeyword(Core.AND_PelvicCurtain_Male) || PlayerRef.WornHasKeyword(Core.AND_PelvicCurtainT_Male) || PlayerRef.WornHasKeyword(Core.AND_Miniskirt_Male) || PlayerRef.WornHasKeyword(Core.AND_MiniskirtT_Male))
	Else
		IsWearingChestCurtain = (PlayerRef.WornHasKeyword(Core.AND_ChestCurtain) || PlayerRef.WornHasKeyword(Core.AND_ChestCurtainT))
		
		IsWearingAssCurtain = (PlayerRef.WornHasKeyword(Core.AND_AssCurtain) || PlayerRef.WornHasKeyword(Core.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Core.AND_Miniskirt) || PlayerRef.WornHasKeyword(Core.AND_MiniskirtT))
		IsWearingPelvicCurtain = (PlayerRef.WornHasKeyword(Core.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Core.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Core.AND_Miniskirt) || PlayerRef.WornHasKeyword(Core.AND_MiniskirtT))
	EndIf
EndFunction

Event OnUpdateGameTime()
	If TimeScale.GetValue() as Int > MaxTimeScale
		UnregisterForUpdateGameTime()
		Debug.MessageBox("A.N.D. Warning - Time Scale too high. Current: " + TimeScale.GetValue() as Int + ". Maximum: " + MaxTimeScale + ". Either choose a slower AND scan frequency or change the settings on your Time Scale mod.")
		While TimeScale.GetValue() as Int > MaxTimeScale
			AND_Logger.FastLog("<Player Script> [OnUpdateGameTime] Time Scale too high: " + TimeScale.GetValue() as Int + ". Waiting for Time Scale to go below: " + MaxTimeScale, Logger.WARNING)
			Utility.Wait(30.0)
		EndWhile
		RegisterForUpdateGameTime(GameTimeUpdateSpeed)
		return
	EndIf
	
	AND_Logger.FastLog("<Player Script> [OnUpdateGameTime] Update Game Time Triggered.")
	
	MainRollActive = True
	Core.AND_DiceRoll()
	MainRollActive = False
EndEvent