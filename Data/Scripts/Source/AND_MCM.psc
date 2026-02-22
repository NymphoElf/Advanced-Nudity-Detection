Scriptname AND_MCM extends SKI_Configbase

Import JsonUtil

AND_Core Property Main Auto
AND_PlayerScript Property PlayerScript Auto
AND_Modesty_Manager Property ModestyManager Auto 
AND_MaleArmorScan Property MaleScan Auto
AND_FemaleArmorScan Property FemaleScan Auto
AND_NPC_Modesty_Manager Property NPCModesty Auto
AND_ModestyRandomizer Property ModestyRandomizer Auto
AND_KeybindManager Property Keybinds Auto
AND_Logger Property Logger Auto

Actor Property PlayerRef Auto
Actor Property SelectedFemaleActor Auto Hidden

Float Property ThisNPCStrictRank = 0.0 Auto Hidden
Float Property ThisNPCMinimumStrictRank = 0.0 Auto Hidden
Float Property ThisNPCTopRank = 0.0 Auto Hidden
Float Property ThisNPCMinimumTopRank = 0.0 Auto Hidden
Float Property ThisNPCBottomRank = 0.0 Auto Hidden
Float Property ThisNPCMinimumBottomRank = 0.0 Auto Hidden

Bool Property ThisNPCPermanentShameless = False Auto Hidden
Bool Property ThisNPCCorrupt = False Auto Hidden

Int Property TopCurtainOddsLow = 20 Auto Hidden
Int Property TopCurtainOdds = 35 Auto Hidden
Int Property TopCurtainOddsHigh = 50 Auto Hidden
Int Property TopCurtainOddsExtreme = 65 Auto Hidden
Int Property TopCurtainOddsUltra = 80 Auto Hidden

Int Property TransparentTopCurtainOddsLow = 55 Auto Hidden
Int Property TransparentTopCurtainOdds = 65 Auto Hidden
Int Property TransparentTopCurtainOddsHigh = 75 Auto Hidden
Int Property TransparentTopCurtainOddsExtreme = 85 Auto Hidden
Int Property TransparentTopCurtainOddsUltra = 95 Auto Hidden

Int Property PelvicCurtainOddsLow = 20 Auto Hidden
Int Property PelvicCurtainOdds = 35 Auto Hidden
Int Property PelvicCurtainOddsHigh = 50 Auto Hidden
Int Property PelvicCurtainOddsExtreme = 65 Auto Hidden
Int Property PelvicCurtainOddsUltra = 80 Auto Hidden

Int Property TransparentPelvicCurtainOddsLow = 55 Auto Hidden
Int Property TransparentPelvicCurtainOdds = 65 Auto Hidden
Int Property TransparentPelvicCurtainOddsHigh = 75 Auto Hidden
Int Property TransparentPelvicCurtainOddsExtreme = 85 Auto Hidden
Int Property TransparentPelvicCurtainOddsUltra = 95 Auto Hidden

Int Property AssCurtainOddsLow = 20 Auto Hidden
Int Property AssCurtainOdds = 35 Auto Hidden
Int Property AssCurtainOddsHigh = 50 Auto Hidden
Int Property AssCurtainOddsExtreme = 65 Auto Hidden
Int Property AssCurtainOddsUltra = 80 Auto Hidden

Int Property TransparentAssCurtainOddsLow = 55 Auto Hidden
Int Property TransparentAssCurtainOdds = 65 Auto Hidden
Int Property TransparentAssCurtainOddsHigh = 75 Auto Hidden
Int Property TransparentAssCurtainOddsExtreme = 85 Auto Hidden
Int Property TransparentAssCurtainOddsUltra = 95 Auto Hidden

Int Property CStringOdds = 60 Auto Hidden

Int Property TransparentCStringOdds = 80 Auto Hidden
Int Property TransparentCStringOdds_Low = 70 Auto Hidden
Int Property TransparentCStringOdds_High = 90 Auto Hidden

Int Property TransparentTopArmorOdds = 50 Auto Hidden
Int Property TransparentTopArmorOdds_Low = 30 Auto Hidden
Int Property TransparentTopArmorOdds_High = 70 Auto Hidden

Int Property TransparentBottomArmorOdds = 50 Auto Hidden
Int Property TransparentBottomArmorOdds_Low = 30 Auto Hidden
Int Property TransparentBottomArmorOdds_High = 70 Auto Hidden

Int Property TransparentBraOdds = 50 Auto Hidden
Int Property TransparentBraOdds_Low = 30 Auto Hidden
Int Property TransparentBraOdds_High = 70 Auto Hidden

Int Property TransparentUnderwearOdds = 50 Auto Hidden
Int Property TransparentUnderwearOdds_Low = 30 Auto Hidden
Int Property TransparentUnderwearOdds_High = 70 Auto Hidden

Int Property TransparentHotpantsOdds = 50 Auto Hidden
Int Property TransparentHotpantsOdds_Low = 30 Auto Hidden
Int Property TransparentHotpantsOdds_High = 70 Auto Hidden

Int Property TransparentShowgirlSkirtOdds = 50 Auto Hidden
Int Property TransparentShowgirlSkirtOdds_Low = 30 Auto Hidden
Int Property TransparentShowgirlSkirtOdds_High = 70 Auto Hidden

Int Property TopCurtainOddsLow_Male = 20 Auto Hidden
Int Property TopCurtainOdds_Male = 35 Auto Hidden
Int Property TopCurtainOddsHigh_Male = 50 Auto Hidden
Int Property TopCurtainOddsExtreme_Male = 65 Auto Hidden
Int Property TopCurtainOddsUltra_Male = 80 Auto Hidden

Int Property TransparentTopCurtainOddsLow_Male = 55 Auto Hidden
Int Property TransparentTopCurtainOdds_Male = 65 Auto Hidden
Int Property TransparentTopCurtainOddsHigh_Male = 75 Auto Hidden
Int Property TransparentTopCurtainOddsExtreme_Male = 85 Auto Hidden
Int Property TransparentTopCurtainOddsUltra_Male = 95 Auto Hidden

Int Property PelvicCurtainOddsLow_Male = 20 Auto Hidden
Int Property PelvicCurtainOdds_Male = 35 Auto Hidden
Int Property PelvicCurtainOddsHigh_Male = 50 Auto Hidden
Int Property PelvicCurtainOddsExtreme_Male = 65 Auto Hidden
Int Property PelvicCurtainOddsUltra_Male = 80 Auto Hidden

Int Property TransparentPelvicCurtainOddsLow_Male = 55 Auto Hidden
Int Property TransparentPelvicCurtainOdds_Male = 65 Auto Hidden
Int Property TransparentPelvicCurtainOddsHigh_Male = 75 Auto Hidden
Int Property TransparentPelvicCurtainOddsExtreme_Male = 85 Auto Hidden
Int Property TransparentPelvicCurtainOddsUltra_Male = 95 Auto Hidden

Int Property AssCurtainOddsLow_Male = 20 Auto Hidden
Int Property AssCurtainOdds_Male = 35 Auto Hidden
Int Property AssCurtainOddsHigh_Male = 50 Auto Hidden
Int Property AssCurtainOddsExtreme_Male = 65 Auto Hidden
Int Property AssCurtainOddsUltra_Male = 80 Auto Hidden

Int Property TransparentAssCurtainOddsLow_Male = 55 Auto Hidden
Int Property TransparentAssCurtainOdds_Male = 65 Auto Hidden
Int Property TransparentAssCurtainOddsHigh_Male = 75 Auto Hidden
Int Property TransparentAssCurtainOddsExtreme_Male = 85 Auto Hidden
Int Property TransparentAssCurtainOddsUltra_Male = 95 Auto Hidden

Int Property CStringOdds_Male = 60 Auto Hidden

Int Property TransparentCStringOdds_Male = 80 Auto Hidden
Int Property TransparentCStringOdds_Low_Male = 70 Auto Hidden
Int Property TransparentCStringOdds_High_Male = 90 Auto Hidden

Int Property TransparentTopArmorOdds_Male = 50 Auto Hidden
Int Property TransparentTopArmorOdds_Low_Male = 30 Auto Hidden
Int Property TransparentTopArmorOdds_High_Male = 70 Auto Hidden

Int Property TransparentBottomArmorOdds_Male = 50 Auto Hidden
Int Property TransparentBottomArmorOdds_Low_Male = 30 Auto Hidden
Int Property TransparentBottomArmorOdds_High_Male = 70 Auto Hidden

Int Property TransparentBraOdds_Male = 50 Auto Hidden
Int Property TransparentBraOdds_Low_Male = 30 Auto Hidden
Int Property TransparentBraOdds_High_Male = 70 Auto Hidden

Int Property TransparentUnderwearOdds_Male = 50 Auto Hidden
Int Property TransparentUnderwearOdds_Low_Male = 30 Auto Hidden
Int Property TransparentUnderwearOdds_High_Male = 70 Auto Hidden

Int Property TransparentHotpantsOdds_Male = 50 Auto Hidden
Int Property TransparentHotpantsOdds_Low_Male = 30 Auto Hidden
Int Property TransparentHotpantsOdds_High_Male = 70 Auto Hidden

Int Property TransparentShowgirlSkirtOdds_Male = 50 Auto Hidden
Int Property TransparentShowgirlSkirtOdds_Low_Male = 30 Auto Hidden
Int Property TransparentShowgirlSkirtOdds_High_Male = 70 Auto Hidden

Bool Property GenderlessWording Auto Hidden
Bool Property AllowMotionFlash = True Auto Hidden
Bool Property DisableNakedComments Auto Hidden
Bool Property UseDynamicModesty Auto Hidden
Bool Property ModestyCorruption = False Auto Hidden
Bool Property PermanentShameless = False Auto Hidden
Bool Property NPCModestyCorruption = False Auto Hidden
Bool Property ConfirmSelection = False Auto Hidden

Bool Property Rank1Jump = False Auto Hidden
Bool Property Rank2Jump = False Auto Hidden
Bool Property Rank3Jump = False Auto Hidden
Bool Property Rank4Jump = False Auto Hidden
Bool Property Rank5Jump = False Auto Hidden
Bool Property Rank6Jump = False Auto Hidden

Bool Property TopRank1Jump = False Auto Hidden
Bool Property TopRank2Jump = False Auto Hidden
Bool Property TopRank3Jump = False Auto Hidden

Bool Property BottomRank1Jump = False Auto Hidden
Bool Property BottomRank2Jump = False Auto Hidden
Bool Property BottomRank3Jump = False Auto Hidden

Bool Property ResetModesty = False Auto Hidden
Bool Property ResetFemaleModesty = False Auto Hidden 
Bool Property RandomizePlayer = False Auto Hidden

Bool Property UseHardcoreModesty = False Auto Hidden
Bool Property HardcoreLockdown = False Auto Hidden
Bool Property StrictModestyRules = False Auto Hidden
Bool Property DynamicFollowers = False Auto Hidden
Bool Property ResetNPCs = False Auto Hidden
Bool Property DeleteNPCs = False Auto Hidden
Bool Property ModestyMonologue = True Auto Hidden
Bool Property ModestyMessagebox = True Auto Hidden

Bool Property TopCurtainLayer_Cover Auto Hidden
Bool Property PelvicCurtain_Cover Auto Hidden
Bool Property AssCurtain_Cover Auto Hidden

Bool Property ScanNPC = True Auto Hidden
Bool Property NPCTimerWipeArmed = False Auto Hidden

Bool Property ApplyTweak = False Auto Hidden
Bool Property ApplyAsDefault = False Auto Hidden

Bool Property StrictNPC = False Auto Hidden
Bool Property NPCUpgradeBlocked = False Auto Hidden
Bool Property NPCPermanentShameless = False Auto Hidden

Bool Property Logging = False Auto Hidden
Int Property LoggingLevel = 1 Auto Hidden

Int Property RunningModifier = 10 Auto Hidden
Int Property SprintingModifier = 20 Auto Hidden

Int Property NudeFactionCommentChance = 10 Auto Hidden
Int Property ToplessFactionCommentChance = 10 Auto Hidden
Int Property BottomlessFactionCommentChance = 10 Auto Hidden
Int Property ChestFactionCommentChance = 20 Auto Hidden
Int Property GenitalsFactionCommentChance = 25 Auto Hidden
Int Property AssFactionCommentChance = 15 Auto Hidden
Int Property BraFactionCommentChance = 5 Auto Hidden
Int Property UnderwearFactionCommentChance = 5 Auto Hidden

Int Property MinimumModestyRank = 0 Auto Hidden
Int Property MinimumTopModestyRank = 0 Auto Hidden
Int Property MinimumBottomModestyRank = 0 Auto Hidden
Int Property ImmodestyTimeNeeded = 14 Auto Hidden
Int Property PlayerConfidenceValue = 2 Auto Hidden

String Property PlayerConfidence = "Average" Auto Hidden
String Property ShySex = "Males" Auto Hidden
String Property NPCShySex = "Males" Auto Hidden
String Property NPCShyTweak = "Males" Auto Hidden
String[] Property Sexes Auto
String[] Property NPCSexes Auto

GlobalVariable Property ModestyArousalThreshold Auto
GlobalVariable Property NPCModestyArousalThreshold Auto
GlobalVariable Property AND_DynamicModesty Auto

Int[] Property FlashKey Auto

Int[] Property Page9ToggleID Auto Hidden
Int[] Property Page10ToggleID Auto Hidden
Int[] Property Page12ToggleID Auto Hidden

Int[] Property Page9SliderID Auto Hidden
Int[] Property Page10SliderID Auto Hidden
Int[] Property Page12SliderID Auto Hidden

Int[] Property Page9MenuID Auto Hidden
Int[] Property Page10MenuID Auto Hidden

Int[] Property Page11KeyID Auto Hidden
Int[] Property Page11ToggleID Auto Hidden

String Property ScanFrequency = "Normal" Auto Hidden

String[] Property DisplayFemaleName Auto Hidden
Int Property DisplayIndex = 0 Auto Hidden
String Property SelectedFemale = "---" Auto Hidden
Bool Property MakeFemalePermanent = False Auto Hidden
Bool Property DeleteFemale = False Auto Hidden

String[] Property PermFemales Auto Hidden
Int Property PermIndex = 0 Auto Hidden
String Property SelectedPermFemale = "---" Auto Hidden
Bool Property DeletePermFemale = False Auto Hidden

Event OnConfigInit()
	Startup()
EndEvent

Event OnUpdate()
	AND_Logger.FastLog("<MCM> [OnUpdate] - START", Logger.CRITICAL)
	InstallMCM()
	
	ModestyArousalThreshold.SetValue(70)
	NPCModestyArousalThreshold.SetValue(70)
	
	DisplayFemaleName = Utility.CreateStringArray(1, "---")
	PermFemales = Utility.CreateStringArray(1, "---")
	
	AND_Logger.FastLog("<MCM> [OnUpdate] - FINISHED", Logger.CRITICAL)
	Debug.Notification("Advanced Nudity MCM Ready!")
	AND_Logger.FastLog("<MCM> [OnUpdate] - MCM Setup Complete!", Logger.CRITICAL)
EndEvent

Function Startup()
	;If user has Papyrus Logging enabled in 'Skyrim.ini', immediately enable custom logger and output to game log as well.
	Logging = Utility.GetINIBool("bEnableLogging:Papyrus")
	AND_Logger.EnableLogging(Logging)
	If Logging == True
		LoggingLevel = 0
		AND_Logger.SetLogLevel(LoggingLevel)
	EndIf
	
	Utility.Wait(1.0)
	
	Debug.Notification("Advanced Nudity MCM Initializing...")
	
	RegisterForSingleUpdate(1)
	AND_Logger.FastLog("<MCM> [Startup] - Completed!", Logger.CRITICAL)
EndFunction

Function InstallMCM()
	AND_Logger.FastLog("<MCM> [InstallMCM] - START", Logger.CRITICAL)
	
	ModName = "Advanced Nudity"
	Pages = New String[13]
	Pages[0] = "$NudityStatesPage"
	Pages[1] = "$FlashingStatesPage"
	Pages[2] = "$CurtainKeywordsPage"
	Pages[3] = "$ArmorAndUnderwearKeywordsPage"
	Pages[4] = "$GeneralKeywordsPage"
	Pages[5] = "$FlashRiskKeywordsPage"
	Pages[6] = "$FemaleFlashChancesPage"
	Pages[7] = "$MaleFlashChancesPage"
	Pages[8] = "$NakedCommentsPage"
	Pages[9] = "$DynamicModestyPage"
	Pages[10] = "$NPCModestyPage"
	Pages[11] = "$FlashKeys"
	Pages[12] = "$DebugPage"
	
	Page9ToggleID = new Int[25]
	Page10ToggleID = new Int[25]
	Page12ToggleID = new Int[2]
	
	Page9SliderID = new Int[2]
	Page10SliderID = new Int[10]
	Page12SliderID = new Int[1]
	
	Page9MenuID = new Int[1]
	Page10MenuID = new Int[5]
	
	Page11KeyID = new Int[10]
	Page11ToggleID = new Int[5]
	
	AND_Logger.FastLog("<MCM> [InstallMCM] - END", Logger.CRITICAL)
EndFunction

Function SetMaleCoverage()
	TopCurtainLayer_Cover = MaleScan.AND_TopCurtain_Cover
	AssCurtain_Cover = MaleScan.AND_AssCurtain_Cover
	PelvicCurtain_Cover = MaleScan.AND_PelvicCurtain_Cover
EndFunction

Function SetFemaleCoverage()
	TopCurtainLayer_Cover = FemaleScan.AND_TopCurtain_Cover
	AssCurtain_Cover = FemaleScan.AND_AssCurtain_Cover
	PelvicCurtain_Cover = FemaleScan.AND_PelvicCurtain_Cover
EndFunction

Event OnConfigOpen()
	AND_Logger.FastLog("<MCM> [OnConfigOpen] - START")
	
	AND_Logger.FastLog("<MCM> [OnConfigOpen] - Initialize NPC Variables")
	Int TrackedFemales = NPCModesty.TrackedFemales
	Int PermanentFemales = NPCModesty.PermanentFemales
	Int Index = 0
	
	AND_Logger.FastLog("<MCM> [OnConfigOpen] - Update Tracked Females List")
	DisplayFemaleName = NPCModesty.FemaleName
	
	AND_Logger.FastLog("<MCM> [OnConfigOpen] - Update Permanent Females List")
	If PermanentFemales > 0
		PermFemales = Utility.ResizeStringArray(PermFemales, PermanentFemales, "---")
		
		While Index < PermanentFemales
			AND_Logger.FastLog("<MCM> [Config Open] String Value for Index " + Index + " for PermFemales: " + GetStringValue(NPCModesty.PermJsonName, "Female " + Index + " Name"))
			PermFemales[Index] = GetStringValue(NPCModesty.PermJsonName, "Female " + Index + " Name")
			AND_Logger.FastLog("<MCM> [Config Open] PermFemales[" + Index + "] = " + PermFemales[Index])
			Index += 1
		EndWhile
	Else
		PermFemales[0] = "---"
	EndIf
	
	AND_Logger.FastLog("<MCM> [OnConfigOpen] - END")
EndEvent

Event OnConfigClose()
	If TopRank1Jump == True
		ModestyManager.TopRankJump(1)
	ElseIf TopRank2Jump == True
		ModestyManager.TopRankJump(2)
	ElseIf TopRank3Jump == True
		ModestyManager.TopRankJump(3)
	EndIf
	
	If BottomRank1Jump == True
		ModestyManager.BottomRankJump(1)
	ElseIf BottomRank2Jump == True
		ModestyManager.BottomRankJump(2)
	ElseIf BottomRank3Jump == True
		ModestyManager.BottomRankJump(3)
	EndIf
	
	If Rank6Jump == True
		ModestyManager.RankJump(6)
	ElseIf Rank5Jump == True
		ModestyManager.RankJump(5)
	ElseIf Rank4Jump == True
		ModestyManager.RankJump(4)
	ElseIf Rank3Jump == True
		ModestyManager.RankJump(3)
	ElseIf Rank2Jump == True
		ModestyManager.RankJump(2)
	ElseIf Rank1Jump == True
		ModestyManager.RankJump(1)
	ElseIf ResetModesty == True
		ModestyManager.RankJump(0)
		ModestyManager.TopRankJump(0)
		ModestyManager.BottomRankJump(0)
	EndIf
	
	TopRank1Jump = False
	TopRank2Jump = False
	TopRank3Jump = False
	
	BottomRank1Jump = False
	BottomRank2Jump = False
	BottomRank3Jump = False
	
	Rank6Jump = False
	Rank5Jump = False
	Rank4Jump = False
	Rank3Jump = False
	Rank2Jump = False
	Rank1Jump = False
	
	ResetModesty = False
	
	ModestyManager.TimerUpdate(ImmodestyTimeNeeded)
	
	If ScanFrequency == "$VFScan"
		PlayerScript.MaxTimeScale = 40
		PlayerScript.GameTimeUpdateSpeed = 0.1
		If PlayerScript.ScanSetting != "Very Fast"
			PlayerScript.ScanSetting = "Very Fast"
			PlayerScript.UnregisterForUpdateGameTime()
			PlayerScript.RegisterForUpdateGameTime(0.1)
		EndIf
	ElseIf ScanFrequency == "$FScan"
		PlayerScript.MaxTimeScale = 60
		PlayerScript.GameTimeUpdateSpeed = 0.15
		If PlayerScript.ScanSetting != "Fast"
			PlayerScript.ScanSetting = "Fast"
			PlayerScript.UnregisterForUpdateGameTime()
			PlayerScript.RegisterForUpdateGameTime(0.15)
		EndIf
	ElseIf ScanFrequency == "$NScan"
		PlayerScript.MaxTimeScale = 100
		PlayerScript.GameTimeUpdateSpeed = 0.25
		If PlayerScript.ScanSetting != "Normal"
			PlayerScript.ScanSetting = "Normal"
			PlayerScript.UnregisterForUpdateGameTime()
			PlayerScript.RegisterForUpdateGameTime(0.25)
		EndIf
	ElseIf ScanFrequency == "$SScan"
		PlayerScript.MaxTimeScale = 200
		PlayerScript.GameTimeUpdateSpeed = 0.5
		If PlayerScript.ScanSetting != "Slow"
			PlayerScript.ScanSetting = "Slow"
			PlayerScript.UnregisterForUpdateGameTime()
			PlayerScript.RegisterForUpdateGameTime(0.5)
		EndIf
	ElseIf ScanFrequency == "$VSScan"
		PlayerScript.MaxTimeScale = 300
		PlayerScript.GameTimeUpdateSpeed = 0.75
		If PlayerScript.ScanSetting != "Very Slow"
			PlayerScript.ScanSetting = "Very Slow"
			PlayerScript.UnregisterForUpdateGameTime()
			PlayerScript.RegisterForUpdateGameTime(0.75)
		EndIf
	Else
		ScanFrequency = "$NScan"
		PlayerScript.MaxTimeScale = 100
		PlayerScript.GameTimeUpdateSpeed = 0.25
		PlayerScript.ScanSetting = "Normal"
		PlayerScript.UnregisterForUpdateGameTime()
		PlayerScript.RegisterForUpdateGameTime(0.25)
	EndIf
	
	If HardcoreLockdown == False && UseHardcoreModesty == True
		HardcoreLockdown = True
	EndIf
	
	If RandomizePlayer == True
		Int PlayerModesty = ModestyRandomizer.GetRandomizedModesty(PlayerRef, True)
		
		If PlayerModesty <= 0
			ModestyManager.RankJump(0)
			ModestyManager.TopRankJump(0)
			ModestyManager.BottomRankJump(0)
		ElseIf PlayerModesty == 1
			ModestyManager.RankJump(1)
			ModestyManager.TopRankJump(1)
			ModestyManager.BottomRankJump(0)
		ElseIf PlayerModesty == 2
			ModestyManager.RankJump(2)
			ModestyManager.TopRankJump(1)
			ModestyManager.BottomRankJump(1)
		ElseIf PlayerModesty == 3
			ModestyManager.RankJump(3)
			ModestyManager.TopRankJump(2)
			ModestyManager.BottomRankJump(1)
		ElseIf PlayerModesty == 4
			ModestyManager.RankJump(4)
			ModestyManager.TopRankJump(2)
			ModestyManager.BottomRankJump(2)
		ElseIf PlayerModesty == 5
			ModestyManager.RankJump(5)
			ModestyManager.TopRankJump(3)
			ModestyManager.BottomRankJump(2)
		ElseIf PlayerModesty >= 6
			ModestyManager.RankJump(6)
			ModestyManager.TopRankJump(3)
			ModestyManager.BottomRankJump(3)
		EndIf
	EndIf
	
	If NPCTimerWipeArmed == True
		NPCModesty.WipeLastUpdateTimes()
		NPCTimerWipeArmed = False
	EndIf
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetection_MCMChanged")
	ModEvent.Send(EventHandle)
	
	RandomizePlayer = False
	
	ApplyTweak = False
	ApplyAsDefault = False
	ResetNPCs = False
	DeleteNPCs = False
	MakeFemalePermanent = False
	DeleteFemale = False
	ResetFemaleModesty = False
	DeletePermFemale = False
EndEvent

Event OnPageReset(string page)
	If (page == "")
		Int Screen = Utility.RandomInt(1,8)
		
		Int xPos = 155
		Int yPos = 0
		
		If Screen == 1
			LoadCustomContent("Advanced Nudity Detection/ANDSplash.dds", xPos, yPos)
		ElseIf Screen == 2
			LoadCustomContent("Advanced Nudity Detection/ANDSplashAlmostNude.dds", xPos, yPos)
		ElseIf Screen == 3
			LoadCustomContent("Advanced Nudity Detection/ANDSplashBraPanties.dds", xPos, yPos)
		ElseIf Screen == 4
			LoadCustomContent("Advanced Nudity Detection/ANDSplashCovered.dds", xPos, yPos)
		ElseIf Screen == 5
			LoadCustomContent("Advanced Nudity Detection/ANDSplashNude.dds", xPos, yPos)
		ElseIf Screen == 6
			LoadCustomContent("Advanced Nudity Detection/ANDSplashPanties.dds", xPos, yPos)
		ElseIf Screen == 7
			LoadCustomContent("Advanced Nudity Detection/ANDSplashTopless.dds", xPos, yPos)
		ElseIf Screen == 8
			LoadCustomContent("Advanced Nudity Detection/ANDSplashThanks.dds", xPos, yPos)
		EndIf
		
		return
	Else
		UnloadCustomContent()
	EndIf
	
	SetCursorFillMode(TOP_TO_BOTTOM)
	SetCursorPosition(0)
	
	ActorBase PlayerBase = Main.PlayerBase
	Int PlayerSex = PlayerBase.GetSex()
	
	If (page == "$NudityStatesPage") ;default page
		AddHeaderOption("$NudityConditionsHeader")
		If PlayerRef.GetFactionRank(Main.AND_NudeActorFaction) == 1
			AddTextOption("$NudeText", "$YesText")
		Else
			AddTextOption("$NudeText", "$NoText")
		EndIf
		
		If PlayerRef.GetFactionRank(Main.AND_ToplessFaction) == 1
			AddTextOption("$ToplessText", "$YesText")
		Else
			AddTextOption("$ToplessText", "$NoText")
		EndIf
		
		If PlayerRef.GetFactionRank(Main.AND_BottomlessFaction) == 1
			AddTextOption("$BottomlessText", "$YesText")
		Else
			AddTextOption("$BottomlessText", "$NoText")
		EndIf
		
		If PlayerRef.GetFactionRank(Main.AND_ShowingBraFaction) == 1
			AddTextOption("$ShowingBraText", "$YesText")
		Else
			AddTextOption("$ShowingBraText", "$NoText")
		EndIf
		
		If PlayerRef.GetFactionRank(Main.AND_ShowingChestFaction) == 1
			If PlayerSex == 0 || GenderlessWording == True ;Male/Genderless
				AddTextOption("$ShowingChestText", "$YesText")
			Else
				AddTextOption("$ShowingBoobsText", "$YesText")
			EndIf
		Else
			If PlayerSex == 0 || GenderlessWording == True ;Male/Genderless
				AddTextOption("$ShowingChestText", "$NoText")
			Else
				AddTextOption("$ShowingBoobsText", "$NoText")
			EndIf
		EndIf
		
		If PlayerRef.GetFactionRank(Main.AND_ShowingUnderwearFaction) == 1
			AddTextOption("$ShowingUnderwearText", "$YesText")
		Else
			AddTextOption("$ShowingUnderwearText", "$NoText")
		EndIf
		
		If PlayerRef.GetFactionRank(Main.AND_ShowingGenitalsFaction) == 1
			If PlayerSex == 0 && GenderlessWording == False ;Male
				AddTextOption("$ShowingPenisText", "$YesText")
			ElseIf GenderlessWording == False
				AddTextOption("$ShowingPussyText", "$YesText")
			Else
				AddTextOption("$ShowingGenitalsText", "$YesText")
			EndIf
		Else
			If PlayerSex == 0 && GenderlessWording == False ;Male
				AddTextOption("$ShowingPenisText", "$NoText")
			ElseIf GenderlessWording == False
				AddTextOption("$ShowingPussyText", "$NoText")
			Else
				AddTextOption("$ShowingGenitalsText", "$NoText")
			EndIf
		EndIf
		
		If PlayerRef.GetFactionRank(Main.AND_ShowingAssFaction) == 1
			AddTextOption("$ShowingAssText", "$YesText")
		Else
			AddTextOption("$ShowingAssText", "$NoText")
		EndIf
		
		AddEmptyOption()
		AddToggleOptionST("UseGenderlessState", "$GenderlessWordingText", GenderlessWording, 0)
		
		If PlayerSex == 0 ;Male
			AddTextOption("$BaseSexText", "$MaleText")
		Else
			AddTextOption("$BaseSexText", "$FemaleText")
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$CurtainStatesHeader")
		If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain) || PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT)
			If TopCurtainLayer_Cover == True
				AddTextOption("$TopCurtainText", "$CoveringText")
			Else
				AddTextOption("$TopCurtainText", "$NotCoveringText")
			EndIf
		Else
			AddTextOption("$TopCurtainText", "$NotWearingText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
			If PelvicCurtain_Cover == True
				AddTextOption("$PelvicCurtainText", "$CoveringText")
			Else
				AddTextOption("$PelvicCurtainText", "$NotCoveringText")
			EndIf
		Else
			AddTextOption("$PelvicCurtainText", "$NotWearingText")
		EndIf
			
		If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
			If AssCurtain_Cover == True
				AddTextOption("$AssCurtainText", "$CoveringText")
			Else
				AddTextOption("$AssCurtainText", "$NotCoveringText")
			EndIf
		Else
			AddTextOption("$AssCurtainText", "$NotWearingText")
		EndIf
		
		AddHeaderOption("$MotionSettingsHeader")
		AddToggleOptionST("AND_AllowMotionFlashState", "$AllowMotionFlashText", AllowMotionFlash, 0)
		AddSliderOptionST("AND_RunningFlashIncreaseState", "$RunningModifierText", RunningModifier, "{0}", DisabledIf(AllowMotionFlash == False))
		AddSliderOptionST("AND_SprintingFlashIncreaseState", "$SprintingModifierText", SprintingModifier, "{0}", DisabledIf(AllowMotionFlash == False))
		AddHeaderOption("$ScanSettingsHeader")
		AddToggleOptionST("AND_ScanNPCToggle_State", "$ScanNPCText", ScanNPC, 0)
		AddMenuOptionST("AND_ScanFrequency_State", "$ScanFrequencyText", ScanFrequency, 0)
		
	ElseIf (page == "$FlashingStatesPage")
		AddHeaderOption("$CurtainRiskHeader")
		If PlayerSex == 0 ;Male
			If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskLow_Male)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsLow_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsLow_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRisk_Male)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOdds_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOdds_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskHigh_Male)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsHigh_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsHigh_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskExtreme_Male)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsExtreme_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsExtreme_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskUltra_Male)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsUltra_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsUltra_Male as String + "%")
				EndIf
			Else
				AddTextOption("$ChestText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskLow_Male)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$AssText", AssCurtainOddsLow_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsLow_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRisk_Male)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$AssText", AssCurtainOdds_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOdds_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskHigh_Male)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$AssText", AssCurtainOddsHigh_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsHigh_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskExtreme_Male)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$AssText", AssCurtainOddsExtreme_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsExtreme_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskUltra_Male)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$AssText", AssCurtainOddsUltra_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsUltra_Male as String + "%")
				EndIf
			Else
				AddTextOption("$AssText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskLow_Male)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsLow_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsLow_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRisk_Male)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$PelvicText", PelvicCurtainOdds_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOdds_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskHigh_Male)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsHigh_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsHigh_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskExtreme_Male)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsExtreme_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsExtreme_Male as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskUltra_Male)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsUltra_Male as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsUltra_Male as String + "%")
				EndIf
			Else
				AddTextOption("$PelvicText", "0%")
			EndIf
		Else ;Female
			If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskLow)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain)
					AddTextOption("$ChestText", TopCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT)
					AddTextOption("$ChestText", TransparentTopCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain)
					AddTextOption("$ChestText", TopCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT)
					AddTextOption("$ChestText", TransparentTopCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain)
					AddTextOption("$ChestText", TopCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT)
					AddTextOption("$ChestText", TransparentTopCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain)
					AddTextOption("$ChestText", TopCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT)
					AddTextOption("$ChestText", TransparentTopCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain)
					AddTextOption("$ChestText", TopCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT)
					AddTextOption("$ChestText", TransparentTopCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$ChestText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskLow)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$AssText", AssCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$AssText", TransparentAssCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$AssText", AssCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$AssText", TransparentAssCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$AssText", AssCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$AssText", TransparentAssCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$AssText", AssCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$AssText", TransparentAssCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$AssText", AssCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$AssText", TransparentAssCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$AssText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskLow)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$PelvicText", PelvicCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$PelvicText", PelvicCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$PelvicText", PelvicCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$PelvicText", PelvicCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Main.AND_Miniskirt)
					AddTextOption("$PelvicText", PelvicCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Main.AND_MiniskirtT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$PelvicText", "0%")
			EndIf
		EndIf
		
		AddHeaderOption("$TransparentClothesRiskHeader")
		If PlayerSex != 0 ;FEMALE
			If PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Low)
				AddTextOption("$TopText", TransparentTopArmorOdds_Low as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTopT) && PlayerSex != 0
				AddTextOption("$TopText", TransparentTopArmorOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_High)
				AddTextOption("$TopText", TransparentTopArmorOdds_High as String + "%")
			Else
				AddTextOption("$TopText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Low)
				AddTextOption("$BottomText", TransparentBottomArmorOdds_Low as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT)
				AddTextOption("$BottomText", TransparentBottomArmorOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_High)
				AddTextOption("$BottomText", TransparentBottomArmorOdds_High as String + "%")
			Else
				AddTextOption("$BottomText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_BraT_Low)
				AddTextOption("$BraText", TransparentBraOdds_Low as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BraT)
				AddTextOption("$BraText", TransparentBraOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BraT_High)
				AddTextOption("$BraText", TransparentBraOdds_High as String + "%")
			Else
				AddTextOption("$BraText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Low)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds_Low as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_UnderwearT)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_UnderwearT_High)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds_High as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_Low)
				AddTextOption("$ThongText", TransparentUnderwearOdds_Low as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT)
				AddTextOption("$ThongText", TransparentUnderwearOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_High)
				AddTextOption("$ThongText", TransparentUnderwearOdds_High as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_CString)
				AddTextOption("$CStringText", CStringOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_CStringT_Low)
				AddTextOption("$CStringText", TransparentCStringOdds_Low as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_CStringT)
				AddTextOption("$CStringText", TransparentCStringOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_CStringT_High)
				AddTextOption("$CStringText", TransparentCStringOdds_High as String + "%")
			Else
				AddTextOption("$UnderwearText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Low)
				AddTextOption("$HotpantsText", TransparentHotpantsOdds_Low as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_HotpantsT)
				AddTextOption("$HotpantsText", TransparentHotpantsOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_HotpantsT_High)
				AddTextOption("$HotpantsText", TransparentHotpantsOdds_High as String + "%")
			Else
				AddTextOption("$HotpantsText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT_Low)
				AddTextOption("$ShowgirlSkirtText", TransparentShowgirlSkirtOdds_Low as String + "")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT)
				AddTextOption("$ShowgirlSkirtText", TransparentShowgirlSkirtOdds as String + "")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT_High)
				AddTextOption("$ShowgirlSkirtText", TransparentShowgirlSkirtOdds_High as String + "")
			Else
				AddTextOption("$ShowgirlSkirtText", "0%")
			EndIf
		Else ;MALE
			If PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Low_Male)
				AddTextOption("$TopText", TransparentTopArmorOdds_Low_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Male)
				AddTextOption("$TopText", TransparentTopArmorOdds_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_High_Male)
				AddTextOption("$TopText", TransparentTopArmorOdds_High_Male as String + "%")
			Else
				AddTextOption("$TopText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Low_Male)
				AddTextOption("$BottomText", TransparentBottomArmorOdds_Low_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Male)
				AddTextOption("$BottomText", TransparentBottomArmorOdds_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_High_Male)
				AddTextOption("$BottomText", TransparentBottomArmorOdds_High_Male as String + "%")
			Else
				AddTextOption("$BottomText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_BraT_Low_Male)
				AddTextOption("$BraText", TransparentBraOdds_Low_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BraT_Male)
				AddTextOption("$BraText", TransparentBraOdds_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BraT_High_Male)
				AddTextOption("$BraText", TransparentBraOdds_High_Male as String + "%")
			Else
				AddTextOption("$BraText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Low_Male)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds_Low_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Male)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_UnderwearT_High_Male)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds_High_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_Low_Male)
				AddTextOption("$ThongText", TransparentUnderwearOdds_Low_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_Male)
				AddTextOption("$ThongText", TransparentUnderwearOdds_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_High_Male)
				AddTextOption("$ThongText", TransparentUnderwearOdds_High_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammock)
				AddTextOption("$BananaHammockText", CStringOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammockT_Low)
				AddTextOption("$BananaHammockText", TransparentCStringOdds_Low_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammockT)
				AddTextOption("$BananaHammockText", TransparentCStringOdds_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammockT_High)
				AddTextOption("$BananaHammockText", TransparentCStringOdds_High_Male as String + "%")
			Else
				AddTextOption("$UnderwearText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Low_Male)
				AddTextOption("$HotpantsText", TransparentHotpantsOdds_Low_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Male)
				AddTextOption("$HotpantsText", TransparentHotpantsOdds_Male as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_HotpantsT_High_Male)
				AddTextOption("$HotpantsText", TransparentHotpantsOdds_High_Male as String + "%")
			Else
				AddTextOption("$HotpantsText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT_Low)
				AddTextOption("$HimboSkirtText", TransparentShowgirlSkirtOdds_Low_Male as String + "")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT)
				AddTextOption("$HimboSkirtText", TransparentShowgirlSkirtOdds as String + "")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT_High)
				AddTextOption("$HimboSkirtText", TransparentShowgirlSkirtOdds_High_Male as String + "")
			Else
				AddTextOption("$HimboSkirtText", "0%")
			EndIf
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$FlashRollsHeader")
		AddTextOption("$ChestCurtainRollText", Main.TopCurtainRoll)
		AddTextOption("$AssCurtainRollText", Main.AssCurtainRoll)
		AddTextOption("$PelvicCurtainRollText", Main.PelvicCurtainRoll)
		If PlayerSex == 0 ;Male
			AddTextOption("$BananaHammockRollText", Main.CStringRoll)
		Else
			AddTextOption("$CStringRollText", Main.CStringRoll)
		EndIf
		AddTextOption("$TransparentTopRollText", Main.TopTransparentRoll)
		AddTextOption("$TransparentBottomRollText", Main.BottomTransparentRoll)
		AddTextOption("$TransparentBraRollText", Main.BraTransparentRoll)
		AddTextOption("$TransparentUnderwearRollText", Main.UnderwearTransparentRoll)
		AddTextOption("$TransparentHotpantsRollText", Main.HotpantsTransparentRoll)
		If PlayerSex == 0 ;Male
			AddTextOption("$TransparentHimboSkirtRollText", Main.ShowgirlTransparentRoll)
		Else
			AddTextOption("$TransparentShowgirlSkirtRollText", Main.ShowgirlTransparentRoll)
		EndIf
		
	ElseIf (page == "$CurtainKeywordsPage")
	
		If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain) && PlayerSex != 0
			AddTextOption("AND_ChestCurtain", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
			AddTextOption("AND_ChestCurtain", "$YesText")
		Else
			AddTextOption("AND_ChestCurtain", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT) && PlayerSex != 0
			AddTextOption("AND_ChestCurtainT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
			AddTextOption("AND_ChestCurtainT", "$YesText")
		Else
			AddTextOption("AND_ChestCurtainT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) && PlayerSex != 0
			AddTextOption("AND_PelvicCurtain", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male)
			AddTextOption("AND_PelvicCurtain", "$YesText")
		Else
			AddTextOption("AND_PelvicCurtain", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) && PlayerSex != 0
			AddTextOption("AND_PelvicCurtainT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male)
			AddTextOption("AND_PelvicCurtainT", "$YesText")
		Else
			AddTextOption("AND_PelvicCurtainT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) && PlayerSex != 0
			AddTextOption("AND_AssCurtain", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male)
			AddTextOption("AND_AssCurtain", "$YesText")
		Else
			AddTextOption("AND_AssCurtain", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) && PlayerSex != 0
			AddTextOption("AND_AssCurtainT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male)
			AddTextOption("AND_AssCurtainT", "$YesText")
		Else
			AddTextOption("AND_AssCurtainT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Miniskirt) && PlayerSex != 0
			AddTextOption("AND_Miniskirt", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
			AddTextOption("AND_Miniskirt", "$YesText")
		Else
			AddTextOption("AND_Miniskirt", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_MiniskirtT) && PlayerSex != 0
			AddTextOption("AND_MiniskirtT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
			AddTextOption("AND_MiniskirtT", "$YesText")
		Else
			AddTextOption("AND_MiniskirtT", "$NoText")
		EndIf
	
	ElseIf (page == "$ArmorAndUnderwearKeywordsPage")
	
		AddHeaderOption("$ArmorKeywordsHeader")
	
		If PlayerRef.WornHasKeyword(Main.AND_ArmorTop) && PlayerSex != 0
			AddTextOption("AND_ArmorTop", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTop_Male)
			AddTextOption("AND_ArmorTop", "$YesText")
		Else
			AddTextOption("AND_ArmorTop", "$NoText")
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Low) || PlayerRef.WornHasKeyword(Main.AND_ArmorTopT) || PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_High)) && PlayerSex != 0
			AddTextOption("AND_ArmorTopT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Low_Male) || PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Male) || PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_High_Male)
			AddTextOption("AND_ArmorTopT", "$YesText")
		Else
			AddTextOption("AND_ArmorTopT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorTop_NoCover) && PlayerSex != 0
			AddTextOption("AND_ArmorTop_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTop_NoCover_Male)
			AddTextOption("AND_ArmorTop_NoCover", "$YesText")
		Else
			AddTextOption("AND_ArmorTop_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorBottom) && PlayerSex != 0
			AddTextOption("AND_ArmorBottom", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottom_Male)
			AddTextOption("AND_ArmorBottom", "$YesText")
		Else
			AddTextOption("AND_ArmorBottom", "$NoText")
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Low) || PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT) || PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_High)) && PlayerSex != 0
			AddTextOption("AND_ArmorBottomT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Low_Male) || PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Male) || PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_High_Male)
			AddTextOption("AND_ArmorBottomT", "$YesText")
		Else
			AddTextOption("AND_ArmorBottomT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorBottom_NoCover) && PlayerSex != 0
			AddTextOption("AND_ArmorBottom_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottom_NoCover_Male)
			AddTextOption("AND_ArmorBottom_NoCover", "$YesText")
		Else
			AddTextOption("AND_ArmorBottom_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Hotpants) && PlayerSex != 0
			AddTextOption("AND_Hotpants", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Hotpants_Male)
			AddTextOption("AND_Hotpants", "$YesText")
		Else
			AddTextOption("AND_Hotpants", "$NoText")
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Low) || PlayerRef.WornHasKeyword(Main.AND_HotpantsT) || PlayerRef.WornHasKeyword(Main.AND_HotpantsT_High)) && PlayerSex != 0
			AddTextOption("AND_HotpantsT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Low_Male) || PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Male) || PlayerRef.WornHasKeyword(Main.AND_HotpantsT_High_Male)
			AddTextOption("AND_HotpantsT", "$YesText")
		Else
			AddTextOption("AND_HotpantsT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirt) && PlayerSex != 0
			AddTextOption("AND_ShowgirlSkirt", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HimboSkirt)
			AddTextOption("AND_HimboSkirt", "$YesText")
		Else
			If PlayerSex != 0
				AddTextOption("AND_ShowgirlSkirt", "$NoText")
			Else
				AddTextOption("AND_HimboSkirt", "$NoText")
			EndIf
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT_Low) || PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT_High)) && PlayerSex != 0
			AddTextOption("AND_ShowgirlSkirtT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT_Low) || PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT) || PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT_High)
			AddTextOption("AND_HimboSkirtT", "$YesText")
		Else
			If PlayerSex != 0
				AddTextOption("AND_ShowgirlSkirtT", "$NoText")
			Else
				AddTextOption("AND_HimboSkirtT", "$NoText")
			EndIf
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$UnderwearKeywordsHeader")
		
		If PlayerRef.WornHasKeyword(Main.AND_Bra) && PlayerSex != 0
			AddTextOption("AND_Bra", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Bra_Male)
			AddTextOption("AND_Bra", "$YesText")
		Else
			AddTextOption("AND_Bra", "$NoText")
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_BraT_Low) || PlayerRef.WornHasKeyword(Main.AND_BraT) || PlayerRef.WornHasKeyword(Main.AND_BraT_High)) && PlayerSex != 0
			AddTextOption("AND_BraT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_BraT_Low_Male) || PlayerRef.WornHasKeyword(Main.AND_BraT_Male) || PlayerRef.WornHasKeyword(Main.AND_BraT_High_Male)
			AddTextOption("AND_BraT", "$YesText")
		Else
			AddTextOption("AND_BraT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Bra_NoCover) && PlayerSex != 0
			AddTextOption("AND_Bra_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Bra_NoCover_Male)
			AddTextOption("AND_Bra_NoCover", "$YesText")
		Else
			AddTextOption("AND_Bra_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_CString) && PlayerSex != 0
			AddTextOption("AND_CString", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammock)
			AddTextOption("AND_BananaHammock", "$YesText")
		Else
			If PlayerSex != 0
				AddTextOption("AND_CString", "$NoText")
			Else
				AddTextOption("AND_BananaHammock", "$NoText")
			EndIf
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(Main.AND_CStringT) || PlayerRef.WornHasKeyword(Main.AND_CStringT_High)) && PlayerSex != 0
			AddTextOption("AND_CStringT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammockT_Low) || PlayerRef.WornHasKeyword(Main.AND_BananaHammockT) || PlayerRef.WornHasKeyword(Main.AND_BananaHammockT_High)
			AddTextOption("AND_BananaHammockT", "$YesText")
		Else
			If PlayerSex != 0
				AddTextOption("AND_CStringT", "$NoText")
			Else
				AddTextOption("AND_BananaHammockT", "$NoText")
			EndIf
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Thong) && PlayerSex != 0
			AddTextOption("AND_Thong", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Thong_Male)
			AddTextOption("AND_Thong", "$YesText")
		Else
			AddTextOption("AND_Thong", "$NoText")
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(Main.AND_ThongT) || PlayerRef.WornHasKeyword(Main.AND_ThongT_High)) && PlayerSex != 0
			AddTextOption("AND_ThongT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_Low_Male) || PlayerRef.WornHasKeyword(Main.AND_ThongT_Male) || PlayerRef.WornHasKeyword(Main.AND_ThongT_High_Male)
			AddTextOption("AND_ThongT", "$YesText")
		Else
			AddTextOption("AND_ThongT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Thong_NoCover) && PlayerSex != 0
			AddTextOption("AND_Thong_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Thong_NoCover_Male)
			AddTextOption("AND_Thong_NoCover", "$YesText")
		Else
			AddTextOption("AND_Thong_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Underwear) && PlayerSex != 0
			AddTextOption("AND_Underwear", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Underwear_Male)
			AddTextOption("AND_Underwear", "$YesText")
		Else
			AddTextOption("AND_Underwear", "$NoText")
		EndIf
		
		If (PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(Main.AND_UnderwearT_High)) && PlayerSex != 0
			AddTextOption("AND_UnderwearT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Low_Male) || PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Male) || PlayerRef.WornHasKeyword(Main.AND_UnderwearT_High_Male)
			AddTextOption("AND_UnderwearT", "$YesText")
		Else
			AddTextOption("AND_UnderwearT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Underwear_NoCover) && PlayerSex != 0
			AddTextOption("AND_Underwear_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Underwear_NoCover_Male)
			AddTextOption("AND_Underwear_NoCover", "$YesText")
		Else
			AddTextOption("AND_Underwear_NoCover", "$NoText")
		EndIf

	ElseIf (page == "$GeneralKeywordsPage")
	
		If PlayerRef.WornHasKeyword(Main.AND_CoversAll) && PlayerSex != 0
			AddTextOption("AND_CoversAll", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_CoversAll_Male)
			AddTextOption("AND_CoversAll", "$YesText")
		Else
			AddTextOption("AND_CoversAll", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Microskirt) && PlayerSex != 0
			AddTextOption("AND_Microskirt", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Microskirt_Male)
			AddTextOption("AND_Microskirt", "$YesText")
		Else
			AddTextOption("AND_Microskirt", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_NipplePasties) && PlayerSex != 0
			AddTextOption("AND_NipplePasties", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_NipplePasties_Male)
			AddTextOption("AND_NipplePasties", "$YesText")
		Else
			AddTextOption("AND_NipplePasties", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_VaginaPasties) && PlayerSex != 0
			AddTextOption("AND_VaginaPasties", "$YesText")
		Else
			If PlayerSex != 0
				AddTextOption("AND_VaginaPasties", "$NoText")
			Else
				AddTextOption("AND_VaginaPasties", "N/A")
			EndIf
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_NearlyNaked) && PlayerSex != 0
			AddTextOption("AND_NearlyNaked", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_NearlyNaked_Male)
			AddTextOption("AND_NearlyNaked", "$YesText")
		Else
			AddTextOption("AND_NearlyNaked", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_EffectivelyNaked) && PlayerSex != 0
			AddTextOption("AND_EffectivelyNaked", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_EffectivelyNaked_Male)
			AddTextOption("AND_EffectivelyNaked", "$YesText")
		Else
			AddTextOption("AND_EffectivelyNaked", "$NoText")
		EndIf
	
	ElseIf (page == "$FlashRiskKeywordsPage")
		AddHeaderOption("$ChestCurtainText")
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskUltra) && PlayerSex != 0
			AddTextOption("AND_ChestFlashRiskUltra", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskUltra_Male)
			AddTextOption("AND_ChestFlashRiskUltra", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskUltra", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskExtreme) && PlayerSex != 0
			AddTextOption("AND_ChestFlashRiskExtreme", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskExtreme_Male)
			AddTextOption("AND_ChestFlashRiskExtreme", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskExtreme", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskHigh) && PlayerSex != 0
			AddTextOption("AND_ChestFlashRiskHigh", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskHigh_Male)
			AddTextOption("AND_ChestFlashRiskHigh", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskHigh", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRisk) && PlayerSex != 0
			AddTextOption("AND_ChestFlashRisk", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRisk_Male)
			AddTextOption("AND_ChestFlashRisk", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRisk", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskLow) && PlayerSex != 0
			AddTextOption("AND_ChestFlashRiskLow", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskLow_Male)
			AddTextOption("AND_ChestFlashRiskLow", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskLow", "$NoText")
		EndIf
		
		AddHeaderOption("$PelvicCurtainText")
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskUltra) && PlayerSex != 0
			AddTextOption("AND_PelvicFlashRiskUltra", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskUltra_Male)
			AddTextOption("AND_PelvicFlashRiskUltra", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskUltra", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskExtreme) && PlayerSex != 0
			AddTextOption("AND_PelvicFlashRiskExtreme", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskExtreme_Male)
			AddTextOption("AND_PelvicFlashRiskExtreme", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskExtreme", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskHigh) && PlayerSex != 0
			AddTextOption("AND_PelvicFlashRiskHigh", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskHigh_Male)
			AddTextOption("AND_PelvicFlashRiskHigh", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskHigh", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRisk) && PlayerSex != 0
			AddTextOption("AND_PelvicFlashRisk", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRisk_Male)
			AddTextOption("AND_PelvicFlashRisk", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRisk", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskLow) && PlayerSex != 0
			AddTextOption("AND_PelvicFlashRiskLow", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskLow_Male)
			AddTextOption("AND_PelvicFlashRiskLow", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskLow", "$NoText")
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$AssCurtainText")
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskUltra) && PlayerSex != 0
			AddTextOption("AND_AssFlashRiskUltra", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskUltra_Male)
			AddTextOption("AND_AssFlashRiskUltra", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskUltra", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskExtreme) && PlayerSex != 0
			AddTextOption("AND_AssFlashRiskExtreme", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskExtreme_Male)
			AddTextOption("AND_AssFlashRiskExtreme", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskExtreme", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskHigh) && PlayerSex != 0
			AddTextOption("AND_AssFlashRiskHigh", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskHigh_Male)
			AddTextOption("AND_AssFlashRiskHigh", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskHigh", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRisk) && PlayerSex != 0
			AddTextOption("AND_AssFlashRisk", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRisk_Male)
			AddTextOption("AND_AssFlashRisk", "$YesText")
		Else
			AddTextOption("AND_AssFlashRisk", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskLow) && PlayerSex != 0
			AddTextOption("AND_AssFlashRiskLow", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskLow_Male)
			AddTextOption("AND_AssFlashRiskLow", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskLow", "$NoText")
		EndIf
	ElseIf (page == "$FemaleFlashChancesPage")
		AddHeaderOption("$ChestCurtainText")
		AddSliderOptionST("AND_ChestCurtainLowOdds", "$ChestCurtainLowText", TopCurtainOddsLow, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainOdds", "$ChestCurtainNormalText", TopCurtainOdds, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainHighOdds", "$ChestCurtainHighText", TopCurtainOddsHigh, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainExtremeOdds", "$ChestCurtainExtremeText", TopCurtainOddsExtreme, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainUltraOdds", "$ChestCurtainUltraText", TopCurtainOddsUltra, "{0}%", 0)
		
		AddHeaderOption("$PelvicCurtainText")
		AddSliderOptionST("AND_PelvicCurtainLowOdds", "$PelvicCurtainLowText", PelvicCurtainOddsLow, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainOdds", "$PelvicCurtainNormalText", PelvicCurtainOdds, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainHighOdds", "$PelvicCurtainHighText", PelvicCurtainOddsHigh, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainExtremeOdds", "$PelvicCurtainExtremeText", PelvicCurtainOddsExtreme, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainUltraOdds", "$PelvicCurtainUltraText", PelvicCurtainOddsUltra, "{0}%", 0)
		
		AddHeaderOption("$AssCurtainText")
		AddSliderOptionST("AND_AssCurtainLowOdds", "$AssCurtainLowText", AssCurtainOddsLow, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainOdds", "$AssCurtainNormalText", AssCurtainOdds, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainHighOdds", "$AssCurtainHighText", AssCurtainOddsHigh, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainExtremeOdds", "$AssCurtainExtremeText", AssCurtainOddsExtreme, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainUltraOdds", "$AssCurtainUltraText", AssCurtainOddsUltra, "{0}%", 0)
		
		AddHeaderOption("$CStringText")
		AddSliderOptionST("AND_CStringOdds", "$CStringText", CStringOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentCStringOddsLow", "$TransparentCStringLowText", TransparentCStringOdds_Low, "{0}%", 0)
		AddSliderOptionST("AND_TransparentCStringOdds", "$TransparentCStringNormalText", TransparentCStringOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentCStringOddsHigh", "$TransparentCStringHighText", TransparentCStringOdds_High, "{0}%", 0)
		
		SetCursorPosition(1)
		AddHeaderOption("$TransparentChestCurtainHeader")
		AddSliderOptionST("AND_TransparentChestCurtainLowOdds", "$TransparentChestCurtainLowText", TransparentTopCurtainOddsLow, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainOdds", "$TransparentChestCurtainNormalText", TransparentTopCurtainOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainHighOdds", "$TransparentChestCurtainHighText", TransparentTopCurtainOddsHigh, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainExtremeOdds", "$TransparentChestCurtainExtremeText", TransparentTopCurtainOddsExtreme, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainUltraOdds", "$TransparentChestCurtainUltraText", TransparentTopCurtainOddsUltra, "{0}%", 0)
		
		AddHeaderOption("$TransparentPelvicCurtainHeader")
		AddSliderOptionST("AND_TransparentPelvicCurtainLowOdds", "$TransparentPelvicCurtainLowText", TransparentPelvicCurtainOddsLow, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainOdds", "$TransparentPelvicCurtainNormalText", TransparentPelvicCurtainOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainHighOdds", "$TransparentPelvicCurtainHighText", TransparentPelvicCurtainOddsHigh, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainExtremeOdds", "$TransparentPelvicCurtainExtremeText", TransparentPelvicCurtainOddsExtreme, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainUltraOdds", "$TransparentPelvicCurtainUltraText", TransparentPelvicCurtainOddsUltra, "{0}%", 0)
		
		AddHeaderOption("$TransparentAssCurtainHeader")
		AddSliderOptionST("AND_TransparentAssCurtainLowOdds", "$TransparentAssCurtainLowText", TransparentAssCurtainOddsLow, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainOdds", "$TransparentAssCurtainNormalText", TransparentAssCurtainOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainHighOdds", "$TransparentAssCurtainHighText", TransparentAssCurtainOddsHigh, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainExtremeOdds", "$TransparentAssCurtainExtremeText", TransparentAssCurtainOddsExtreme, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainUltraOdds", "$TransparentAssCurtainUltraText", TransparentAssCurtainOddsUltra, "{0}%", 0)
		
		AddHeaderOption("$TransparentClothesHeader")
		AddSliderOptionST("AND_TransparentTopArmorOddsLow", "$TransparentArmorTopLowText", TransparentTopArmorOdds_Low, "{0}%", 0)
		AddSliderOptionST("AND_TransparentTopArmorOdds", "$TransparentArmorTopNormalText", TransparentTopArmorOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentTopArmorOddsHigh", "$TransparentArmorTopHighText", TransparentTopArmorOdds_High, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentBottomArmorOddsLow", "$TransparentArmorBottomLowText", TransparentBottomArmorOdds_Low, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBottomArmorOdds", "$TransparentArmorBottomNormalText", TransparentBottomArmorOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBottomArmorOddsHigh", "$TransparentArmorBottomHighText", TransparentBottomArmorOdds_High, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentBraOddsLow", "$TransparentBraLowText", TransparentBraOdds_Low, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBraOdds", "$TransparentBraNormalText", TransparentBraOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBraOddsHigh", "$TransparentBraHighText", TransparentBraOdds_High, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentUnderwearOddsLow", "$TransparentUnderwearLowText", TransparentUnderwearOdds_Low, "{0}%", 0)
		AddSliderOptionST("AND_TransparentUnderwearOdds", "$TransparentUnderwearNormalText", TransparentUnderwearOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentUnderwearOddsHigh", "$TransparentUnderwearHighText", TransparentUnderwearOdds_High, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentHotpantsOddsLow", "$TransparentHotpantsLowText", TransparentHotpantsOdds_Low, "{0}%", 0)
		AddSliderOptionST("AND_TransparentHotpantsOdds", "$TransparentHotpantsNormalText", TransparentHotpantsOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentHotpantsOddsHigh", "$TransparentHotpantsHighText", TransparentHotpantsOdds_High, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentShowgirlSkirtOddsLow", "$TransparentShowgirlSkirtLowText", TransparentShowgirlSkirtOdds_Low, "{0}%", 0)
		AddSliderOptionST("AND_TransparentShowgirlSkirtOdds", "$TransparentShowgirlSkirtNormalText", TransparentShowgirlSkirtOdds, "{0}%", 0)
		AddSliderOptionST("AND_TransparentShowgirlSkirtOddsHigh", "$TransparentShowgirlSkirtHighText", TransparentShowgirlSkirtOdds_High, "{0}%", 0)
	
	ElseIf (page == "$MaleFlashChancesPage")
		AddHeaderOption("$ChestCurtainText")
		AddSliderOptionST("AND_ChestCurtainLowOddsMale", "$ChestCurtainLowText", TopCurtainOddsLow_Male, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainOddsMale", "$ChestCurtainNormalText", TopCurtainOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainHighOddsMale", "$ChestCurtainHighText", TopCurtainOddsHigh_Male, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainExtremeOddsMale", "$ChestCurtainExtremeText", TopCurtainOddsExtreme_Male, "{0}%", 0)
		AddSliderOptionST("AND_ChestCurtainUltraOddsMale", "$ChestCurtainUltraText", TopCurtainOddsUltra_Male, "{0}%", 0)
		
		AddHeaderOption("$PelvicCurtainText")
		AddSliderOptionST("AND_PelvicCurtainLowOddsMale", "$PelvicCurtainLowText", PelvicCurtainOddsLow_Male, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainOddsMale", "$PelvicCurtainNormalText", PelvicCurtainOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainHighOddsMale", "$PelvicCurtainHighText", PelvicCurtainOddsHigh_Male, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainExtremeOddsMale", "$PelvicCurtainExtremeText", PelvicCurtainOddsExtreme_Male, "{0}%", 0)
		AddSliderOptionST("AND_PelvicCurtainUltraOddsMale", "$PelvicCurtainUltraText", PelvicCurtainOddsUltra_Male, "{0}%", 0)
		
		AddHeaderOption("$AssCurtainText")
		AddSliderOptionST("AND_AssCurtainLowOddsMale", "$AssCurtainLowText", AssCurtainOddsLow_Male, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainOddsMale", "$AssCurtainNormalText", AssCurtainOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainHighOddsMale", "$AssCurtainHighText", AssCurtainOddsHigh_Male, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainExtremeOddsMale", "$AssCurtainExtremeText", AssCurtainOddsExtreme_Male, "{0}%", 0)
		AddSliderOptionST("AND_AssCurtainUltraOddsMale", "$AssCurtainUltraText", AssCurtainOddsUltra_Male, "{0}%", 0)
		
		AddHeaderOption("$BananaHammockText")
		AddSliderOptionST("AND_CStringOddsMale", "$BananaHammockText", CStringOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentCStringOddsLowMale", "$TransparentBananaHammockLowText", TransparentCStringOdds_Low_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentCStringOddsMale", "$TransparentBananaHammockNormalText", TransparentCStringOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentCStringOddsHighMale", "$TransparentBananaHammockHighText", TransparentCStringOdds_High_Male, "{0}%", 0)
		
		SetCursorPosition(1)
		AddHeaderOption("$TransparentChestCurtainHeader")
		AddSliderOptionST("AND_TransparentChestCurtainLowOddsMale", "$TransparentChestCurtainLowText", TransparentTopCurtainOddsLow_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainOddsMale", "$TransparentChestCurtainNormalText", TransparentTopCurtainOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainHighOddsMale", "$TransparentChestCurtainHighText", TransparentTopCurtainOddsHigh_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainExtremeOddsMale", "$TransparentChestCurtainExtremeText", TransparentTopCurtainOddsExtreme_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentChestCurtainUltraOddsMale", "$TransparentChestCurtainUltraText", TransparentTopCurtainOddsUltra_Male, "{0}%", 0)
		
		AddHeaderOption("$TransparentPelvicCurtainHeader")
		AddSliderOptionST("AND_TransparentPelvicCurtainLowOddsMale", "$TransparentPelvicCurtainLowText", TransparentPelvicCurtainOddsLow_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainOddsMale", "$TransparentPelvicCurtainNormalText", TransparentPelvicCurtainOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainHighOddsMale", "$TransparentPelvicCurtainHighText", TransparentPelvicCurtainOddsHigh_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainExtremeOddsMale", "$TransparentPelvicCurtainExtremeText", TransparentPelvicCurtainOddsExtreme_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentPelvicCurtainUltraOddsMale", "$TransparentPelvicCurtainUltraText", TransparentPelvicCurtainOddsUltra_Male, "{0}%", 0)
		
		AddHeaderOption("$TransparentAssCurtainHeader")
		AddSliderOptionST("AND_TransparentAssCurtainLowOddsMale", "$TransparentAssCurtainLowText", TransparentAssCurtainOddsLow_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainOddsMale", "$TransparentAssCurtainNormalText", TransparentAssCurtainOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainHighOddsMale", "$TransparentAssCurtainHighText", TransparentAssCurtainOddsHigh_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainExtremeOddsMale", "$TransparentAssCurtainExtremeText", TransparentAssCurtainOddsExtreme_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentAssCurtainUltraOddsMale", "$TransparentAssCurtainUltraText", TransparentAssCurtainOddsUltra_Male, "{0}%", 0)
		
		AddHeaderOption("$TransparentClothesHeader")
		AddSliderOptionST("AND_TransparentTopArmorOddsLowMale", "$TransparentArmorTopLowText", TransparentTopArmorOdds_Low_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentTopArmorOddsMale", "$TransparentArmorTopNormalText", TransparentTopArmorOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentTopArmorOddsHighMale", "$TransparentArmorTopHighText", TransparentTopArmorOdds_High_Male, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentBottomArmorOddsLowMale", "$TransparentArmorBottomLowText", TransparentBottomArmorOdds_Low_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBottomArmorOddsMale", "$TransparentArmorBottomNormalText", TransparentBottomArmorOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBottomArmorOddsHighMale", "$TransparentArmorBottomHighText", TransparentBottomArmorOdds_High_Male, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentBraOddsLowMale", "$TransparentBraLowText", TransparentBraOdds_Low_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBraOddsMale", "$TransparentBraNormalText", TransparentBraOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentBraOddsHighMale", "$TransparentBraHighText", TransparentBraOdds_High_Male, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentUnderwearOddsLowMale", "$TransparentUnderwearLowText", TransparentUnderwearOdds_Low_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentUnderwearOddsMale", "$TransparentUnderwearNormalText", TransparentUnderwearOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentUnderwearOddsHighMale", "$TransparentUnderwearHighText", TransparentUnderwearOdds_High_Male, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentHotpantsOddsLowMale", "$TransparentHotpantsLowText", TransparentHotpantsOdds_Low_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentHotpantsOddsMale", "$TransparentHotpantsNormalText", TransparentHotpantsOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentHotpantsOddsHighMale", "$TransparentHotpantsHighText", TransparentHotpantsOdds_High_Male, "{0}%", 0)
		
		AddSliderOptionST("AND_TransparentShowgirlSkirtOddsLowMale", "$TransparentHimboSkirtLowText", TransparentShowgirlSkirtOdds_Low_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentShowgirlSkirtOddsMale", "$TransparentHimboSkirtNormalText", TransparentShowgirlSkirtOdds_Male, "{0}%", 0)
		AddSliderOptionST("AND_TransparentShowgirlSkirtOddsHighMale", "$TransparentHimboSkirtHighText", TransparentShowgirlSkirtOdds_High_Male, "{0}%", 0)
	ElseIf (page == "$NakedCommentsPage")
		AddToggleOptionST("AND_DisableNakedCommentsState", "$DisableNakedCommentsText", DisableNakedComments, 0)
		AddEmptyOption()
		AddSliderOptionST("AND_NudeFactionCommentChanceState", "$NudeFactionCommentChanceText", NudeFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		AddSliderOptionST("AND_ToplessFactionCommentChanceState", "$ToplessFactionCommentChanceText", ToplessFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		AddSliderOptionST("AND_BottomlessFactionCommentChanceState", "$BottomlessFactionCommentChanceText", BottomlessFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		AddSliderOptionST("AND_ChestFactionCommentChanceState", "$ChestFactionCommentChanceText", ChestFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		AddSliderOptionST("AND_GenitalsFactionCommentChanceState", "$GenitalsFactionCommentChanceText", GenitalsFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		AddSliderOptionST("AND_AssFactionCommentChanceState", "$AssFactionCommentChanceText", AssFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		AddSliderOptionST("AND_BraFactionCommentChanceState", "$BraFactionCommentChanceText", BraFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		AddSliderOptionST("AND_UnderwearFactionCommentChanceState", "$UnderwearFactionCommentChanceText", UnderwearFactionCommentChance, "{0}%", DisabledIf(DisableNakedComments == True))
		
		SetCursorPosition(1)
		AddTextOptionST("AND_NakedCommentChanceState", "$CurrentNakedCommentChanceText", Main.NakedCommentChance(True) as String + "%", 0)
	
	ElseIf (page == "$DynamicModestyPage") ;Page 9
		If Main.DFFMA_Found == True || Main.EnableDynamicModesty == True
			
			Int ModestyRank = (PlayerRef.GetFactionRank(Main.ModestyFaction) as Int)
			Int TopModestyRank = (PlayerRef.GetFactionRank(Main.TopModestyFaction) as Int)
			Int BottomModestyRank = (PlayerRef.GetFactionRank(Main.BottomModestyFaction) as Int)
			
			AddHeaderOption("$ModestySettingsHeader")
			Page9ToggleID[0] = AddToggleOption("$EnableModesty", UseDynamicModesty, DisabledIf(HardcoreLockdown == True))
			Page9ToggleID[1] = AddToggleOption("$StrictRules", StrictModestyRules, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			Page9ToggleID[2] = AddToggleOption("$ModestyCorruptionText", ModestyCorruption, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			Page9ToggleID[3] = AddToggleOption("$PermanentShamelessText", PermanentShameless, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			Page9ToggleID[4] = AddToggleOption("$HardcoreMode", UseHardcoreModesty, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			AddSliderOptionST("AND_MinimumRankState", "$MinimumRank", MinimumModestyRank, "{0}", DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || StrictModestyRules == False))
			Page9SliderID[0] = AddSliderOption("$MinimumTopModestyRankText", MinimumTopModestyRank, "{0}", DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || StrictModestyRules == True))
			Page9SliderID[1] = AddSliderOption("$MinimumBottomModestyRankText", MinimumBottomModestyRank, "{0}", DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || StrictModestyRules == True))
			AddSliderOptionST("AND_ModestyUpgradeTimeState", "$ImmodestyTime", ImmodestyTimeNeeded, "{0}", DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			AddSliderOptionST("AND_ModestyArousalThresholdState", "$ArousalCutoff", ModestyArousalThreshold.GetValue(), "{0}", DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			
			If StrictModestyRules == True
				Page9ToggleID[5] = AddToggleOption("$JumpRank1", Rank1Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[6] = AddToggleOption("$JumpRank2", Rank2Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[7] = AddToggleOption("$JumpRank3", Rank3Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[8] = AddToggleOption("$JumpRank4", Rank4Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[9] = AddToggleOption("$JumpRank5", Rank5Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[10] = AddToggleOption("$JumpRank6", Rank6Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
			Else
				Page9ToggleID[11] = AddToggleOption("$JumpTopRank1", TopRank1Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[12] = AddToggleOption("$JumpTopRank2", TopRank2Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[13] = AddToggleOption("$JumpTopRank3", TopRank3Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[14] = AddToggleOption("$JumpBottomRank1", BottomRank1Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[15] = AddToggleOption("$JumpBottomRank2", BottomRank2Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
				Page9ToggleID[16] = AddToggleOption("$JumpBottomRank3", BottomRank3Jump, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True || ModestyManager.UpgradeBlocked == True))
			EndIf
			Page9ToggleID[17] = AddToggleOption("$ResetModestyText", ResetModesty, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			Page9ToggleID[18] = AddToggleOption("$RandomizePlayerText", RandomizePlayer, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			AddMenuOptionST("AND_PlayerConfidence_State", "$PlayerConfidenceText", PlayerConfidence, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			Page9ToggleID[19] = AddToggleOption("$ModestyMonologueText", ModestyMonologue, DisabledIf(UseDynamicModesty == False))
			Page9ToggleID[20] = AddToggleOption("$ModestyMessageboxText", ModestyMessagebox, DisabledIf(UseDynamicModesty == False))
			Page9MenuID[0] = AddMenuOption("$ShyWhenSeen", ShySex, DisabledIf(UseDynamicModesty == False || HardcoreLockdown == True))
			
			SetCursorPosition(1)
			
			If StrictModestyRules == True
				AddHeaderOption("$CurrentModestyHeader")
				AddTextOption("$ModestyRank", ModestyRank as String)
				AddTextOption("$ModestyTitle", ModestyManager.ModestyTitle[ModestyRank])
				
				AddHeaderOption("$ModestyTimer")
				If PlayerRef.GetFactionRank(Main.ModestyFaction) <= 0
					AddTextOption("$Modest", ModestyManager.ModestyTimer[0])
				ElseIf PlayerRef.GetFactionRank(Main.ModestyFaction) == 1
					AddTextOption("$Reasonable", ModestyManager.ModestyTimer[1])
				ElseIf PlayerRef.GetFactionRank(Main.ModestyFaction) == 2
					AddTextOption("$Relaxed", ModestyManager.ModestyTimer[2])
				ElseIf PlayerRef.GetFactionRank(Main.ModestyFaction) == 3
					AddTextOption("$Comfortable", ModestyManager.ModestyTimer[3])
				ElseIf PlayerRef.GetFactionRank(Main.ModestyFaction) == 4
					AddTextOption("$Tease", ModestyManager.ModestyTimer[4])
				ElseIf PlayerRef.GetFactionRank(Main.ModestyFaction) == 5
					AddTextOption("$Brazen", ModestyManager.ModestyTimer[5])
				ElseIf PlayerRef.GetFactionRank(Main.ModestyFaction) >= 6
					AddTextOption("$Shameless", ModestyManager.ModestyTimer[6])
				EndIf
			Else
				AddHeaderOption("$TopModestyHeader")
				AddTextOption("$TopModestyRank", TopModestyRank as String)
				AddTextOption("$TopModestyTitle", ModestyManager.TopModestyTitle[TopModestyRank])
				AddHeaderOption("$TopModestyTimer")
				If TopModestyRank <= 0
					AddTextOption("$Shy", ModestyManager.TopModestyTimer[0])
				ElseIf TopModestyRank == 1
					AddTextOption("$Comfortable", ModestyManager.TopModestyTimer[1])
				ElseIf TopModestyRank == 2
					AddTextOption("$Bold", ModestyManager.TopModestyTimer[2])
				ElseIf TopModestyRank >= 3
					AddTextOption("$Shameless", ModestyManager.TopModestyTimer[3])
				EndIf
				AddHeaderOption("$BottomModestyHeader")
				AddTextOption("$BottomModestyRank", BottomModestyRank as String)
				AddTextOption("$BottomModestyTitle", ModestyManager.BottomModestyTitle[BottomModestyRank])
				AddHeaderOption("$BottomModestyTimer")
				If BottomModestyRank <= 0
					AddTextOption("$Shy", ModestyManager.BottomModestyTimer[0])
				ElseIf BottomModestyRank == 1
					AddTextOption("$Comfortable", ModestyManager.BottomModestyTimer[1])
				ElseIf BottomModestyRank == 2
					AddTextOption("$Bold", ModestyManager.BottomModestyTimer[2])
				ElseIf BottomModestyRank >= 3
					AddTextOption("$Shameless", ModestyManager.BottomModestyTimer[3])
				EndIf
			EndIf
		Else
			AddTextOption("$ModestyDisabled", None)
		EndIf
	ElseIf (page == "$NPCModestyPage") ;Page 10
		If (Main.DFFMA_Found == False && Main.EnableDynamicModesty == False) || UseDynamicModesty == False
			AddTextOption("$ModestyDisabled", None)
		Else
			AddHeaderOption("$AllNPCHeader")
			
			Page10MenuID[0] = AddMenuOption("$NPCShyWhenSeen", NPCShySex, 0)
			Page10SliderID[0] = AddSliderOption("$NPCArousalCutoff", NPCModestyArousalThreshold.GetValue(), "{0}", 0)
			If ResetNPCs == False
				Page10ToggleID[0] = AddToggleOption("$ResetAllNPC", ResetNPCs, DisabledIf(NPCModesty.TrackedFemales < 1 || DeleteNPCs == True))
			Else
				Page10ToggleID[1] = AddToggleOption("$ResetAllNPCConfirm", ConfirmSelection, 0)
			EndIf
			
			If DeleteNPCs == False
				Page10ToggleID[2] = AddToggleOption("$DeleteAllNPC", DeleteNPCs, DisabledIf(NPCModesty.TrackedFemales < 1 || ResetNPCs == True))
			Else
				Page10ToggleID[3] = AddToggleOption("$DeleteAllNPCConfirm", ConfirmSelection, 0)
			EndIf
			
			AddHeaderOption("$AllFollowerHeader")
			Page10ToggleID[4] = AddToggleOption("$FollowersAreDynamic", DynamicFollowers, 0)
			Page10ToggleID[5] = AddToggleOption("$FollowerPermanentShamelessText", NPCPermanentShameless, DisabledIf(DynamicFollowers == False))
			Page10ToggleID[6] = AddToggleOption("$FollowerCorruption", NPCModestyCorruption, DisabledIf(DynamicFollowers == False))
			
			SetCursorPosition(1)
			
			AddHeaderOption("$TrackedFemalesHeader")
			Page10MenuID[1] = AddMenuOption("$SelectedFemaleText", SelectedFemale, 0)
			
			Page10ToggleID[7] = AddToggleOption("$PersistentFemale", MakeFemalePermanent, DisabledIf(SelectedFemale == "---" || SelectedFemale == "" || DeleteFemale == True || ResetFemaleModesty == True || PermFemales.Find(SelectedFemale) >= 0))
			Page10ToggleID[8] = AddToggleOption("$PersistentFemaleConfirm", ConfirmSelection, DisabledIf(MakeFemalePermanent == False))
			
			Page10ToggleID[9] = AddToggleOption("$DeleteFemale", DeleteFemale, DisabledIf(SelectedFemale == "---" || SelectedFemale == "" || ResetFemaleModesty == True || MakeFemalePermanent == True))
			Page10ToggleID[10] = AddToggleOption("$DeleteFemaleConfirm", ConfirmSelection, DisabledIf(DeleteFemale == False))
		
			Page10ToggleID[11] = AddToggleOption("$ResetFemale", ResetFemaleModesty, DisabledIf(SelectedFemale == "---" || SelectedFemale == "" || DeleteFemale == True || MakeFemalePermanent == True))
			Page10ToggleID[12] = AddToggleOption("$ResetFemaleConfirm", ConfirmSelection, DisabledIf(ResetFemaleModesty == False))
			
			Page10SliderID[1] = AddSliderOption("$NPCStrictRank", ThisNPCStrictRank, "{0}", DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10SliderID[2] = AddSliderOption("$NPCMinStrictRank", ThisNPCMinimumStrictRank, "{0}", DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10SliderID[3] = AddSliderOption("$NPCTopRank", ThisNPCTopRank, "{0}", DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10SliderID[4] = AddSliderOption("$NPCMinTopRank", ThisNPCMinimumTopRank, "{0}", DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10SliderID[5] = AddSliderOption("$NPCBottomRank", ThisNPCBottomRank, "{0}", DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10SliderID[6] = AddSliderOption("$NPCMinBottomRank", ThisNPCMinimumBottomRank, "{0}", DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10ToggleID[13] = AddToggleOption("$ThisNPCPermanentShamelessText", ThisNPCPermanentShameless, DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10ToggleID[14] = AddToggleOption("$NPCIsCorrupted", ThisNPCCorrupt, DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10MenuID[2] = AddMenuOption("$ShyWhenSeen", NPCShyTweak, DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10ToggleID[15] = AddToggleOption("$ApplyRankTweak", ApplyTweak, DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10ToggleID[16] = AddToggleOption("$ApplyRankTweakAsDefault", ApplyAsDefault, DisabledIf(SelectedFemale == "---" || SelectedFemale == ""))
			Page10ToggleID[17] = AddToggleOption("$ApplyRankTweakConfirm", ConfirmSelection, DisabledIf(ApplyTweak == False))
			
			AddHeaderOption("$PersistentFemaleHeader")
			Page10MenuID[3] = AddMenuOption("$SelectedFemaleText", SelectedPermFemale, 0)
			
			If DeletePermFemale == False
				Page10ToggleID[18] = AddToggleOption("$RemovePersistence", DeletePermFemale, DisabledIf(SelectedPermFemale == "---" || SelectedPermFemale == ""))
			Else
				Page10ToggleID[19] = AddToggleOption("$RemovePersistenceConfirm", ConfirmSelection, 0)
			EndIf
		EndIf
	ElseIf (page == "$FlashKeys")
		AddHeaderOption("$FlashKeysHeader")
		Page11KeyID[0] = AddKeyMapOption("$FlashChestCurtainText", FlashKey[0], OPTION_FLAG_WITH_UNMAP)
		Page11KeyID[1] = AddKeyMapOption("$FlashPelvicCurtainText", FlashKey[1], OPTION_FLAG_WITH_UNMAP)
		Page11KeyID[2] = AddKeyMapOption("$FlashAssCurtainText", FlashKey[2], OPTION_FLAG_WITH_UNMAP)
		
		AddEmptyOption()
		
		Page11ToggleID[0] = AddToggleOption("$ResetFlashKeybindsText", ConfirmSelection, 0)
		Page11ToggleID[1] = AddToggleOption("$ClearFlashKeybindsText", ConfirmSelection, 0)
		SetCursorPosition(1)
		
		AddHeaderOption("$FixKeysHeader")
		Page11KeyID[3] = AddKeyMapOption("$FixChestCurtainText", FlashKey[3], OPTION_FLAG_WITH_UNMAP)
		Page11KeyID[4] = AddKeyMapOption("$FixPelvicCurtainText", FlashKey[4], OPTION_FLAG_WITH_UNMAP)
		Page11KeyID[5] = AddKeyMapOption("$FixAssCurtainText", FlashKey[5], OPTION_FLAG_WITH_UNMAP)
		
		AddEmptyOption()
		
		Page11ToggleID[2] = AddToggleOption("$ResetFixKeybindsText", ConfirmSelection, 0)
		Page11ToggleID[3] = AddToggleOption("$ClearFixKeybindsText", ConfirmSelection, 0)
	ElseIf (page == "$DebugPage")
		AddHeaderOption("$LoggingHeader")
		Page12ToggleID[0] = AddToggleOption("$EnableLogging", Logging, 0)
		Page12SliderID[0] = AddSliderOption("$LoggingLevel", LoggingLevel, "{0}", DisabledIf(Logging == False))
		Page12ToggleID[1] = AddToggleOption("$DataDump", ConfirmSelection, 0)
	EndIf
EndEvent

Int Function DisabledIf(Bool Condition)
	If (Condition)
		return OPTION_FLAG_DISABLED
	Else
		return 0
	EndIf
EndFunction

Bool Function ShowConfirmationDialog(String Text)
	return ShowMessage(Text, True)
EndFunction

Event OnOptionKeyMapChange(Int Option, Int KeyCode, String ConflictControl, String ConflictName)
	AND_Logger.FastLog("<MCM> [OnOptionKeyMapChange] KeyCode is " + KeyCode)
	AND_Logger.FastLog("<MCM> [OnOptionKeyMapChange] ConflictControl is " + ConflictControl)
	AND_Logger.FastLog("<MCM> [OnOptionKeyMapChange] ConflictName is " + ConflictName)
	If (KeyCode != 1 && ConflictControl != "" && !ShowConfirmationDialog("$AND_KeyAlreadyInUse"))
		return
	ElseIf KeyCode == 1
		KeyCode = -1
	EndIf
	
	If Option == Page11KeyID[0]
		FlashKey[0] = KeyCode
		Keybinds.UpdateRegister(0)
		SetKeymapOptionValue(Option, KeyCode)
	ElseIf Option == Page11KeyID[1]
		FlashKey[1] = KeyCode
		Keybinds.UpdateRegister(1)
		SetKeymapOptionValue(Option, KeyCode)
	ElseIf Option == Page11KeyID[2]
		FlashKey[2] = KeyCode
		Keybinds.UpdateRegister(2)
		SetKeymapOptionValue(Option, KeyCode)
	ElseIf Option == Page11KeyID[3]
		FlashKey[3] = KeyCode
		Keybinds.UpdateRegister(3)
		SetKeymapOptionValue(Option, KeyCode)
	ElseIf Option == Page11KeyID[4]
		FlashKey[4] = KeyCode
		Keybinds.UpdateRegister(4)
		SetKeymapOptionValue(Option, KeyCode)
	ElseIf Option == Page11KeyID[5]
		FlashKey[5] = KeyCode
		Keybinds.UpdateRegister(5)
		SetKeymapOptionValue(Option, KeyCode)
	EndIf
EndEvent

Event OnOptionHighlight(Int Option)
		;=========================
		;---TOGGLES---
		;=========================
	If Option == Page9ToggleID[0] ;UseDynamicModesty
		SetInfoText("$DynamicModestyInfoText")
	ElseIf Option == Page9ToggleID[1] ;StrictModestyRules
		SetInfoText("$StrictModestyInfoText")
	ElseIf Option == Page9ToggleID[2] ;Corruption
		SetInfoText("$CorruptionInfoText")
	ElseIf Option == Page9ToggleID[3] ;Permanent Shameless
		SetInfoText("$PermanentShamelessInfoText")
	ElseIf Option == Page9ToggleID[4] ;Hardcore
		SetInfoText("$HardcoreInfoText")
	ElseIf Option == Page9ToggleID[5] ;Rank Jump 1
		SetInfoText("$Rank1JumpInfoText")
	ElseIf Option == Page9ToggleID[6] ;Rank Jump 2
		SetInfoText("$Rank2JumpInfoText")
	ElseIf Option == Page9ToggleID[7] ;Rank Jump 3
		SetInfoText("$Rank3JumpInfoText")
	ElseIf Option == Page9ToggleID[8] ;Rank Jump 4
		SetInfoText("$Rank4JumpInfoText")
	ElseIf Option == Page9ToggleID[9] ;Rank Jump 5
		SetInfoText("$Rank5JumpInfoText")
	ElseIf Option == Page9ToggleID[10] ;Rank Jump 6
		SetInfoText("$Rank6JumpInfoText")
	ElseIf Option == Page9ToggleID[11] ;Top Rank Jump 1
		SetInfoText("$TopRank1JumpInfoText")
	ElseIf Option == Page9ToggleID[12] ;Top Rank Jump 2
		SetInfoText("$TopRank2JumpInfoText")
	ElseIf Option == Page9ToggleID[13] ;Top Rank Jump 3
		SetInfoText("$TopRank3JumpInfoText")
	ElseIf Option == Page9ToggleID[14] ;Bottom Rank Jump 1
		SetInfoText("$BottomRank1JumpInfoText")
	ElseIf Option == Page9ToggleID[15] ;Bottom Rank Jump 2
		SetInfoText("$BottomRank2JumpInfoText")
	ElseIf Option == Page9ToggleID[16] ;Bottom Rank Jump 3
		SetInfoText("$BottomRank3JumpInfoText")
	ElseIf Option == Page9ToggleID[17] ;Reset Modesty
		SetInfoText("$ResetModestyInfoText")
	ElseIf Option == Page9ToggleID[18] ;Randomize Modesty
		SetInfoText("$RandomizeModestyInfoText")
	ElseIf Option == Page9ToggleID[19] ;Modesty Monologue
		SetInfoText("$ModestyMonologueInfoText")
	ElseIf Option == Page9ToggleID[20] ;Modesty Monologue
		SetInfoText("$ModestyMessageboxInfoText")
		
		;=========================
		;END PAGE 9
		;=========================
		
	ElseIf Option == Page10ToggleID[0] ;Reset All NPCs
		SetInfoText("$ResetAllNPCInfoText")
	ElseIf Option == Page10ToggleID[1] ;Reset All NPCs Confirm
		SetInfoText("$ResetAllNPCInfoText")
	ElseIf Option == Page10ToggleID[2] ;Delete All NPCs
		SetInfoText("$DeleteAllNPCInfoText")
	ElseIf Option == Page10ToggleID[3] ;Delete All NPCs Confirm
		SetInfoText("$DeleteAllNPCInfoText")
	ElseIf Option == Page10ToggleID[4] ;Dynamic Followers
		SetInfoText("$DynamicFollowerInfoText")
	ElseIf Option == Page10ToggleID[5] ;NPC Permanent Shameless
		SetInfoText("$NPCPermanentShamelessInfoText")
	ElseIf Option == Page10ToggleID[6] ;NPC Corruption
		SetInfoText("$NPCCorruptionInfoText")
	ElseIf Option == Page10ToggleID[7] ;Permanent Female
		SetInfoText("$PermanentFemaleInfoText")
	ElseIf Option == Page10ToggleID[8] ;Permanent Female Confirm
		SetInfoText("$PermanentFemaleInfoText")
	ElseIf Option == Page10ToggleID[9] ;Delete Female
		SetInfoText("$DeleteFemaleInfoText")
	ElseIf Option == Page10ToggleID[10] ;Delete Female Confirm
		SetInfoText("$DeleteFemaleInfoText")
	ElseIf Option == Page10ToggleID[11] ;Reset Female
		SetInfoText("$ResetFemaleInfoText")
	ElseIf Option == Page10ToggleID[12] ;Reset Female Confirm
		SetInfoText("$ResetFemaleInfoText")
	ElseIf Option == Page10ToggleID[13] ;Allow This NPC to gain permanent shameless
		SetInfoText("$ThisNPCPermanentShamelessInfoText")
	ElseIf Option == Page10ToggleID[14] ;This NPC is Corrupted
		SetInfoText("$ThisNPCCorruptInfoText")
	ElseIf Option == Page10ToggleID[15] ;Apply Ranks
		SetInfoText("$ApplyRanksInfoText")
	ElseIf Option == Page10ToggleID[16] ;Apply Ranks as Default
		SetInfoText("$ApplyAsDefaultInfoText")
	ElseIf Option == Page10ToggleID[17] ;Apply Ranks Confirm
		SetInfoText("$ApplyRanksConfirmInfoText")
	ElseIf Option == Page10ToggleID[18] ;Delete Perm Female
		SetInfoText("$DeletePermFemaleInfoText")
	ElseIf Option == Page10ToggleID[19] ;Delete Perm Female Confirm
		SetInfoText("$DeletePermFemaleInfoText")
		
		;=========================
		;END PAGE 10
		;=========================
	ElseIf Option == Page11KeyID[0]
		SetInfoText("$FlashChestCurtainInfoText")
	ElseIf Option == Page11KeyID[1]
		SetInfoText("$FlashPelvicCurtainInfoText")
	ElseIf Option == Page11KeyID[2]
		SetInfoText("$FlashAssCurtainInfoText")
	ElseIf Option == Page11KeyID[3]
		SetInfoText("$FixChestCurtainInfoText")
	ElseIf Option == Page11KeyID[4]
		SetInfoText("$FixPelvicCurtainInfoText")
	ElseIf Option == Page11KeyID[5]
		SetInfoText("$FixAssCurtainInfoText")
		
	ElseIf Option == Page11ToggleID[0]
		SetInfoText("$ResetFlashKeybindsInfoText")
	ElseIf Option == Page11ToggleID[1]
		SetInfoText("$ClearFlashKeybindsInfoText")
	ElseIf Option == Page11ToggleID[2]
		SetInfoText("$ResetFixKeybindsInfoText")
	ElseIf Option == Page11ToggleID[3]
		SetInfoText("$ClearFixKeybindsInfoText")
		;=========================
		;END PAGE 11
		;=========================
		
	ElseIf Option == Page12ToggleID[0] ;Enable Logging
		SetInfoText("$EnableLoggingInfoText")
	ElseIf Option == Page12ToggleID[1] ;Data Dump
		SetInfoText("$DataDumpInfoText")
		;=========================
		;---SLIDERS---
		;=========================
	ElseIf Option == Page9SliderID[0] ;Minimum Top Modesty
		SetInfoText("$MinimumTopModestyInfoText")
	ElseIf Option == Page9SliderID[1] ;Minimum Bottom Modesty
		SetInfoText("$MinimumBottomModestyInfoText")
		;=========================
		;END PAGE 9
		;=========================
		
	ElseIf Option == Page10SliderID[0] ;NPC Arousal Cutoff
		SetInfoText("$NPCArousalCutoffInfoText")
	ElseIf Option == Page10SliderID[1] ;Tweak Strict Rank
		SetInfoText("$TweakStrictRankInfoText")
	ElseIf Option == Page10SliderID[2] ;Tweak Minimum Strict Rank
		SetInfoText("$TweakMinStrictRankInfoText")
	ElseIf Option == Page10SliderID[3] ;Tweak Top Rank
		SetInfoText("$TweakTopRankInfoText")
	ElseIf Option == Page10SliderID[4] ;Tweak Minimum Top Rank
		SetInfoText("$TweakMinTopRankInfoText")
	ElseIf Option == Page10SliderID[5] ;Tweak Bottom Rank
		SetInfoText("$TweakBottomRankInfoText")
	ElseIf Option == Page10SliderID[6] ;Tweak Minimum Bottom Rank
		SetInfoText("$TweakMinBottomRankInfoText")
		;=========================
		;END PAGE 10
		;=========================
	
	ElseIf Option == Page12SliderID[0]
		SetInfoText("$LoggingLevelInfoText")
		;=========================
		;---MENUS---
		;=========================
	ElseIf Option == Page9MenuID[0] ;Select Shy Sex (PC)
		SetInfoText("SelectShySexInfoText")
		
		;=========================
		;END PAGE 9
		;=========================
		
	ElseIf Option == Page10MenuID[0] ;NPC Shy Sex
		SetInfoText("$NPCSelectShySexInfoText")
	ElseIf Option == Page10MenuID[1] ;Selected Female
		SetInfoText("$SelectedFemaleInfoText")
	ElseIf Option == Page10MenuID[2] ;NPC Shy Sex Tweak
		SetInfoText("$NPCSelectShySexTweakInfoText")
	ElseIf Option == Page10MenuID[3] ;Selected Permanent Female
		SetInfoText("$SelectedPermFemaleInfoText")
		
		;=========================
		;END PAGE 10
		;=========================
	EndIf
EndEvent

Event OnOptionSliderOpen(Int Option)
	Float StartValue
	Float RangeMin
	Float RangeMax
	Float Interval
	Float DefaultValue
	If Option == Page9SliderID[0]
		StartValue = MinimumTopModestyRank
		RangeMin = 0
		RangeMax = 3
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page9SliderID[1]
		StartValue = MinimumBottomModestyRank
		RangeMin = 0
		RangeMax = 3
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page10SliderID[0]
		StartValue = NPCModestyArousalThreshold.GetValue()
		RangeMin = 0
		RangeMax = 101
		Interval = 1
		DefaultValue = 70
	ElseIf Option == Page10SliderID[1]
		StartValue = ThisNPCStrictRank
		RangeMin = 0
		RangeMax = 6
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page10SliderID[2]
		StartValue = ThisNPCMinimumStrictRank
		RangeMin = 0
		RangeMax = 6
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page10SliderID[3]
		StartValue = ThisNPCTopRank
		RangeMin = 0
		RangeMax = 3
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page10SliderID[4]
		StartValue = ThisNPCMinimumTopRank
		RangeMin = 0
		RangeMax = 3
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page10SliderID[5]
		StartValue = ThisNPCBottomRank
		RangeMin = 0
		RangeMax = 3
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page10SliderID[6]
		StartValue = ThisNPCMinimumBottomRank
		RangeMin = 0
		RangeMax = 3
		Interval = 1
		DefaultValue = 0
	ElseIf Option == Page12SliderID[0]
		StartValue = LoggingLevel
		RangeMin = 0
		RangeMax = 2
		Interval = 1
		DefaultValue = 1
	EndIf
	
	SetSliderDialogStartValue(StartValue)
	SetSliderDialogDefaultValue(StartValue)
	SetSliderDialogRange(RangeMin, RangeMax)
	SetSliderDialogInterval(Interval)
EndEvent

Event OnOptionSliderAccept(Int Option, Float Value)
	If Option == Page9SliderID[0]
		MinimumTopModestyRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page9SliderID[1]
		MinimumBottomModestyRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page10SliderID[0]
		NPCModestyArousalThreshold.SetValue(Value)
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page10SliderID[1]
		ThisNPCStrictRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page10SliderID[2]
		ThisNPCMinimumStrictRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page10SliderID[3]
		ThisNPCTopRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page10SliderID[4]
		ThisNPCMinimumTopRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page10SliderID[5]
		ThisNPCBottomRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page10SliderID[6]
		ThisNPCMinimumBottomRank = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
	ElseIf Option == Page12SliderID[0]
		LoggingLevel = Value as Int
		SetSliderOptionValue(Option, Value, "{0}", False)
		AND_Logger.SetLogLevel(LoggingLevel)
		AND_Logger.FastLog("<MCM> [OnOptionSliderAccept] - LoggingLevel set to " + LoggingLevel, Logger.CRITICAL)
		ForcePageReset()
	EndIf
EndEvent

Event OnOptionMenuOpen(Int Option)
	String[] Texts
	Int StartIndex
	If Option == Page9MenuID[0]
		Texts = Sexes
		StartIndex = 0
	ElseIf Option == Page10MenuID[0]
		Texts = NPCSexes
		StartIndex = 0
	ElseIf Option == Page10MenuID[1]
		Texts = DisplayFemaleName
		StartIndex = DisplayIndex
	ElseIf Option == Page10MenuID[2]
		Texts = Sexes
		StartIndex = 0
	ElseIf Option == Page10MenuID[3]
		Texts = PermFemales
		StartIndex = PermIndex
	EndIf
	SetMenuDialogOptions(Texts)
	SetMenuDialogStartIndex(StartIndex)
	SetMenuDialogDefaultIndex(0)
EndEvent

Event OnOptionMenuAccept(Int Option, Int Index)
	String[] Texts
	If Option == Page9MenuID[0]
		Texts = Sexes
		ShySex = Sexes[Index]
		
		If Index == 0
			PlayerRef.SetFactionRank(Main.ShyWithMale, 1)
			PlayerRef.SetFactionRank(Main.ShyWithFemale, 0)
		ElseIf Index == 1
			PlayerRef.SetFactionRank(Main.ShyWithMale, 0)
			PlayerRef.SetFactionRank(Main.ShyWithFemale, 1)
		ElseIf Index == 2
			PlayerRef.SetFactionRank(Main.ShyWithMale, 1)
			PlayerRef.SetFactionRank(Main.ShyWithFemale, 1)
		EndIf
		
		;=============
		;END PAGE 9
		;=============
		
	ElseIf Option == Page10MenuID[0]
		Texts = NPCSexes
		NPCShySex = NPCSexes[Index]
	ElseIf Option == Page10MenuID[1]
		Texts = DisplayFemaleName
		DisplayIndex = Index
		MakeFemalePermanent = False
		DeleteFemale = False
		DeletePermFemale = False
		
		If DisplayIndex < 0
			DisplayIndex = 0
		EndIf
		
		SelectedFemale = DisplayFemaleName[DisplayIndex]
		SelectedFemaleActor = NPCModesty.FemaleActor[DisplayIndex] as Actor
		
		If SelectedFemale != "---" && SelectedFemale != ""
			AND_Logger.FastLog("<MCM> {NPC Modesty Page} Selected Female Actor is: " + SelectedFemaleActor + " " + SelectedFemale)
			Int FemaleID = NPCModesty.FemaleActor.Find(SelectedFemaleActor)
			Int FemaleIndex = NPCModesty.ShynessMode[FemaleID]
			
			ThisNPCStrictRank = SelectedFemaleActor.GetFactionRank(Main.ModestyFaction) as Float
			ThisNPCMinimumStrictRank = NPCModesty.MinimumRankStrict[FemaleID] as Float
			ThisNPCTopRank = SelectedFemaleActor.GetFactionRank(Main.TopModestyFaction) as Float
			ThisNPCMinimumTopRank = NPCModesty.MinimumRankTop[FemaleID] as Float
			ThisNPCBottomRank = SelectedFemaleActor.GetFactionRank(Main.BottomModestyFaction) as Float
			ThisNPCMinimumBottomRank = NPCModesty.MinimumRankBottom[FemaleID] as Float
			
			ThisNPCPermanentShameless = NPCModesty.AllowPermanentShameless[FemaleID] as Bool
			ThisNPCCorrupt = NPCModesty.FemaleCorruption[FemaleID] as Bool
			
			NPCShyTweak = Sexes[FemaleIndex]
		Else
			ThisNPCStrictRank = 0 as Float
			ThisNPCTopRank = 0 as Float
			ThisNPCBottomRank = 0 as Float
			ThisNPCMinimumStrictRank = 0 as Float
			ThisNPCMinimumTopRank = 0 as Float
			ThisNPCMinimumBottomRank = 0 as Float
			
			ThisNPCPermanentShameless = False
			ThisNPCCorrupt = False
			
			NPCShyTweak = Sexes[0]
		EndIf
		
		ApplyTweak = False
		ApplyAsDefault = False
	ElseIf Option == Page10MenuID[2]
		NPCShyTweak = Sexes[Index]
	ElseIf Option == Page10MenuID[3]
		Texts = PermFemales
		PermIndex = Index
		DeletePermFemale = False
		
		If PermIndex < 0
			PermIndex = 0
		EndIf
		
		SelectedPermFemale = PermFemales[PermIndex]
	EndIf
	ForcePageReset()
EndEvent

Event OnOptionSelect(Int Option)
	If Option == Page9ToggleID[0]
		If UseDynamicModesty == False
			UseDynamicModesty = True
			If StrictModestyRules == True
				AND_DynamicModesty.SetValue(1)
			Else
				AND_DynamicModesty.SetValue(2)
			EndIf
			
			If ModestyManager.RegisteredForUpdate == False
				ModestyManager.RegisterForUpdateGameTime(1.0)
				ModestyManager.RegisteredForUpdate = True
			EndIf
		Else
			UseDynamicModesty = False
			AND_DynamicModesty.SetValue(0)
		EndIf
		SetToggleOptionValue(Option, UseDynamicModesty)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[1]
		If StrictModestyRules == False
			StrictModestyRules = True
			AND_DynamicModesty.SetValue(1)
		Else
			StrictModestyRules = False
			AND_DynamicModesty.SetValue(2)
		EndIf
		SetToggleOptionValue(Option, StrictModestyRules)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[2]
		ModestyCorruption = !ModestyCorruption
		SetToggleOptionValue(Option, ModestyCorruption)
	ElseIf Option == Page9ToggleID[3]
		PermanentShameless = !PermanentShameless
		SetToggleOptionValue(Option, PermanentShameless)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[4]
		UseHardcoreModesty = !UseHardcoreModesty
		SetToggleOptionValue(Option, UseHardcoreModesty)
		
		If UseHardcoreModesty == True
			Debug.MessageBox("WARNING: This will lock all Dynamic Modesty Settings when leaving the MCM! This CANNOT BE UNDONE UNLESS YOU HAVE AN OLDER SAVE TO REVERT TO!!!")
		EndIf
		
		ForcePageReset()
	ElseIf Option == Page9ToggleID[5]
		If Rank1Jump == False
			Rank1Jump = True
			Rank2Jump = False
			Rank3Jump = False
			Rank4Jump = False
			Rank5Jump = False
			Rank6Jump = False
			ResetModesty = False
		Else
			Rank1Jump = False
		EndIf
		SetToggleOptionValue(Option, Rank1Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[6]
		If Rank2Jump == False
			Rank1Jump = False
			Rank2Jump = True
			Rank3Jump = False
			Rank4Jump = False
			Rank5Jump = False
			Rank6Jump = False
			ResetModesty = False
		Else
			Rank2Jump = False
		EndIf
		SetToggleOptionValue(Option, Rank2Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[7]
		If Rank3Jump == False
			Rank1Jump = False
			Rank2Jump = False
			Rank3Jump = True
			Rank4Jump = False
			Rank5Jump = False
			Rank6Jump = False
			ResetModesty = False
		Else
			Rank3Jump = False
		EndIf
		SetToggleOptionValue(Option, Rank3Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[8]
		If Rank4Jump == False
			Rank1Jump = False
			Rank2Jump = False
			Rank3Jump = False
			Rank4Jump = True
			Rank5Jump = False
			Rank6Jump = False
			ResetModesty = False
		Else
			Rank4Jump = False
		EndIf
		SetToggleOptionValue(Option, Rank4Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[9]
		If Rank5Jump == False
			Rank1Jump = False
			Rank2Jump = False
			Rank3Jump = False
			Rank4Jump = False
			Rank5Jump = True
			Rank6Jump = False
			ResetModesty = False
		Else
			Rank5Jump = False
		EndIf
		SetToggleOptionValue(Option, Rank5Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[10]
		If Rank6Jump == False
			Rank1Jump = False
			Rank2Jump = False
			Rank3Jump = False
			Rank4Jump = False
			Rank5Jump = False
			Rank6Jump = True
			ResetModesty = False
		Else
			Rank6Jump = False
		EndIf
		SetToggleOptionValue(Option, Rank6Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[11]
		If TopRank1Jump == False
			TopRank1Jump = True
			TopRank2Jump = False
			TopRank3Jump = False
		Else
			TopRank1Jump = False
		EndIf
		SetToggleOptionValue(Option, TopRank1Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[12]
		If TopRank2Jump == False
			TopRank1Jump = False
			TopRank2Jump = True
			TopRank3Jump = False
		Else
			TopRank2Jump = False
		EndIf
		SetToggleOptionValue(Option, TopRank2Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[13]
		If TopRank3Jump == False
			TopRank1Jump = False
			TopRank2Jump = False
			TopRank3Jump = True
		Else
			TopRank3Jump = False
		EndIf
		SetToggleOptionValue(Option, TopRank3Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[14]
		If BottomRank1Jump == False
			BottomRank1Jump = True
			BottomRank2Jump = False
			BottomRank3Jump = False
		Else
			BottomRank1Jump = False
		EndIf
		SetToggleOptionValue(Option, BottomRank1Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[15]
		If BottomRank2Jump == False
			BottomRank1Jump = False
			BottomRank2Jump = True
			BottomRank3Jump = False
		Else
			BottomRank2Jump = False
		EndIf
		SetToggleOptionValue(Option, BottomRank2Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[16]
		If BottomRank3Jump == False
			BottomRank1Jump = False
			BottomRank2Jump = False
			BottomRank3Jump = True
		Else
			BottomRank3Jump = False
		EndIf
		SetToggleOptionValue(Option, BottomRank3Jump)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[17]
		If ResetModesty == False
			Rank1Jump = False
			Rank2Jump = False
			Rank3Jump = False
			Rank4Jump = False
			Rank5Jump = False
			Rank6Jump = False
			ResetModesty = True
		Else
			ResetModesty = False
		EndIf
		SetToggleOptionValue(Option, ResetModesty)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[18]
		RandomizePlayer = !RandomizePlayer
		SetToggleOptionValue(Option, RandomizePlayer)
		ForcePageReset()
	ElseIf Option == Page9ToggleID[19]
		ModestyMonologue = !ModestyMonologue
		SetToggleOptionValue(Option, ModestyMonologue)
	ElseIf Option == Page9ToggleID[20]
		ModestyMessagebox = !ModestyMessagebox
		SetToggleOptionValue(Option, ModestyMessagebox)
		
		;=============
		;END PAGE 9
		;=============

	ElseIf Option == Page10ToggleID[0]
		ResetNPCs = !ResetNPCs
		SetToggleOptionValue(Option, ResetNPCs)
		ForcePageReset()
	ElseIf Option == Page10ToggleID[1]
		Int ResetFemaleID = NPCModesty.TrackedFemales
		While ResetFemaleID > 0
			NPCModesty.ResetFemale(None, ResetFemaleID)
			ResetFemaleID -= 1
		EndWhile
		ResetNPCs = False
		ForcePageReset()
	ElseIf Option == Page10ToggleID[2]
		DeleteNPCs = !DeleteNPCs
		SetToggleOptionValue(Option, DeleteNPCs)
		ForcePageReset()
	ElseIf Option == Page10ToggleID[3]
		AND_Logger.FastLog("<MCM> {Page10ToggleID[3]} Delete All NPC Data Started")
		Int RemoveFemaleID = NPCModesty.TrackedFemales
		While RemoveFemaleID >= 0
			NPCModesty.RemoveFemale(None, RemoveFemaleID)
			RemoveFemaleID -= 1
		EndWhile
		DisplayFemaleName = Utility.ResizeStringArray(DisplayFemaleName, 1, "---")
		AND_Logger.FastLog("<MCM> {Page10ToggleID[3]} Delete All NPC Data Complete")
		DeleteNPCs = False
		ForcePageReset()
	ElseIf Option == Page10ToggleID[4]
		DynamicFollowers = !DynamicFollowers
		NPCTimerWipeArmed = !NPCTimerWipeArmed
		
		SetToggleOptionValue(Option, DynamicFollowers)
		ForcePageReset()
	ElseIf Option == Page10ToggleID[5]
		NPCPermanentShameless = !NPCPermanentShameless
		SetToggleOptionValue(Option, NPCPermanentShameless)
	ElseIf Option == Page10ToggleID[6]
		NPCModestyCorruption = !NPCModestyCorruption
		SetToggleOptionValue(Option, NPCModestyCorruption)
	ElseIf Option == Page10ToggleID[7]
		MakeFemalePermanent = !MakeFemalePermanent
		SetToggleOptionValue(Option, MakeFemalePermanent)
		ForcePageReset()
	ElseIf Option == Page10ToggleID[8] ;Confirm Make Permanent
		Actor ThisFemaleActor = NPCModesty.FemaleActor[DisplayIndex] as Actor
		
		NPCModesty.AddPermanent(ThisFemaleActor)
		
		Int OldLength = PermFemales.Length
		Int NewLength = OldLength + 1
		PermFemales = Utility.ResizeStringArray(PermFemales, NewLength, "---")
		PermFemales[OldLength] = GetStringValue(NPCModesty.PermJsonName, "Female " + OldLength + " Name")
		
		MakeFemalePermanent = False
		ForcePageReset()
	ElseIf Option == Page10ToggleID[9]
		DeleteFemale = !DeleteFemale
		SetToggleOptionValue(Option, DeleteFemale)
		ForcePageReset()
	ElseIf Option == Page10ToggleID[10] ;Confirm Delete
		Actor ThisFemaleActor = NPCModesty.FemaleActor[DisplayIndex] as Actor
		NPCModesty.RemoveFemale(ThisFemaleActor, DisplayIndex)
		
		Int OldLength = DisplayFemaleName.Length
		Int NewLength = OldLength - 1
		DisplayFemaleName = Utility.ResizeStringArray(DisplayFemaleName, NewLength, "---")
		
		DeleteFemale = False
		ForcePageReset()
	ElseIf Option == Page10ToggleID[11]
		ResetFemaleModesty = !ResetFemaleModesty
		SetToggleOptionValue(Option, ResetFemaleModesty)
		ForcePageReset()
	ElseIf Option == Page10ToggleID[12] ;Confirm Reset
		Actor femaleActor = NPCModesty.FemaleActor[DisplayIndex] as Actor
		NPCModesty.ResetFemale(femaleActor, DisplayIndex)
		ResetFemaleModesty = False
		ForcePageReset()
	ElseIf Option == Page10ToggleID[13]
		ThisNPCPermanentShameless =!ThisNPCPermanentShameless
		SetToggleOptionValue(Option, ThisNPCPermanentShameless)
	ElseIf Option == Page10ToggleID[14]
		ThisNPCCorrupt = !ThisNPCCorrupt
		SetToggleOptionValue(Option, ThisNPCCorrupt)
	ElseIf Option == Page10ToggleID[15]
		ApplyTweak = !ApplyTweak
		SetToggleOptionValue(Option, ApplyTweak)
		ForcePageReset()
	ElseIf Option == Page10ToggleID[16]
		ApplyAsDefault = !ApplyAsDefault
		SetToggleOptionValue(Option, ApplyAsDefault)
	ElseIf Option == Page10ToggleID[17] ;Confirm Tweak
		NPCModesty.TweakFemale(SelectedFemaleActor, DisplayIndex, ThisNPCStrictRank as Int, ThisNPCTopRank as Int, ThisNPCBottomRank as Int, ThisNPCMinimumStrictRank as Int, ThisNPCMinimumTopRank as Int, ThisNPCMinimumBottomRank as Int, ThisNPCPermanentShameless, ThisNPCCorrupt, ApplyAsDefault, StrictNPC, NPCUpgradeBlocked)
		NPCModesty.UpdateShyness(SelectedFemaleActor)
		ApplyTweak = False
		ApplyAsDefault = False
		ForcePageReset()
	ElseIf Option == Page10ToggleID[18]
		DeletePermFemale = !DeletePermFemale
		SetToggleOptionValue(Option, DeletePermFemale)
	ElseIf Option == Page10ToggleID[19] ;Confirm Permanent Removal
		Actor permFemaleActor = GetFormValue(NPCModesty.PermJsonName, PermIndex) as Actor
		NPCModesty.RemovePermFemale(permFemaleActor, PermIndex)
		DeletePermFemale = False
		ForcePageReset()
		
		;=============
		;END PAGE 10
		;=============
		
	ElseIf Option == Page11ToggleID[0] ;Reset Flash Keys
		FlashKey[0] = 26
		FlashKey[1] = 27
		FlashKey[2] = 43
		Keybinds.UpdateRegister(0)
		Keybinds.UpdateRegister(1)
		Keybinds.UpdateRegister(2)
		ForcePageReset()
		
	ElseIf Option == Page11ToggleID[1] ;Clear Flash Keys
		FlashKey[0] = -1
		FlashKey[1] = -1
		FlashKey[2] = -1
		Keybinds.UpdateRegister(0)
		Keybinds.UpdateRegister(1)
		Keybinds.UpdateRegister(2)
		ForcePageReset()
		
	ElseIf Option == Page11ToggleID[2] ;Reset Fix Keys
		FlashKey[3] = 39
		FlashKey[4] = 40
		FlashKey[5] = 28
		Keybinds.UpdateRegister(3)
		Keybinds.UpdateRegister(4)
		Keybinds.UpdateRegister(5)
		ForcePageReset()
		
	ElseIf Option == Page11ToggleID[3] ;Reset Fix Keys
		FlashKey[3] = -1
		FlashKey[4] = -1
		FlashKey[5] = -1
		Keybinds.UpdateRegister(3)
		Keybinds.UpdateRegister(4)
		Keybinds.UpdateRegister(5)
		ForcePageReset()
		
		;=============
		;END PAGE 11
		;=============
		
	ElseIf Option == Page12ToggleID[0]
		Logging = !Logging
		AND_Logger.EnableLogging(Logging)
		SetToggleOptionValue(Option, Logging)
		ForcePageReset()
	ElseIf Option == Page12ToggleID[2]
		NPCModesty.DumpNPCData()
	EndIf
EndEvent

State AND_PlayerConfidence_State
	Event OnMenuOpenST()
		String[] Options = new String[6]
		
		Options[0] = "$Cowardly"
		Options[1] = "$Cautious"
		Options[2] = "$Average"
		Options[3] = "$Brave"
		Options[4] = "$Foolhardy"
		Options[5] = "$Random"
		
		Int StartIndex = Options.Find(PlayerConfidence)
		
		SetMenuDialogOptions(Options)
		SetMenuDialogStartIndex(StartIndex)
		SetMenuDialogDefaultIndex(2)
	EndEvent
	
	Event OnMenuAcceptST(Int AcceptedIndex)
		String[] Options = new String[6]
		
		Options[0] = "$Cowardly"
		Options[1] = "$Cautious"
		Options[2] = "$Average"
		Options[3] = "$Brave"
		Options[4] = "$Foolhardy"
		Options[5] = "$Random"
		
		PlayerConfidence = Options[AcceptedIndex]
		PlayerConfidenceValue = AcceptedIndex
		SetMenuOptionValueST(PlayerConfidence, False, "AND_PlayerConfidence_State")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$PlayerConfidenceInfoText")
	EndEvent
EndState

State AND_ScanNPCToggle_State
	Event OnSelectST()
		If ScanNPC == False
			ScanNPC = True
		Else
			ScanNPC = False
		EndIf
		
		SetToggleOptionValueST(ScanNPC, False, "AND_ScanNPCToggle_State")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$ScanToggleInfoText")
	EndEvent
EndState

State AND_ScanFrequency_State
	Event OnMenuOpenST()
		String[] Options = new String[5]
		
		Options[0] = "$VSScan" ;0.75 Game Time (45 Game Minutes/135 IRL Seconds) - TimeScale Limit: 300
		Options[1] = "$SScan" ;0.5 Game Time (30 Game Minutes/90 IRL Seconds) - TimeScale Limit: 200
		Options[2] = "$NScan" ;0.25 Game Time (15 Game Minutes/45 IRL Seconds) - TimeScale Limit: 100
		Options[3] = "$FScan" ;0.15 Game Time (9 Game Minutes/27 IRL Seconds) - TimeScale Limit: 60
		Options[4] = "$VFScan" ;0.1 Game Time (6 Game Minutes/18 IRL Seconds) - TimeScale Limit: 40
		
		Int StartIndex = Options.Find(ScanFrequency)
		
		SetMenuDialogOptions(Options)
		SetMenuDialogStartIndex(StartIndex)
		SetMenuDialogDefaultIndex(2)
	EndEvent
	
	Event OnMenuAcceptST(Int AcceptedIndex)
		String[] Options = new String[5]
		
		Options[0] = "$VSScan" ;0.75 Game Time (45 Game Minutes/135 IRL Seconds) - TimeScale Limit: 300
		Options[1] = "$SScan" ;0.5 Game Time (30 Game Minutes/90 IRL Seconds) - TimeScale Limit: 200
		Options[2] = "$NScan" ;0.25 Game Time (15 Game Minutes/45 IRL Seconds) - TimeScale Limit: 100
		Options[3] = "$FScan" ;0.15 Game Time (9 Game Minutes/27 IRL Seconds) - TimeScale Limit: 60
		Options[4] = "$VFScan" ;0.1 Game Time (6 Game Minutes/18 IRL Seconds) - TimeScale Limit: 40
		
		ScanFrequency = Options[AcceptedIndex]
		AND_Logger.FastLog("<MCM> {AND_ScanFrequency_State:OnMenuAcceptST} Scan Speed is now: " + ScanFrequency)
		SetMenuOptionValueST(ScanFrequency, False, "AND_ScanFrequency_State")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$ScanFrequencyInfoText")
	EndEvent
EndState

State AND_ModestyArousalThresholdState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(ModestyArousalThreshold.GetValue())
		SetSliderDialogDefaultValue(70)
		SetSliderDialogRange(0,101)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		ModestyArousalThreshold.SetValue(value)
		SetSliderOptionValueST(ModestyArousalThreshold.GetValue() as Int, "{0}", False, "AND_ModestyArousalThresholdState")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$ModestyArousalThresholdInfoText")
	EndEvent
EndState

State AND_ModestyUpgradeTimeState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(ImmodestyTimeNeeded)
		SetSliderDialogDefaultValue(14)
		SetSliderDialogRange(1, 120)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		ImmodestyTimeNeeded = value as Int
		SetSliderOptionValueST(ImmodestyTimeNeeded, "{0}", False, "AND_ModestyUpgradeTimeState")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$ImmodestyTimeInfoText")
	EndEvent
EndState

State AND_MinimumRankState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(MinimumModestyRank)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0,5)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		MinimumModestyRank = value as Int
		SetSliderOptionValueST(MinimumModestyRank, "{0}", False, "AND_MinimumRankState")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$MinimumRankInfoText")
	EndEvent
EndState

State AND_DisableNakedCommentsState
	Event OnSelectST()
		DisableNakedComments = !DisableNakedComments
		
		SetToggleOptionValueST(DisableNakedComments, False, "AND_DisableNakedCommentsState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$DisableNakedCommentsTooltip")
	EndEvent
EndState

State AND_NudeFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(NudeFactionCommentChance)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		NudeFactionCommentChance = value as Int
		SetSliderOptionValueST(NudeFactionCommentChance, "{0}", False, "AND_NudeFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$NudeCommentChanceTooltip")
	EndEvent
EndState

State AND_ToplessFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(ToplessFactionCommentChance)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		ToplessFactionCommentChance = value as Int
		SetSliderOptionValueST(ToplessFactionCommentChance, "{0}", False, "AND_ToplessFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$ToplessCommentChanceTooltip")
	EndEvent
EndState

State AND_BottomlessFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(BottomlessFactionCommentChance)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		BottomlessFactionCommentChance = value as Int
		SetSliderOptionValueST(BottomlessFactionCommentChance, "{0}", False, "AND_BottomlessFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$BottomlessCommentChanceTooltip")
	EndEvent
EndState

State AND_ChestFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(ChestFactionCommentChance)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		ChestFactionCommentChance = value as Int
		SetSliderOptionValueST(ChestFactionCommentChance, "{0}", False, "AND_ChestFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$ChestCommentChanceTooltip")
	EndEvent
EndState

State AND_GenitalsFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(GenitalsFactionCommentChance)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		GenitalsFactionCommentChance = value as Int
		SetSliderOptionValueST(GenitalsFactionCommentChance, "{0}", False, "AND_GenitalsFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$GenitalsCommentChanceTooltip")
	EndEvent
EndState

State AND_AssFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssFactionCommentChance)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssFactionCommentChance = value as Int
		SetSliderOptionValueST(AssFactionCommentChance, "{0}", False, "AND_AssFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AssCommentChanceTooltip")
	EndEvent
EndState

State AND_BraFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(BraFactionCommentChance)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		BraFactionCommentChance = value as Int
		SetSliderOptionValueST(BraFactionCommentChance, "{0}", False, "AND_BraFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$BraCommentChanceTooltip")
	EndEvent
EndState

State AND_UnderwearFactionCommentChanceState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(UnderwearFactionCommentChance)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0,50)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		UnderwearFactionCommentChance = value as Int
		SetSliderOptionValueST(UnderwearFactionCommentChance, "{0}", False, "AND_UnderwearFactionCommentChanceState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$UnderwearCommentChanceTooltip")
	EndEvent
EndState

State AND_NakedCommentChanceState
	Event OnHighlightST()
		SetInfoText("$NakedCommentChanceTooltip")
	EndEvent
EndState

State AND_AllowMotionFlashState
	Event OnSelectST()
		AllowMotionFlash = !AllowMotionFlash
		SetToggleOptionValueST(AllowMotionFlash, False, "AND_AllowMotionFlashState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AllowMotionFlash_Tooltip")
	EndEvent
EndState

State AND_RunningFlashIncreaseState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(RunningModifier)
		If SprintingModifier >= 10
			SetSliderDialogDefaultValue(10)
		Else
			SetSliderDialogDefaultValue(SprintingModifier)
		EndIf
		
		If SprintingModifier <= 20
			SetSliderDialogRange(0, SprintingModifier)
		Else
			SetSliderDialogRange(5, 20)
		EndIf
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		RunningModifier = value as Int
		SetSliderOptionValueST(value, "{0}", False, "AND_RunningFlashIncreaseState")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_RunningFlash_Tooltip")
	EndEvent
EndState

State AND_SprintingFlashIncreaseState
	Event OnSliderOpenST()
		SetSliderDialogStartValue(SprintingModifier)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(RunningModifier, 40)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		SprintingModifier = value as Int
		SetSliderOptionValueST(value, "{0}", False, "AND_SprintingFlashIncreaseState")
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_SprintingFlash_Tooltip")
	EndEvent
EndState

State UseGenderlessState
	Event OnSelectST()
		GenderlessWording = !GenderlessWording
		SetToggleOptionValueST(GenderlessWording, False, "UseGenderlessState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_Genderless_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsLow)
		If TopCurtainOdds >= 20
			SetSliderDialogDefaultValue(20)
		Else
			SetSliderDialogDefaultValue(TopCurtainOdds)
		EndIf
		SetSliderDialogRange(1, TopCurtainOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsLow = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainLowOdds")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOdds >= 20
			TopCurtainOddsLow = 20
			SetSliderOptionValueST(20, "{0}%", False, "AND_ChestCurtainLowOdds")
		Else
			TopCurtainOddsLow = TopCurtainOdds
			SetSliderOptionValueST(TopCurtainOdds, "{0}%", False, "AND_ChestCurtainLowOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainLowOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsLow_Male)
		If TopCurtainOdds_Male >= 20
			SetSliderDialogDefaultValue(20)
		Else
			SetSliderDialogDefaultValue(TopCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(1, TopCurtainOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsLow_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainLowOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOdds_Male >= 20
			TopCurtainOddsLow_Male = 20
			SetSliderOptionValueST(20, "{0}%", False, "AND_ChestCurtainLowOddsMale")
		Else
			TopCurtainOddsLow_Male = TopCurtainOdds_Male
			SetSliderOptionValueST(TopCurtainOdds_Male, "{0}%", False, "AND_ChestCurtainLowOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOdds)
		If TopCurtainOddsLow <= 35 && TopCurtainOddsHigh >= 35
			SetSliderDialogDefaultValue(35)
		ElseIf TopCurtainOddsHigh < 35
			SetSliderDialogDefaultValue(TopCurtainOddsHigh)
		Else
			SetSliderDialogDefaultValue(TopCurtainOddsLow)
		EndIf
		SetSliderDialogRange(TopCurtainOddsLow, TopCurtainOddsHigh)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainOdds")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOddsLow <= 35 && TopCurtainOddsHigh >= 35
			TopCurtainOdds = 35
			SetSliderOptionValueST(35, "{0}%", False, "AND_ChestCurtainOdds")
		ElseIf TopCurtainOddsHigh < 35
			TopCurtainOdds = TopCurtainOddsHigh
			SetSliderOptionValueST(TopCurtainOddsHigh, "{0}%", False, "AND_ChestCurtainOdds")
		Else
			TopCurtainOdds = TopCurtainOddsLow
			SetSliderOptionValueST(TopCurtainOddsLow, "{0}%", False, "AND_ChestCurtainOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOdds_Male)
		If TopCurtainOddsLow_Male <= 35 && TopCurtainOddsHigh_Male >= 35
			SetSliderDialogDefaultValue(35)
		ElseIf TopCurtainOddsHigh_Male < 35
			SetSliderDialogDefaultValue(TopCurtainOddsHigh_Male)
		Else
			SetSliderDialogDefaultValue(TopCurtainOddsLow_Male)
		EndIf
		SetSliderDialogRange(TopCurtainOddsLow_Male, TopCurtainOddsHigh_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOddsLow_Male <= 35 && TopCurtainOddsHigh_Male >= 35
			TopCurtainOdds_Male = 35
			SetSliderOptionValueST(35, "{0}%", False, "AND_ChestCurtainOddsMale")
		ElseIf TopCurtainOddsHigh_Male < 35
			TopCurtainOdds_Male = TopCurtainOddsHigh_Male
			SetSliderOptionValueST(TopCurtainOddsHigh_Male, "{0}%", False, "AND_ChestCurtainOddsMale")
		Else
			TopCurtainOdds_Male = TopCurtainOddsLow_Male
			SetSliderOptionValueST(TopCurtainOddsLow_Male, "{0}%", False, "AND_ChestCurtainOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsHigh)
		If TopCurtainOdds <= 50 && TopCurtainOddsExtreme >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TopCurtainOddsExtreme < 50
			SetSliderDialogDefaultValue(TopCurtainOddsExtreme)
		Else
			SetSliderDialogDefaultValue(TopCurtainOdds)
		EndIf
		SetSliderDialogRange(TopCurtainOdds, TopCurtainOddsExtreme)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsHigh = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainHighOdds")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOdds <= 50 && TopCurtainOddsExtreme >= 50
			TopCurtainOddsHigh = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_ChestCurtainHighOdds")
		ElseIf TopCurtainOddsExtreme < 50
			TopCurtainOddsHigh = TopCurtainOddsExtreme
			SetSliderOptionValueST(TopCurtainOddsExtreme, "{0}%", False, "AND_ChestCurtainHighOdds")
		Else
			TopCurtainOddsHigh = TopCurtainOdds
			SetSliderOptionValueST(TopCurtainOdds, "{0}%", False, "AND_ChestCurtainHighOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainHighOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsHigh_Male)
		If TopCurtainOdds_Male <= 50 && TopCurtainOddsExtreme_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TopCurtainOddsExtreme_Male < 50
			SetSliderDialogDefaultValue(TopCurtainOddsExtreme_Male)
		Else
			SetSliderDialogDefaultValue(TopCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(TopCurtainOdds_Male, TopCurtainOddsExtreme_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsHigh_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainHighOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOdds_Male <= 50 && TopCurtainOddsExtreme_Male >= 50
			TopCurtainOddsHigh_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_ChestCurtainHighOddsMale")
		ElseIf TopCurtainOddsExtreme_Male < 50
			TopCurtainOddsHigh_Male = TopCurtainOddsExtreme_Male
			SetSliderOptionValueST(TopCurtainOddsExtreme_Male, "{0}%", False, "AND_ChestCurtainHighOddsMale")
		Else
			TopCurtainOddsHigh_Male = TopCurtainOdds_Male
			SetSliderOptionValueST(TopCurtainOdds_Male, "{0}%", False, "AND_ChestCurtainHighOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsExtreme)
		If TopCurtainOddsHigh <= 65 && TopCurtainOddsUltra >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TopCurtainOddsUltra < 65
			SetSliderDialogDefaultValue(TopCurtainOddsUltra)
		Else
			SetSliderDialogDefaultValue(TopCurtainOddsHigh)
		EndIf
		SetSliderDialogRange(TopCurtainOddsHigh, TopCurtainOddsUltra)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsExtreme = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainExtremeOdds")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOddsHigh <= 65 && TopCurtainOddsUltra >= 65
			TopCurtainOddsExtreme = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_ChestCurtainExtremeOdds")
		ElseIf TopCurtainOddsUltra < 65
			TopCurtainOddsExtreme = TopCurtainOddsUltra
			SetSliderOptionValueST(TopCurtainOddsUltra, "{0}%", False, "AND_ChestCurtainExtremeOdds")
		Else
			TopCurtainOddsExtreme = TopCurtainOddsHigh
			SetSliderOptionValueST(TopCurtainOddsHigh, "{0}%", False, "AND_ChestCurtainExtremeOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainExtremeOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsExtreme_Male)
		If TopCurtainOddsHigh_Male <= 65 && TopCurtainOddsUltra_Male >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TopCurtainOddsUltra_Male < 65
			SetSliderDialogDefaultValue(TopCurtainOddsUltra_Male)
		Else
			SetSliderDialogDefaultValue(TopCurtainOddsHigh_Male)
		EndIf
		SetSliderDialogRange(TopCurtainOddsHigh_Male, TopCurtainOddsUltra_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsExtreme_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainExtremeOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOddsHigh_Male <= 65 && TopCurtainOddsUltra_Male >= 65
			TopCurtainOddsExtreme_Male = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_ChestCurtainExtremeOddsMale")
		ElseIf TopCurtainOddsUltra_Male < 65
			TopCurtainOddsExtreme_Male = TopCurtainOddsUltra_Male
			SetSliderOptionValueST(TopCurtainOddsUltra_Male, "{0}%", False, "AND_ChestCurtainExtremeOddsMale")
		Else
			TopCurtainOddsExtreme_Male = TopCurtainOddsHigh_Male
			SetSliderOptionValueST(TopCurtainOddsHigh_Male, "{0}%", False, "AND_ChestCurtainExtremeOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsUltra)
		If TopCurtainOddsExtreme <= 80
			SetSliderDialogDefaultValue(80)
		Else
			SetSliderDialogDefaultValue(TopCurtainOddsExtreme)
		EndIf
		SetSliderDialogRange(TopCurtainOddsExtreme, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsUltra = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainUltraOdds")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOddsExtreme <= 80
			TopCurtainOddsUltra = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_ChestCurtainUltraOdds")
		Else
			TopCurtainOddsUltra = TopCurtainOddsExtreme
			SetSliderOptionValueST(TopCurtainOddsExtreme, "{0}%", False, "AND_ChestCurtainUltraOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_ChestCurtainUltraOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsUltra_Male)
		If TopCurtainOddsExtreme_Male <= 80
			SetSliderDialogDefaultValue(80)
		Else
			SetSliderDialogDefaultValue(TopCurtainOddsExtreme_Male)
		EndIf
		SetSliderDialogRange(TopCurtainOddsExtreme_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsUltra_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_ChestCurtainUltraOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TopCurtainOddsExtreme_Male <= 80
			TopCurtainOddsUltra_Male = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_ChestCurtainUltraOddsMale")
		Else
			TopCurtainOddsUltra_Male = TopCurtainOddsExtreme_Male
			SetSliderOptionValueST(TopCurtainOddsExtreme_Male, "{0}%", False, "AND_ChestCurtainUltraOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_ChestCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsLow)
		If TransparentTopCurtainOdds >= 55
			SetSliderDialogDefaultValue(55)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOdds)
		EndIf
		SetSliderDialogRange(1, TransparentTopCurtainOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsLow = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainLowOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOdds >= 55
			TransparentTopCurtainOddsLow = 55
			SetSliderOptionValueST(55, "{0}%", False, "AND_TransparentChestCurtainLowOdds")
		Else
			TransparentTopCurtainOddsLow = TransparentTopCurtainOdds
			SetSliderOptionValueST(TransparentTopCurtainOdds, "{0}%", False, "AND_TransparentChestCurtainLowOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainLowOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsLow_Male)
		If TransparentTopCurtainOdds_Male >= 55
			SetSliderDialogDefaultValue(55)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentTopCurtainOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsLow_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainLowOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOdds_Male >= 55
			TransparentTopCurtainOddsLow_Male = 55
			SetSliderOptionValueST(55, "{0}%", False, "AND_TransparentChestCurtainLowOddsMale")
		Else
			TransparentTopCurtainOddsLow_Male = TransparentTopCurtainOdds_Male
			SetSliderOptionValueST(TransparentTopCurtainOdds_Male, "{0}%", False, "AND_TransparentChestCurtainLowOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOdds)
		If TransparentTopCurtainOddsLow <= 65 && TransparentTopCurtainOddsHigh >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TransparentTopCurtainOddsHigh < 65
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsHigh)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsLow)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOddsLow, TransparentTopCurtainOddsHigh)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOddsLow <= 65 && TransparentTopCurtainOddsHigh >= 65
			TransparentTopCurtainOdds = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_TransparentChestCurtainOdds")
		ElseIf TransparentTopCurtainOddsHigh < 65
			TransparentTopCurtainOdds = TransparentTopCurtainOddsHigh
			SetSliderOptionValueST(TransparentTopCurtainOddsHigh, "{0}%", False, "AND_TransparentChestCurtainOdds")
		Else
			TransparentTopCurtainOdds = TransparentTopCurtainOddsLow
			SetSliderOptionValueST(TransparentTopCurtainOddsLow, "{0}%", False, "AND_TransparentChestCurtainOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOdds_Male)
		If TransparentTopCurtainOddsLow_Male <= 65 && TransparentTopCurtainOddsHigh_Male >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TransparentTopCurtainOddsHigh_Male < 65
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsHigh_Male)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsLow_Male)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOddsLow_Male, TransparentTopCurtainOddsHigh_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOddsLow_Male <= 65 && TransparentTopCurtainOddsHigh_Male >= 65
			TransparentTopCurtainOdds_Male = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_TransparentChestCurtainOddsMale")
		ElseIf TransparentTopCurtainOddsHigh_Male < 65
			TransparentTopCurtainOdds_Male = TransparentTopCurtainOddsHigh_Male
			SetSliderOptionValueST(TransparentTopCurtainOddsHigh_Male, "{0}%", False, "AND_TransparentChestCurtainOddsMale")
		Else
			TransparentTopCurtainOdds_Male = TransparentTopCurtainOddsLow_Male
			SetSliderOptionValueST(TransparentTopCurtainOddsLow_Male, "{0}%", False, "AND_TransparentChestCurtainOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsHigh)
		If TransparentTopCurtainOdds <= 75 && TransparentTopCurtainOddsExtreme >= 75
			SetSliderDialogDefaultValue(75)
		ElseIf TransparentTopCurtainOddsExtreme < 75
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsExtreme)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOdds)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOdds, TransparentTopCurtainOddsExtreme)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsHigh = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainHighOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOdds <= 75 && TransparentTopCurtainOddsExtreme >= 75
			TransparentTopCurtainOddsHigh = 75
			SetSliderOptionValueST(75, "{0}%", False, "AND_TransparentChestCurtainHighOdds")
		ElseIf TransparentTopCurtainOddsExtreme < 75
			TransparentTopCurtainOddsHigh = TransparentTopCurtainOddsExtreme
			SetSliderOptionValueST(TransparentTopCurtainOddsExtreme, "{0}%", False, "AND_TransparentChestCurtainHighOdds")
		Else
			TransparentTopCurtainOddsHigh = TransparentTopCurtainOdds
			SetSliderOptionValueST(TransparentTopCurtainOdds, "{0}%", False, "AND_TransparentChestCurtainHighOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainHighOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsHigh_Male)
		If TransparentTopCurtainOdds_Male <= 75 && TransparentTopCurtainOddsExtreme_Male >= 75
			SetSliderDialogDefaultValue(75)
		ElseIf TransparentTopCurtainOddsExtreme_Male < 75
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsExtreme_Male)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOdds_Male, TransparentTopCurtainOddsExtreme_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsHigh_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainHighOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOdds_Male <= 75 && TransparentTopCurtainOddsExtreme_Male >= 75
			TransparentTopCurtainOddsHigh_Male = 75
			SetSliderOptionValueST(75, "{0}%", False, "AND_TransparentChestCurtainHighOddsMale")
		ElseIf TransparentTopCurtainOddsExtreme_Male < 75
			TransparentTopCurtainOddsHigh_Male = TransparentTopCurtainOddsExtreme_Male
			SetSliderOptionValueST(TransparentTopCurtainOddsExtreme_Male, "{0}%", False, "AND_TransparentChestCurtainHighOddsMale")
		Else
			TransparentTopCurtainOddsHigh_Male = TransparentTopCurtainOdds_Male
			SetSliderOptionValueST(TransparentTopCurtainOdds_Male, "{0}%", False, "AND_TransparentChestCurtainHighOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsExtreme)
		If TransparentTopCurtainOddsHigh <= 85 && TransparentTopCurtainOddsUltra >= 85
			SetSliderDialogDefaultValue(85)
		ElseIf TransparentTopCurtainOddsUltra < 85
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsUltra)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsHigh)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOddsHigh, TransparentTopCurtainOddsUltra)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsExtreme = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainExtremeOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOddsHigh <= 85 && TransparentTopCurtainOddsUltra >= 85
			TransparentTopCurtainOddsExtreme = 85
			SetSliderOptionValueST(85, "{0}%", False, "AND_TransparentChestCurtainExtremeOdds")
		ElseIf TransparentTopCurtainOddsUltra < 85
			TransparentTopCurtainOddsExtreme = TransparentTopCurtainOddsUltra
			SetSliderOptionValueST(TransparentTopCurtainOddsUltra, "{0}%", False, "AND_TransparentChestCurtainExtremeOdds")
		Else
			TransparentTopCurtainOddsExtreme = TransparentTopCurtainOddsHigh
			SetSliderOptionValueST(TransparentTopCurtainOddsHigh, "{0}%", False, "AND_TransparentChestCurtainExtremeOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainExtremeOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsExtreme_Male)
		If TransparentTopCurtainOddsHigh_Male <= 85 && TransparentTopCurtainOddsUltra_Male >= 85
			SetSliderDialogDefaultValue(85)
		ElseIf TransparentTopCurtainOddsUltra_Male < 85
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsUltra_Male)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsHigh_Male)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOddsHigh_Male, TransparentTopCurtainOddsUltra_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsExtreme_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainExtremeOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOddsHigh_Male <= 85 && TransparentTopCurtainOddsUltra_Male >= 85
			TransparentTopCurtainOddsExtreme_Male = 85
			SetSliderOptionValueST(85, "{0}%", False, "AND_TransparentChestCurtainExtremeOddsMale")
		ElseIf TransparentTopCurtainOddsUltra_Male < 85
			TransparentTopCurtainOddsExtreme_Male = TransparentTopCurtainOddsUltra_Male
			SetSliderOptionValueST(TransparentTopCurtainOddsUltra_Male, "{0}%", False, "AND_TransparentChestCurtainExtremeOddsMale")
		Else
			TransparentTopCurtainOddsExtreme_Male = TransparentTopCurtainOddsHigh_Male
			SetSliderOptionValueST(TransparentTopCurtainOddsHigh_Male, "{0}%", False, "AND_TransparentChestCurtainExtremeOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsUltra)
		If TransparentTopCurtainOddsExtreme <= 95
			SetSliderDialogDefaultValue(95)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsExtreme)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOddsExtreme, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsUltra = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainUltraOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOddsExtreme <= 95
			TransparentTopCurtainOddsUltra = 95
			SetSliderOptionValueST(95, "{0}%", False, "AND_TransparentChestCurtainUltraOdds")
		Else
			TransparentTopCurtainOddsUltra = TransparentTopCurtainOddsExtreme
			SetSliderOptionValueST(TransparentTopCurtainOddsExtreme, "{0}%", False, "AND_TransparentChestCurtainUltraOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_TransparentChestCurtainUltraOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsUltra_Male)
		If TransparentTopCurtainOddsExtreme_Male <= 95
			SetSliderDialogDefaultValue(95)
		Else
			SetSliderDialogDefaultValue(TransparentTopCurtainOddsExtreme_Male)
		EndIf
		SetSliderDialogRange(TransparentTopCurtainOddsExtreme_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsUltra_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentChestCurtainUltraOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopCurtainOddsExtreme_Male <= 95
			TransparentTopCurtainOddsUltra_Male = 95
			SetSliderOptionValueST(95, "{0}%", False, "AND_TransparentChestCurtainUltraOddsMale")
		Else
			TransparentTopCurtainOddsUltra_Male = TransparentTopCurtainOddsExtreme_Male
			SetSliderOptionValueST(TransparentTopCurtainOddsExtreme_Male, "{0}%", False, "AND_TransparentChestCurtainUltraOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentChestCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsLow)
		If PelvicCurtainOdds >= 20
			SetSliderDialogDefaultValue(20)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOdds)
		EndIf
		SetSliderDialogRange(1, PelvicCurtainOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsLow = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainLowOdds")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOdds >= 20
			PelvicCurtainOddsLow = 20
			SetSliderOptionValueST(20, "{0}%", False, "AND_PelvicCurtainLowOdds")
		Else
			PelvicCurtainOddsLow = PelvicCurtainOdds
			SetSliderOptionValueST(PelvicCurtainOdds, "{0}%", False, "AND_PelvicCurtainLowOdds")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainLowOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsLow_Male)
		If PelvicCurtainOdds_Male >= 20
			SetSliderDialogDefaultValue(20)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(1, PelvicCurtainOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsLow_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainLowOddsMale")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOdds_Male >= 20
			PelvicCurtainOddsLow_Male = 20
			SetSliderOptionValueST(20, "{0}%", False, "AND_PelvicCurtainLowOddsMale")
		Else
			PelvicCurtainOddsLow_Male = PelvicCurtainOdds_Male
			SetSliderOptionValueST(PelvicCurtainOdds_Male, "{0}%", False, "AND_PelvicCurtainLowOddsMale")
		EndIf
	EndEvent 
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOdds)
		If PelvicCurtainOddsLow <= 35 && PelvicCurtainOddsHigh >= 35
			SetSliderDialogDefaultValue(35)
		ElseIf PelvicCurtainOddsHigh < 35
			SetSliderDialogDefaultValue(PelvicCurtainOddsHigh)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOddsLow)
		EndIf
		SetSliderDialogRange(PelvicCurtainOddsLow, PelvicCurtainOddsHigh)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainOdds")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOddsLow <= 35 && PelvicCurtainOddsHigh >= 35
			PelvicCurtainOdds = 35
			SetSliderOptionValueST(35, "{0}%", False, "AND_PelvicCurtainOdds")
		ElseIf PelvicCurtainOddsHigh < 35
			PelvicCurtainOdds = PelvicCurtainOddsHigh
			SetSliderOptionValueST(PelvicCurtainOddsHigh, "{0}%", False, "AND_PelvicCurtainOdds")
		Else
			PelvicCurtainOdds = PelvicCurtainOddsLow
			SetSliderOptionValueST(PelvicCurtainOddsLow, "{0}%", False, "AND_PelvicCurtainOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOdds_Male)
		If PelvicCurtainOddsLow_Male <= 35 && PelvicCurtainOddsHigh_Male >= 35
			SetSliderDialogDefaultValue(35)
		ElseIf PelvicCurtainOddsHigh_Male < 35
			SetSliderDialogDefaultValue(PelvicCurtainOddsHigh_Male)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOddsLow_Male)
		EndIf
		SetSliderDialogRange(PelvicCurtainOddsLow_Male, PelvicCurtainOddsHigh_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainOddsMale")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOddsLow_Male <= 35 && PelvicCurtainOddsHigh_Male >= 35
			PelvicCurtainOdds_Male = 35
			SetSliderOptionValueST(35, "{0}%", False, "AND_PelvicCurtainOddsMale")
		ElseIf PelvicCurtainOddsHigh_Male < 35
			PelvicCurtainOdds_Male = PelvicCurtainOddsHigh_Male
			SetSliderOptionValueST(PelvicCurtainOddsHigh_Male, "{0}%", False, "AND_PelvicCurtainOddsMale")
		Else
			PelvicCurtainOdds_Male = PelvicCurtainOddsLow_Male
			SetSliderOptionValueST(PelvicCurtainOddsLow_Male, "{0}%", False, "AND_PelvicCurtainOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsHigh)
		If PelvicCurtainOdds <= 50 && PelvicCurtainOddsExtreme >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf PelvicCurtainOddsExtreme < 50
			SetSliderDialogDefaultValue(PelvicCurtainOddsExtreme)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOdds)
		EndIf
		SetSliderDialogRange(PelvicCurtainOdds, PelvicCurtainOddsExtreme)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsHigh = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainHighOdds")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOdds <= 50 && PelvicCurtainOddsExtreme >= 50
			PelvicCurtainOddsHigh = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_PelvicCurtainHighOdds")
		ElseIf PelvicCurtainOddsExtreme < 50
			PelvicCurtainOddsHigh = PelvicCurtainOddsExtreme
			SetSliderOptionValueST(PelvicCurtainOddsExtreme, "{0}%", False, "AND_PelvicCurtainHighOdds")
		Else
			PelvicCurtainOddsHigh = PelvicCurtainOdds
			SetSliderOptionValueST(PelvicCurtainOdds, "{0}%", False, "AND_PelvicCurtainHighOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainHighOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsHigh_Male)
		If PelvicCurtainOdds_Male <= 50 && PelvicCurtainOddsExtreme_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf PelvicCurtainOddsExtreme_Male < 50
			SetSliderDialogDefaultValue(PelvicCurtainOddsExtreme_Male)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(PelvicCurtainOdds_Male, PelvicCurtainOddsExtreme_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsHigh_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainHighOddsMale")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOdds_Male <= 50 && PelvicCurtainOddsExtreme_Male >= 50
			PelvicCurtainOddsHigh_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_PelvicCurtainHighOddsMale")
		ElseIf PelvicCurtainOddsExtreme_Male < 50
			PelvicCurtainOddsHigh_Male = PelvicCurtainOddsExtreme_Male
			SetSliderOptionValueST(PelvicCurtainOddsExtreme_Male, "{0}%", False, "AND_PelvicCurtainHighOddsMale")
		Else
			PelvicCurtainOddsHigh_Male = PelvicCurtainOdds_Male
			SetSliderOptionValueST(PelvicCurtainOdds_Male, "{0}%", False, "AND_PelvicCurtainHighOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsExtreme)
		If PelvicCurtainOddsHigh <= 65 && PelvicCurtainOddsUltra >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf PelvicCurtainOddsUltra < 65
			SetSliderDialogDefaultValue(PelvicCurtainOddsUltra)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOddsHigh)
		EndIf
		SetSliderDialogRange(PelvicCurtainOddsHigh, PelvicCurtainOddsUltra)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsExtreme = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainExtremeOdds")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOddsHigh <= 65 && PelvicCurtainOddsUltra >= 65
			PelvicCurtainOddsExtreme = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_PelvicCurtainExtremeOdds")
		ElseIf PelvicCurtainOddsUltra < 65
			PelvicCurtainOddsExtreme = PelvicCurtainOddsUltra
			SetSliderOptionValueST(PelvicCurtainOddsUltra, "{0}%", False, "AND_PelvicCurtainExtremeOdds")
		Else
			PelvicCurtainOddsExtreme = PelvicCurtainOddsHigh
			SetSliderOptionValueST(PelvicCurtainOddsHigh, "{0}%", False, "AND_PelvicCurtainExtremeOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainExtremeOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsExtreme_Male)
		If PelvicCurtainOddsHigh_Male <= 65 && PelvicCurtainOddsUltra_Male >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf PelvicCurtainOddsUltra_Male < 65
			SetSliderDialogDefaultValue(PelvicCurtainOddsUltra_Male)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOddsHigh_Male)
		EndIf
		SetSliderDialogRange(PelvicCurtainOddsHigh_Male, PelvicCurtainOddsUltra_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsExtreme_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainExtremeOddsMale")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOddsHigh_Male <= 65 && PelvicCurtainOddsUltra_Male >= 65
			PelvicCurtainOddsExtreme_Male = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_PelvicCurtainExtremeOddsMale")
		ElseIf PelvicCurtainOddsUltra_Male < 65
			PelvicCurtainOddsExtreme_Male = PelvicCurtainOddsUltra_Male
			SetSliderOptionValueST(PelvicCurtainOddsUltra_Male, "{0}%", False, "AND_PelvicCurtainExtremeOddsMale")
		Else
			PelvicCurtainOddsExtreme_Male = PelvicCurtainOddsHigh_Male
			SetSliderOptionValueST(PelvicCurtainOddsHigh_Male, "{0}%", False, "AND_PelvicCurtainExtremeOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsUltra)
		If PelvicCurtainOddsExtreme <= 80
			SetSliderDialogDefaultValue(80)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOddsExtreme)
		EndIf
		SetSliderDialogRange(PelvicCurtainOddsExtreme, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsUltra = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainUltraOdds")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOddsExtreme <= 80
			PelvicCurtainOddsUltra = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_PelvicCurtainUltraOdds")
		Else
			PelvicCurtainOddsUltra = PelvicCurtainOddsExtreme
			SetSliderOptionValueST(PelvicCurtainOddsExtreme, "{0}%", False, "AND_PelvicCurtainUltraOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_PelvicCurtainUltraOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsUltra_Male)
		If PelvicCurtainOddsExtreme_Male <= 80
			SetSliderDialogDefaultValue(80)
		Else
			SetSliderDialogDefaultValue(PelvicCurtainOddsExtreme_Male)
		EndIf
		SetSliderDialogRange(PelvicCurtainOddsExtreme_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsUltra_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_PelvicCurtainUltraOddsMale")
	EndEvent 

	Event OnDefaultST()
		If PelvicCurtainOddsExtreme_Male <= 80
			PelvicCurtainOddsUltra_Male = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_PelvicCurtainUltraOddsMale")
		Else
			PelvicCurtainOddsUltra_Male = PelvicCurtainOddsExtreme_Male
			SetSliderOptionValueST(PelvicCurtainOddsExtreme_Male, "{0}%", False, "AND_PelvicCurtainUltraOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_PelvicCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsLow)
		If TransparentPelvicCurtainOdds >= 55
			SetSliderDialogDefaultValue(55)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOdds)
		EndIf
		SetSliderDialogRange(1, TransparentPelvicCurtainOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsLow = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainLowOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOdds >= 55
			TransparentPelvicCurtainOddsLow = 55
			SetSliderOptionValueST(55, "{0}%", False, "AND_TransparentPelvicCurtainLowOdds")
		Else
			TransparentPelvicCurtainOddsLow = TransparentPelvicCurtainOdds
			SetSliderOptionValueST(TransparentPelvicCurtainOdds, "{0}%", False, "AND_TransparentPelvicCurtainLowOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainLowOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsLow_Male)
		If TransparentPelvicCurtainOdds_Male >= 55
			SetSliderDialogDefaultValue(55)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentPelvicCurtainOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsLow_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainLowOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOdds_Male >= 55
			TransparentPelvicCurtainOddsLow_Male = 55
			SetSliderOptionValueST(55, "{0}%", False, "AND_TransparentPelvicCurtainLowOddsMale")
		Else
			TransparentPelvicCurtainOddsLow_Male = TransparentPelvicCurtainOdds_Male
			SetSliderOptionValueST(TransparentPelvicCurtainOdds_Male, "{0}%", False, "AND_TransparentPelvicCurtainLowOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOdds)
		If TransparentPelvicCurtainOddsLow <= 65 && TransparentPelvicCurtainOddsHigh >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TransparentPelvicCurtainOddsHigh < 65
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsHigh)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsLow)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOddsLow, TransparentPelvicCurtainOddsHigh)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOddsLow <= 65 && TransparentPelvicCurtainOddsHigh >= 65
			TransparentPelvicCurtainOdds = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_TransparentPelvicCurtainOdds")
		ElseIf TransparentPelvicCurtainOddsHigh < 65
			TransparentPelvicCurtainOdds = TransparentPelvicCurtainOddsHigh
			SetSliderOptionValueST(TransparentPelvicCurtainOddsHigh, "{0}%", False, "AND_TransparentPelvicCurtainOdds")
		Else
			TransparentPelvicCurtainOdds = TransparentPelvicCurtainOddsLow
			SetSliderOptionValueST(TransparentPelvicCurtainOddsLow, "{0}%", False, "AND_TransparentPelvicCurtainOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOdds_Male)
		If TransparentPelvicCurtainOddsLow_Male <= 65 && TransparentPelvicCurtainOddsHigh_Male >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TransparentPelvicCurtainOddsHigh_Male < 65
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsHigh_Male)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsLow_Male)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOddsLow_Male, TransparentPelvicCurtainOddsHigh_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOddsLow_Male <= 65 && TransparentPelvicCurtainOddsHigh_Male >= 65
			TransparentPelvicCurtainOdds_Male = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_TransparentPelvicCurtainOddsMale")
		ElseIf TransparentPelvicCurtainOddsHigh_Male < 65
			TransparentPelvicCurtainOdds_Male = TransparentPelvicCurtainOddsHigh_Male
			SetSliderOptionValueST(TransparentPelvicCurtainOddsHigh_Male, "{0}%", False, "AND_TransparentPelvicCurtainOddsMale")
		Else
			TransparentPelvicCurtainOdds_Male = TransparentPelvicCurtainOddsLow_Male
			SetSliderOptionValueST(TransparentPelvicCurtainOddsLow_Male, "{0}%", False, "AND_TransparentPelvicCurtainOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsHigh)
		If TransparentPelvicCurtainOdds <= 75 && TransparentPelvicCurtainOddsExtreme >= 75
			SetSliderDialogDefaultValue(75)
		ElseIf TransparentPelvicCurtainOddsExtreme < 75
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsExtreme)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOdds)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOdds, TransparentPelvicCurtainOddsExtreme)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsHigh = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainHighOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOdds <= 75 && TransparentPelvicCurtainOddsExtreme >= 75
			TransparentPelvicCurtainOddsHigh = 75
			SetSliderOptionValueST(75, "{0}%", False, "AND_TransparentPelvicCurtainHighOdds")
		ElseIf TransparentPelvicCurtainOddsExtreme < 75
			TransparentPelvicCurtainOddsHigh = TransparentPelvicCurtainOddsExtreme
			SetSliderOptionValueST(TransparentPelvicCurtainOddsExtreme, "{0}%", False, "AND_TransparentPelvicCurtainHighOdds")
		Else
			TransparentPelvicCurtainOddsHigh = TransparentPelvicCurtainOdds
			SetSliderOptionValueST(TransparentPelvicCurtainOdds, "{0}%", False, "AND_TransparentPelvicCurtainHighOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainHighOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsHigh_Male)
		If TransparentPelvicCurtainOdds_Male <= 75 && TransparentPelvicCurtainOddsExtreme_Male >= 75
			SetSliderDialogDefaultValue(75)
		ElseIf TransparentPelvicCurtainOddsExtreme_Male < 75
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsExtreme_Male)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOdds_Male, TransparentPelvicCurtainOddsExtreme_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsHigh_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainHighOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOdds_Male <= 75 && TransparentPelvicCurtainOddsExtreme_Male >= 75
			TransparentPelvicCurtainOddsHigh_Male = 75
			SetSliderOptionValueST(75, "{0}%", False, "AND_TransparentPelvicCurtainHighOddsMale")
		ElseIf TransparentPelvicCurtainOddsExtreme_Male < 75
			TransparentPelvicCurtainOddsHigh_Male = TransparentPelvicCurtainOddsExtreme_Male
			SetSliderOptionValueST(TransparentPelvicCurtainOddsExtreme_Male, "{0}%", False, "AND_TransparentPelvicCurtainHighOddsMale")
		Else
			TransparentPelvicCurtainOddsHigh_Male = TransparentPelvicCurtainOdds_Male
			SetSliderOptionValueST(TransparentPelvicCurtainOdds_Male, "{0}%", False, "AND_TransparentPelvicCurtainHighOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsExtreme)
		If TransparentPelvicCurtainOddsHigh <= 85 && TransparentAssCurtainOddsUltra >= 85
			SetSliderDialogDefaultValue(85)
		ElseIf TransparentPelvicCurtainOddsUltra < 85
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsUltra)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsHigh)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOddsHigh, TransparentPelvicCurtainOddsUltra)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsExtreme = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOddsHigh <= 85 && TransparentAssCurtainOddsUltra >= 85
			TransparentPelvicCurtainOddsExtreme = 85
			SetSliderOptionValueST(85, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOdds")
		ElseIf TransparentPelvicCurtainOddsUltra < 85
			TransparentPelvicCurtainOddsExtreme = TransparentAssCurtainOddsUltra
			SetSliderOptionValueST(TransparentAssCurtainOddsUltra, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOdds")
		Else
			TransparentPelvicCurtainOddsExtreme = TransparentPelvicCurtainOddsHigh
			SetSliderOptionValueST(TransparentPelvicCurtainOddsHigh, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainExtremeOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsExtreme_Male)
		If TransparentPelvicCurtainOddsHigh_Male <= 85 && TransparentAssCurtainOddsUltra_Male >= 85
			SetSliderDialogDefaultValue(85)
		ElseIf TransparentPelvicCurtainOddsUltra_Male < 85
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsUltra_Male)
		Else
			SetSliderDialogDefaultValue(TransparentPelvicCurtainOddsHigh_Male)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOddsHigh_Male, TransparentPelvicCurtainOddsUltra_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsExtreme_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentPelvicCurtainOddsHigh_Male <= 85 && TransparentAssCurtainOddsUltra_Male >= 85
			TransparentPelvicCurtainOddsExtreme_Male = 85
			SetSliderOptionValueST(85, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOddsMale")
		ElseIf TransparentPelvicCurtainOddsUltra_Male < 85
			TransparentPelvicCurtainOddsExtreme_Male = TransparentAssCurtainOddsUltra_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsUltra_Male, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOddsMale")
		Else
			TransparentPelvicCurtainOddsExtreme_Male = TransparentPelvicCurtainOddsHigh_Male
			SetSliderOptionValueST(TransparentPelvicCurtainOddsHigh_Male, "{0}%", False, "AND_TransparentPelvicCurtainExtremeOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsUltra)
		If TransparentAssCurtainOddsExtreme <= 95
			SetSliderDialogDefaultValue(95)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsExtreme)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOddsExtreme, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsUltra = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainUltraOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsExtreme <= 95
			TransparentPelvicCurtainOddsUltra = 95
			SetSliderOptionValueST(95, "{0}%", False, "AND_TransparentPelvicCurtainUltraOdds")
		Else
			TransparentPelvicCurtainOddsUltra = TransparentAssCurtainOddsExtreme
			SetSliderOptionValueST(TransparentAssCurtainOddsExtreme, "{0}%", False, "AND_TransparentPelvicCurtainUltraOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_TransparentPelvicCurtainUltraOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsUltra_Male)
		If TransparentAssCurtainOddsExtreme_Male <= 95
			SetSliderDialogDefaultValue(95)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsExtreme_Male)
		EndIf
		SetSliderDialogRange(TransparentPelvicCurtainOddsExtreme_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsUltra_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentPelvicCurtainUltraOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsExtreme_Male <= 95
			TransparentPelvicCurtainOddsUltra_Male = 95
			SetSliderOptionValueST(95, "{0}%", False, "AND_TransparentPelvicCurtainUltraOddsMale")
		Else
			TransparentPelvicCurtainOddsUltra_Male = TransparentAssCurtainOddsExtreme_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsExtreme_Male, "{0}%", False, "AND_TransparentPelvicCurtainUltraOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentPelvicCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_AssCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsLow)
		If AssCurtainOdds >= 20
			SetSliderDialogDefaultValue(20)
		Else
			SetSliderDialogDefaultValue(AssCurtainOdds)
		EndIf
		SetSliderDialogRange(1, AssCurtainOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsLow = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainLowOdds")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOdds >= 20
			AssCurtainOddsLow = 20
			SetSliderOptionValueST(20, "{0}%", False, "AND_AssCurtainLowOdds")
		Else
			AssCurtainOddsLow = AssCurtainOdds
			SetSliderOptionValueST(AssCurtainOdds, "{0}%", False, "AND_AssCurtainLowOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_AssCurtainLowOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsLow_Male)
		If AssCurtainOdds_Male >= 20
			SetSliderDialogDefaultValue(20)
		Else
			SetSliderDialogDefaultValue(AssCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(1, AssCurtainOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsLow_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainLowOddsMale")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOdds_Male >= 20
			AssCurtainOddsLow_Male = 20
			SetSliderOptionValueST(20, "{0}%", False, "AND_AssCurtainLowOddsMale")
		Else
			AssCurtainOddsLow_Male = AssCurtainOdds_Male
			SetSliderOptionValueST(AssCurtainOdds_Male, "{0}%", False, "AND_AssCurtainLowOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_AssCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOdds)
		If AssCurtainOddsLow <= 35 && AssCurtainOddsHigh >= 35
			SetSliderDialogDefaultValue(35)
		ElseIf AssCurtainOddsHigh < 35
			SetSliderDialogDefaultValue(AssCurtainOddsHigh)
		Else
			SetSliderDialogDefaultValue(AssCurtainOddsLow)
		EndIf
		SetSliderDialogRange(AssCurtainOddsLow, AssCurtainOddsHigh)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainOdds")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOddsLow <= 35 && AssCurtainOddsHigh >= 35
			AssCurtainOdds = 35
			SetSliderOptionValueST(35, "{0}%", False, "AND_AssCurtainOdds")
		ElseIf AssCurtainOddsHigh < 35
			AssCurtainOdds = AssCurtainOddsHigh
			SetSliderOptionValueST(AssCurtainOddsHigh, "{0}%", False, "AND_AssCurtainOdds")
		Else
			AssCurtainOdds = AssCurtainOddsLow
			SetSliderOptionValueST(AssCurtainOddsLow, "{0}%", False, "AND_AssCurtainOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_AssCurtainOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOdds_Male)
		If AssCurtainOddsLow_Male <= 35 && AssCurtainOddsHigh_Male >= 35
			SetSliderDialogDefaultValue(35)
		ElseIf AssCurtainOddsHigh_Male < 35
			SetSliderDialogDefaultValue(AssCurtainOddsHigh_Male)
		Else
			SetSliderDialogDefaultValue(AssCurtainOddsLow_Male)
		EndIf
		SetSliderDialogRange(AssCurtainOddsLow_Male, AssCurtainOddsHigh_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainOddsMale")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOddsLow_Male <= 35 && AssCurtainOddsHigh_Male >= 35
			AssCurtainOdds_Male = 35
			SetSliderOptionValueST(35, "{0}%", False, "AND_AssCurtainOddsMale")
		ElseIf AssCurtainOddsHigh_Male < 35
			AssCurtainOdds_Male = AssCurtainOddsHigh_Male
			SetSliderOptionValueST(AssCurtainOddsHigh_Male, "{0}%", False, "AND_AssCurtainOddsMale")
		Else
			AssCurtainOdds_Male = AssCurtainOddsLow_Male
			SetSliderOptionValueST(AssCurtainOddsLow_Male, "{0}%", False, "AND_AssCurtainOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_AssCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsHigh)
		If AssCurtainOdds <= 50 && AssCurtainOddsExtreme >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf AssCurtainOddsExtreme < 50
			SetSliderDialogDefaultValue(AssCurtainOddsExtreme)
		Else
			SetSliderDialogDefaultValue(AssCurtainOdds)
		EndIf
		SetSliderDialogRange(AssCurtainOdds, AssCurtainOddsExtreme)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsHigh = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainHighOdds")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOdds <= 50 && AssCurtainOddsExtreme >= 50
			AssCurtainOddsHigh = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_AssCurtainHighOdds")
		ElseIf AssCurtainOddsExtreme < 50
			AssCurtainOddsHigh = AssCurtainOddsExtreme
			SetSliderOptionValueST(AssCurtainOddsExtreme, "{0}%", False, "AND_AssCurtainHighOdds")
		Else
			AssCurtainOddsHigh = AssCurtainOdds
			SetSliderOptionValueST(AssCurtainOdds, "{0}%", False, "AND_AssCurtainHighOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_AssCurtainHighOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsHigh_Male)
		If AssCurtainOdds_Male <= 50 && AssCurtainOddsExtreme_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf AssCurtainOddsExtreme_Male < 50
			SetSliderDialogDefaultValue(AssCurtainOddsExtreme_Male)
		Else
			SetSliderDialogDefaultValue(AssCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(AssCurtainOdds_Male, AssCurtainOddsExtreme_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsHigh_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainHighOddsMale")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOdds_Male <= 50 && AssCurtainOddsExtreme_Male >= 50
			AssCurtainOddsHigh_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_AssCurtainHighOddsMale")
		ElseIf AssCurtainOddsExtreme_Male < 50
			AssCurtainOddsHigh_Male = AssCurtainOddsExtreme_Male
			SetSliderOptionValueST(AssCurtainOddsExtreme_Male, "{0}%", False, "AND_AssCurtainHighOddsMale")
		Else
			AssCurtainOddsHigh_Male = AssCurtainOdds_Male
			SetSliderOptionValueST(AssCurtainOdds_Male, "{0}%", False, "AND_AssCurtainHighOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_AssCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsExtreme)
		If AssCurtainOddsHigh <= 65 && AssCurtainOddsUltra >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf AssCurtainOddsUltra < 65
			SetSliderDialogDefaultValue(AssCurtainOddsUltra)
		Else
			SetSliderDialogDefaultValue(AssCurtainOddsHigh)
		EndIf
		SetSliderDialogRange(AssCurtainOddsHigh, AssCurtainOddsUltra)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsExtreme = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainExtremeOdds")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOddsHigh <= 65 && AssCurtainOddsUltra >= 65
			AssCurtainOddsExtreme = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_AssCurtainExtremeOdds")
		ElseIf AssCurtainOddsUltra < 65
			AssCurtainOddsExtreme = AssCurtainOddsUltra
			SetSliderOptionValueST(AssCurtainOddsUltra, "{0}%", False, "AND_AssCurtainExtremeOdds")
		Else
			AssCurtainOddsExtreme = AssCurtainOddsHigh
			SetSliderOptionValueST(AssCurtainOddsHigh, "{0}%", False, "AND_AssCurtainExtremeOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_AssCurtainExtremeOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsExtreme_Male)
		If AssCurtainOddsHigh_Male <= 65 && AssCurtainOddsUltra_Male >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf AssCurtainOddsUltra_Male < 65
			SetSliderDialogDefaultValue(AssCurtainOddsUltra_Male)
		Else
			SetSliderDialogDefaultValue(AssCurtainOddsHigh_Male)
		EndIf
		SetSliderDialogRange(AssCurtainOddsHigh_Male, AssCurtainOddsUltra_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsExtreme_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainExtremeOddsMale")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOddsHigh_Male <= 65 && AssCurtainOddsUltra_Male >= 65
			AssCurtainOddsExtreme_Male = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_AssCurtainExtremeOddsMale")
		ElseIf AssCurtainOddsUltra_Male < 65
			AssCurtainOddsExtreme_Male = AssCurtainOddsUltra_Male
			SetSliderOptionValueST(AssCurtainOddsUltra_Male, "{0}%", False, "AND_AssCurtainExtremeOddsMale")
		Else
			AssCurtainOddsExtreme_Male = AssCurtainOddsHigh_Male
			SetSliderOptionValueST(AssCurtainOddsHigh_Male, "{0}%", False, "AND_AssCurtainExtremeOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_AssCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsUltra)
		If AssCurtainOddsExtreme <= 80
			SetSliderDialogDefaultValue(80)
		Else
			SetSliderDialogDefaultValue(AssCurtainOddsExtreme)
		EndIf
		SetSliderDialogRange(AssCurtainOddsExtreme, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsUltra = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainUltraOdds")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOddsExtreme <= 80
			AssCurtainOddsUltra = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_AssCurtainUltraOdds")
		Else
			AssCurtainOddsUltra = AssCurtainOddsExtreme
			SetSliderOptionValueST(AssCurtainOddsExtreme, "{0}%", False, "AND_AssCurtainUltraOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_AssCurtainUltraOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsUltra_Male)
		If AssCurtainOddsExtreme_Male <= 80
			SetSliderDialogDefaultValue(80)
		Else
			SetSliderDialogDefaultValue(AssCurtainOddsExtreme_Male)
		EndIf
		SetSliderDialogRange(AssCurtainOddsExtreme_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsUltra_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_AssCurtainUltraOddsMale")
	EndEvent 

	Event OnDefaultST()
		If AssCurtainOddsExtreme_Male <= 80
			AssCurtainOddsUltra_Male = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_AssCurtainUltraOddsMale")
		Else
			AssCurtainOddsUltra_Male = AssCurtainOddsExtreme_Male
			SetSliderOptionValueST(AssCurtainOddsExtreme_Male, "{0}%", False, "AND_AssCurtainUltraOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_AssCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsLow)
		If TransparentAssCurtainOdds >= 55
			SetSliderDialogDefaultValue(55)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOdds)
		EndIf
		SetSliderDialogRange(1, TransparentAssCurtainOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsLow = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainLowOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOdds >= 55
			TransparentAssCurtainOddsLow = 55
			SetSliderOptionValueST(55, "{0}%", False, "AND_TransparentAssCurtainLowOdds")
		Else
			TransparentAssCurtainOddsLow = TransparentAssCurtainOdds
			SetSliderOptionValueST(TransparentAssCurtainOdds, "{0}%", False, "AND_TransparentAssCurtainLowOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainLowOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsLow_Male)
		If TransparentAssCurtainOdds_Male >= 55
			SetSliderDialogDefaultValue(55)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentAssCurtainOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsLow_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainLowOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOdds_Male >= 55
			TransparentAssCurtainOddsLow_Male = 55
			SetSliderOptionValueST(55, "{0}%", False, "AND_TransparentAssCurtainLowOddsMale")
		Else
			TransparentAssCurtainOddsLow_Male = TransparentAssCurtainOdds_Male
			SetSliderOptionValueST(TransparentAssCurtainOdds_Male, "{0}%", False, "AND_TransparentAssCurtainLowOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOdds)
		If TransparentAssCurtainOddsLow <= 65 && TransparentAssCurtainOddsHigh >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TransparentAssCurtainOddsHigh < 65
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsHigh)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsLow)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOddsLow, TransparentAssCurtainOddsHigh)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsLow <= 65 && TransparentAssCurtainOddsHigh >= 65
			TransparentAssCurtainOdds = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_TransparentAssCurtainOdds")
		ElseIf TransparentAssCurtainOddsHigh < 65
			TransparentAssCurtainOdds = TransparentAssCurtainOddsHigh
			SetSliderOptionValueST(TransparentAssCurtainOddsHigh, "{0}%", False, "AND_TransparentAssCurtainOdds")
		Else
			TransparentAssCurtainOdds = TransparentAssCurtainOddsLow
			SetSliderOptionValueST(TransparentAssCurtainOddsLow, "{0}%", False, "AND_TransparentAssCurtainOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOdds_Male)
		If TransparentAssCurtainOddsLow_Male <= 65 && TransparentAssCurtainOddsHigh_Male >= 65
			SetSliderDialogDefaultValue(65)
		ElseIf TransparentAssCurtainOddsHigh_Male < 65
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsHigh_Male)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsLow_Male)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOddsLow_Male, TransparentAssCurtainOddsHigh_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsLow_Male <= 65 && TransparentAssCurtainOddsHigh_Male >= 65
			TransparentAssCurtainOdds_Male = 65
			SetSliderOptionValueST(65, "{0}%", False, "AND_TransparentAssCurtainOddsMale")
		ElseIf TransparentAssCurtainOddsHigh_Male < 65
			TransparentAssCurtainOdds_Male = TransparentAssCurtainOddsHigh_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsHigh_Male, "{0}%", False, "AND_TransparentAssCurtainOddsMale")
		Else
			TransparentAssCurtainOdds_Male = TransparentAssCurtainOddsLow_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsLow_Male, "{0}%", False, "AND_TransparentAssCurtainOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsHigh)
		If TransparentAssCurtainOdds <= 75 && TransparentAssCurtainOddsExtreme >= 75
			SetSliderDialogDefaultValue(75)
		ElseIf TransparentAssCurtainOddsExtreme < 75
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsExtreme)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOdds)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOdds, TransparentAssCurtainOddsExtreme)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsHigh = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainHighOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOdds <= 75 && TransparentAssCurtainOddsExtreme >= 75
			TransparentAssCurtainOddsHigh = 75
			SetSliderOptionValueST(75, "{0}%", False, "AND_TransparentAssCurtainHighOdds")
		ElseIf TransparentAssCurtainOddsExtreme < 75
			TransparentAssCurtainOddsHigh = TransparentAssCurtainOddsExtreme
			SetSliderOptionValueST(TransparentAssCurtainOddsExtreme, "{0}%", False, "AND_TransparentAssCurtainHighOdds")
		Else
			TransparentAssCurtainOddsHigh = TransparentAssCurtainOdds
			SetSliderOptionValueST(TransparentAssCurtainOdds, "{0}%", False, "AND_TransparentAssCurtainHighOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainHighOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsHigh_Male)
		If TransparentAssCurtainOdds_Male <= 75 && TransparentAssCurtainOddsExtreme_Male >= 75
			SetSliderDialogDefaultValue(75)
		ElseIf TransparentAssCurtainOddsExtreme_Male < 75
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsExtreme_Male)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOdds_Male, TransparentAssCurtainOddsExtreme_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsHigh_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainHighOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOdds_Male <= 75 && TransparentAssCurtainOddsExtreme_Male >= 75
			TransparentAssCurtainOddsHigh_Male = 75
			SetSliderOptionValueST(75, "{0}%", False, "AND_TransparentAssCurtainHighOddsMale")
		ElseIf TransparentAssCurtainOddsExtreme_Male < 75
			TransparentAssCurtainOddsHigh_Male = TransparentAssCurtainOddsExtreme_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsExtreme_Male, "{0}%", False, "AND_TransparentAssCurtainHighOddsMale")
		Else
			TransparentAssCurtainOddsHigh_Male = TransparentAssCurtainOdds_Male
			SetSliderOptionValueST(TransparentAssCurtainOdds_Male, "{0}%", False, "AND_TransparentAssCurtainHighOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsExtreme)
		If TransparentAssCurtainOddsHigh <= 85 && TransparentAssCurtainOddsUltra >= 85
			SetSliderDialogDefaultValue(85)
		ElseIf TransparentAssCurtainOddsUltra < 85
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsUltra)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsHigh)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOddsHigh, TransparentAssCurtainOddsUltra)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsExtreme = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainExtremeOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsHigh <= 85 && TransparentAssCurtainOddsUltra >= 85
			TransparentAssCurtainOddsExtreme = 85
			SetSliderOptionValueST(85, "{0}%", False, "AND_TransparentAssCurtainExtremeOdds")
		ElseIf TransparentAssCurtainOddsUltra < 85
			TransparentAssCurtainOddsExtreme = TransparentAssCurtainOddsUltra
			SetSliderOptionValueST(TransparentAssCurtainOddsUltra, "{0}%", False, "AND_TransparentAssCurtainExtremeOdds")
		Else
			TransparentAssCurtainOddsExtreme = TransparentAssCurtainOddsHigh
			SetSliderOptionValueST(TransparentAssCurtainOddsHigh, "{0}%", False, "AND_TransparentAssCurtainExtremeOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainExtremeOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsExtreme_Male)
		If TransparentAssCurtainOddsHigh_Male <= 85 && TransparentAssCurtainOddsUltra_Male >= 85
			SetSliderDialogDefaultValue(85)
		ElseIf TransparentAssCurtainOddsUltra_Male < 85
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsUltra_Male)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsHigh_Male)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOddsHigh_Male, TransparentAssCurtainOddsUltra_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsExtreme_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainExtremeOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsHigh_Male <= 85 && TransparentAssCurtainOddsUltra_Male >= 85
			TransparentAssCurtainOddsExtreme_Male = 85
			SetSliderOptionValueST(85, "{0}%", False, "AND_TransparentAssCurtainExtremeOddsMale")
		ElseIf TransparentAssCurtainOddsUltra_Male < 85
			TransparentAssCurtainOddsExtreme_Male = TransparentAssCurtainOddsUltra_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsUltra_Male, "{0}%", False, "AND_TransparentAssCurtainExtremeOddsMale")
		Else
			TransparentAssCurtainOddsExtreme_Male = TransparentAssCurtainOddsHigh_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsHigh_Male, "{0}%", False, "AND_TransparentAssCurtainExtremeOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsExtreme_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsUltra)
		If TransparentAssCurtainOddsExtreme <= 95
			SetSliderDialogDefaultValue(95)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsExtreme)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOddsExtreme, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsUltra = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainUltraOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsExtreme <= 95
			TransparentAssCurtainOddsUltra = 95
			SetSliderOptionValueST(95, "{0}%", False, "AND_TransparentAssCurtainUltraOdds")
		Else
			TransparentAssCurtainOddsUltra = TransparentAssCurtainOddsExtreme
			SetSliderOptionValueST(TransparentAssCurtainOddsExtreme, "{0}%", False, "AND_TransparentAssCurtainUltraOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_TransparentAssCurtainUltraOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsUltra_Male)
		If TransparentAssCurtainOddsExtreme_Male <= 95
			SetSliderDialogDefaultValue(95)
		Else
			SetSliderDialogDefaultValue(TransparentAssCurtainOddsExtreme_Male)
		EndIf
		SetSliderDialogRange(TransparentAssCurtainOddsExtreme_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsUltra_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentAssCurtainUltraOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentAssCurtainOddsExtreme_Male <= 95
			TransparentAssCurtainOddsUltra_Male = 95
			SetSliderOptionValueST(95, "{0}%", False, "AND_TransparentAssCurtainUltraOddsMale")
		Else
			TransparentAssCurtainOddsUltra_Male = TransparentAssCurtainOddsExtreme_Male
			SetSliderOptionValueST(TransparentAssCurtainOddsExtreme_Male, "{0}%", False, "AND_TransparentAssCurtainUltraOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentAssCurtainOddsUltra_Tooltip")
	EndEvent
EndState

State AND_CStringOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(CStringOdds)
		If TransparentCStringOdds_Low >= 60
			SetSliderDialogDefaultValue(60)
		Else
			SetSliderDialogDefaultValue(TransparentCStringOdds_Low)
		EndIf
		SetSliderDialogRange(1, TransparentCStringOdds_Low)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		CStringOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_CStringOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentCStringOdds_Low >= 60
			CStringOdds = 60
			SetSliderOptionValueST(60, "{0}%", False, "AND_CStringOdds")
		Else
			CStringOdds = TransparentCStringOdds_Low
			SetSliderOptionValueST(TransparentCStringOdds_Low, "{0}%", False, "AND_CStringOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_CstringOdds_Tooltip")
	EndEvent
EndState

State AND_CStringOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(CStringOdds_Male)
		If TransparentCStringOdds_Low_Male >= 60
			SetSliderDialogDefaultValue(60)
		Else
			SetSliderDialogDefaultValue(TransparentCStringOdds_Low_Male)
		EndIf
		SetSliderDialogRange(1, TransparentCStringOdds_Low_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		CStringOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_CStringOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentCStringOdds_Low_Male >= 60
			CStringOdds_Male = 60
			SetSliderOptionValueST(60, "{0}%", False, "AND_CStringOddsMale")
		Else
			CStringOdds_Male = TransparentCStringOdds_Low_Male
			SetSliderOptionValueST(TransparentCStringOdds_Low_Male, "{0}%", False, "AND_CStringOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_CstringOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentCStringOddsLow
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentCStringOdds_Low)
		If CStringOdds <= 70 && TransparentCStringOdds >= 70
			SetSliderDialogDefaultValue(70)
		ElseIf TransparentCStringOdds < 70
			SetSliderDialogDefaultValue(TransparentCStringOdds)
		Else
			SetSliderDialogDefaultValue(CStringOdds)
		EndIf
		SetSliderDialogRange(CStringOdds, TransparentCStringOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentCStringOdds_Low = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentCStringOddsLow")
	EndEvent 

	Event OnDefaultST()
		If CStringOdds <= 70 && TransparentCStringOdds >= 70
			TransparentCStringOdds_Low = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentCStringOddsLow")
		ElseIf TransparentCStringOdds < 70
			TransparentCStringOdds_Low = TransparentCStringOdds
			SetSliderOptionValueST(TransparentCStringOdds, "{0}%", False, "AND_TransparentCStringOddsLow")
		Else
			TransparentCStringOdds_Low = CStringOdds
			SetSliderOptionValueST(CStringOdds, "{0}%", False, "AND_TransparentCStringOddsLow")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentCstringOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentCStringOddsLowMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentCStringOdds_Low_Male)
		If CStringOdds_Male <= 70 && TransparentCStringOdds_Male >= 70
			SetSliderDialogDefaultValue(70)
		ElseIf TransparentCStringOdds_Male < 70
			SetSliderDialogDefaultValue(TransparentCStringOdds_Male)
		Else
			SetSliderDialogDefaultValue(CStringOdds_Male)
		EndIf
		SetSliderDialogRange(CStringOdds_Male, TransparentCStringOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentCStringOdds_Low_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentCStringOddsLowMale")
	EndEvent 

	Event OnDefaultST()
		If CStringOdds_Male <= 70 && TransparentCStringOdds_Male >= 70
			TransparentCStringOdds_Low_Male = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentCStringOddsLowMale")
		ElseIf TransparentCStringOdds_Male < 70
			TransparentCStringOdds_Low_Male = TransparentCStringOdds_Male
			SetSliderOptionValueST(TransparentCStringOdds_Male, "{0}%", False, "AND_TransparentCStringOddsLowMale")
		Else
			TransparentCStringOdds_Low_Male = CStringOdds_Male
			SetSliderOptionValueST(CStringOdds_Male, "{0}%", False, "AND_TransparentCStringOddsLowMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentCstringOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentCStringOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentCStringOdds)
		If TransparentCStringOdds_Low <= 80 && TransparentCStringOdds_High >= 80
			SetSliderDialogDefaultValue(80)
		ElseIf TransparentCStringOdds_High < 80
			SetSliderDialogDefaultValue(TransparentCStringOdds_High)
		Else
			SetSliderDialogDefaultValue(TransparentCStringOdds_Low)
		EndIf
		SetSliderDialogRange(TransparentCStringOdds_Low, TransparentCStringOdds_High)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentCStringOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentCStringOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentCStringOdds_Low <= 80 && TransparentCStringOdds_High >= 80
			TransparentCStringOdds = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_TransparentCStringOdds")
		ElseIf TransparentCStringOdds_High < 80
			TransparentCStringOdds = TransparentCStringOdds_High
			SetSliderOptionValueST(TransparentCStringOdds_High, "{0}%", False, "AND_TransparentCStringOdds")
		Else
			TransparentCStringOdds = TransparentCStringOdds_Low
			SetSliderOptionValueST(TransparentCStringOdds_Low, "{0}%", False, "AND_TransparentCStringOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentCstringOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentCStringOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentCStringOdds_Male)
		If TransparentCStringOdds_Low_Male <= 80 && TransparentCStringOdds_High_Male >= 80
			SetSliderDialogDefaultValue(80)
		ElseIf TransparentCStringOdds_High_Male < 80
			SetSliderDialogDefaultValue(TransparentCStringOdds_High_Male)
		Else
			SetSliderDialogDefaultValue(TransparentCStringOdds_Low_Male)
		EndIf
		SetSliderDialogRange(TransparentCStringOdds_Low_Male, TransparentCStringOdds_High_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentCStringOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentCStringOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentCStringOdds_Low_Male <= 80 && TransparentCStringOdds_High_Male >= 80
			TransparentCStringOdds_Male = 80
			SetSliderOptionValueST(80, "{0}%", False, "AND_TransparentCStringOddsMale")
		ElseIf TransparentCStringOdds_High_Male < 80
			TransparentCStringOdds_Male = TransparentCStringOdds_High_Male
			SetSliderOptionValueST(TransparentCStringOdds_High_Male, "{0}%", False, "AND_TransparentCStringOddsMale")
		Else
			TransparentCStringOdds_Male = TransparentCStringOdds_Low_Male
			SetSliderOptionValueST(TransparentCStringOdds_Low_Male, "{0}%", False, "AND_TransparentCStringOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentCstringOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentCStringOddsHigh
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentCStringOdds_High)
		If TransparentCStringOdds <= 90
			SetSliderDialogDefaultValue(90)
		Else
			SetSliderDialogDefaultValue(TransparentCStringOdds)
		EndIf
		SetSliderDialogRange(TransparentCStringOdds, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentCStringOdds_High = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentCStringOddsHigh")
	EndEvent 

	Event OnDefaultST()
		If TransparentCStringOdds <= 90
			TransparentCStringOdds_High = 90
			SetSliderOptionValueST(90, "{0}%", False, "AND_TransparentCStringOddsHigh")
		Else
			TransparentCStringOdds_High = TransparentCStringOdds
			SetSliderOptionValueST(TransparentCStringOdds, "{0}%", False, "AND_TransparentCStringOddsHigh")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentCstringOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentCStringOddsHighMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentCStringOdds_High_Male)
		If TransparentCStringOdds_Male <= 90
			SetSliderDialogDefaultValue(90)
		Else
			SetSliderDialogDefaultValue(TransparentCStringOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentCStringOdds_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentCStringOdds_High_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentCStringOddsHighMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentCStringOdds_Male <= 90
			TransparentCStringOdds_High_Male = 90
			SetSliderOptionValueST(90, "{0}%", False, "AND_TransparentCStringOddsHighMale")
		Else
			TransparentCStringOdds_High_Male = TransparentCStringOdds_Male
			SetSliderOptionValueST(TransparentCStringOdds_Male, "{0}%", False, "AND_TransparentCStringOddsHighMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentCstringOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentTopArmorOddsLow
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopArmorOdds_Low)
		If TransparentTopArmorOdds >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentTopArmorOdds)
		EndIf
		SetSliderDialogRange(1, TransparentTopArmorOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopArmorOdds_Low = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentTopArmorOddsLow")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopArmorOdds >= 30
			TransparentTopArmorOdds_Low = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentTopArmorOddsLow")
		Else
			TransparentTopArmorOdds_Low = TransparentTopArmorOdds
			SetSliderOptionValueST(TransparentTopArmorOdds, "{0}%", False, "AND_TransparentTopArmorOddsLow")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorTopOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentTopArmorOddsLowMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopArmorOdds_Low_Male)
		If TransparentTopArmorOdds_Male >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentTopArmorOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentTopArmorOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopArmorOdds_Low_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentTopArmorOddsLowMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopArmorOdds_Male >= 30
			TransparentTopArmorOdds_Low_Male = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentTopArmorOddsLowMale")
		Else
			TransparentTopArmorOdds_Low_Male = TransparentTopArmorOdds_Male
			SetSliderOptionValueST(TransparentTopArmorOdds_Male, "{0}%", False, "AND_TransparentTopArmorOddsLowMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorTopOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentTopArmorOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopArmorOdds)
		If TransparentTopArmorOdds_Low <= 50 && TransparentTopArmorOdds_High >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentTopArmorOdds_High < 50
			SetSliderDialogDefaultValue(TransparentTopArmorOdds_High)
		Else
			SetSliderDialogDefaultValue(TransparentTopArmorOdds_Low)
		EndIf
		SetSliderDialogRange(TransparentTopArmorOdds_Low, TransparentTopArmorOdds_High)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopArmorOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentTopArmorOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopArmorOdds_Low <= 50 && TransparentTopArmorOdds_High >= 50
			TransparentTopArmorOdds = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentTopArmorOdds")
		ElseIf TransparentTopArmorOdds_High < 50
			TransparentTopArmorOdds = TransparentTopArmorOdds_High
			SetSliderOptionValueST(TransparentTopArmorOdds_High, "{0}%", False, "AND_TransparentTopArmorOdds")
		Else
			TransparentTopArmorOdds = TransparentTopArmorOdds_Low
			SetSliderOptionValueST(TransparentTopArmorOdds_Low, "{0}%", False, "AND_TransparentTopArmorOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorTopOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentTopArmorOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopArmorOdds_Male)
		If TransparentTopArmorOdds_Low_Male <= 50 && TransparentTopArmorOdds_High_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentTopArmorOdds_High_Male < 50
			SetSliderDialogDefaultValue(TransparentTopArmorOdds_High_Male)
		Else
			SetSliderDialogDefaultValue(TransparentTopArmorOdds_Low_Male)
		EndIf
		SetSliderDialogRange(TransparentTopArmorOdds_Low_Male, TransparentTopArmorOdds_High_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopArmorOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentTopArmorOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopArmorOdds_Low_Male <= 50 && TransparentTopArmorOdds_High_Male >= 50
			TransparentTopArmorOdds_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentTopArmorOddsMale")
		ElseIf TransparentTopArmorOdds_High_Male < 50
			TransparentTopArmorOdds_Male = TransparentTopArmorOdds_High_Male
			SetSliderOptionValueST(TransparentTopArmorOdds_High_Male, "{0}%", False, "AND_TransparentTopArmorOddsMale")
		Else
			TransparentTopArmorOdds_Male = TransparentTopArmorOdds_Low_Male
			SetSliderOptionValueST(TransparentTopArmorOdds_Low_Male, "{0}%", False, "AND_TransparentTopArmorOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorTopOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentTopArmorOddsHigh
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopArmorOdds_High)
		If TransparentTopArmorOdds <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentTopArmorOdds)
		EndIf
		SetSliderDialogRange(TransparentTopArmorOdds, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopArmorOdds_High = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentTopArmorOddsHigh")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopArmorOdds <= 70
			TransparentTopArmorOdds_High = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentTopArmorOddsHigh")
		Else
			TransparentTopArmorOdds_High = TransparentTopArmorOdds
			SetSliderOptionValueST(TransparentTopArmorOdds, "{0}%", False, "AND_TransparentTopArmorOddsHigh")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorTopOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentTopArmorOddsHighMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopArmorOdds_High_Male)
		If TransparentTopArmorOdds_Male <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentTopArmorOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentTopArmorOdds_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopArmorOdds_High_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentTopArmorOddsHighMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentTopArmorOdds_Male <= 70
			TransparentTopArmorOdds_High_Male = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentTopArmorOddsHighMale")
		Else
			TransparentTopArmorOdds_High_Male = TransparentTopArmorOdds_Male
			SetSliderOptionValueST(TransparentTopArmorOdds_Male, "{0}%", False, "AND_TransparentTopArmorOddsHighMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorTopOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentBottomArmorOddsLow
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBottomArmorOdds_Low)
		If TransparentBottomArmorOdds >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds)
		EndIf
		SetSliderDialogRange(1, TransparentBottomArmorOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBottomArmorOdds_Low = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBottomArmorOddsLow")
	EndEvent 

	Event OnDefaultST()
		If TransparentBottomArmorOdds >= 30
			TransparentBottomArmorOdds_Low = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentBottomArmorOddsLow")
		Else
			TransparentBottomArmorOdds_Low = TransparentBottomArmorOdds
			SetSliderOptionValueST(TransparentBottomArmorOdds, "{0}%", False, "AND_TransparentBottomArmorOddsLow")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorBottomOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentBottomArmorOddsLowMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBottomArmorOdds_Low_Male)
		If TransparentBottomArmorOdds_Male >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentBottomArmorOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBottomArmorOdds_Low_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBottomArmorOddsLowMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentBottomArmorOdds_Male >= 30
			TransparentBottomArmorOdds_Low_Male = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentBottomArmorOddsLowMale")
		Else
			TransparentBottomArmorOdds_Low_Male = TransparentBottomArmorOdds_Male
			SetSliderOptionValueST(TransparentBottomArmorOdds_Male, "{0}%", False, "AND_TransparentBottomArmorOddsLowMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorBottomOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentBottomArmorOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBottomArmorOdds)
		If TransparentBottomArmorOdds_Low <= 50 && TransparentBottomArmorOdds_High >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentBottomArmorOdds_High < 50
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds_High)
		Else
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds_Low)
		EndIf
		SetSliderDialogRange(TransparentBottomArmorOdds_Low, TransparentBottomArmorOdds_High)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBottomArmorOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBottomArmorOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentBottomArmorOdds_Low <= 50 && TransparentBottomArmorOdds_High >= 50
			TransparentBottomArmorOdds = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentBottomArmorOdds")
		ElseIf TransparentBottomArmorOdds_High < 50
			TransparentBottomArmorOdds = TransparentBottomArmorOdds_High
			SetSliderOptionValueST(TransparentBottomArmorOdds_High, "{0}%", False, "AND_TransparentBottomArmorOdds")
		Else
			TransparentBottomArmorOdds = TransparentBottomArmorOdds_Low
			SetSliderOptionValueST(TransparentBottomArmorOdds_Low, "{0}%", False, "AND_TransparentBottomArmorOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorBottomOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentBottomArmorOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBottomArmorOdds_Male)
		If TransparentBottomArmorOdds_Low_Male <= 50 && TransparentBottomArmorOdds_High_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentBottomArmorOdds_High_Male < 50
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds_High_Male)
		Else
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds_Low_Male)
		EndIf
		SetSliderDialogRange(TransparentBottomArmorOdds_Low_Male, TransparentBottomArmorOdds_High_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBottomArmorOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBottomArmorOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentBottomArmorOdds_Low_Male <= 50 && TransparentBottomArmorOdds_High_Male >= 50
			TransparentBottomArmorOdds_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentBottomArmorOddsMale")
		ElseIf TransparentBottomArmorOdds_High_Male < 50
			TransparentBottomArmorOdds_Male = TransparentBottomArmorOdds_High_Male
			SetSliderOptionValueST(TransparentBottomArmorOdds_High_Male, "{0}%", False, "AND_TransparentBottomArmorOddsMale")
		Else
			TransparentBottomArmorOdds_Male = TransparentBottomArmorOdds_Low_Male
			SetSliderOptionValueST(TransparentBottomArmorOdds_Low_Male, "{0}%", False, "AND_TransparentBottomArmorOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorBottomOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentBottomArmorOddsHigh
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBottomArmorOdds_High)
		If TransparentBottomArmorOdds <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds)
		EndIf
		SetSliderDialogRange(TransparentBottomArmorOdds, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBottomArmorOdds_High = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBottomArmorOddsHigh")
	EndEvent 

	Event OnDefaultST()
		If TransparentBottomArmorOdds <= 70
			TransparentBottomArmorOdds_High = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentBottomArmorOddsHigh")
		Else
			TransparentBottomArmorOdds_High = TransparentBottomArmorOdds
			SetSliderOptionValueST(TransparentBottomArmorOdds, "{0}%", False, "AND_TransparentBottomArmorOddsHigh")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorBottomOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentBottomArmorOddsHighMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBottomArmorOdds_High_Male)
		If TransparentBottomArmorOdds_Male <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentBottomArmorOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentBottomArmorOdds_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBottomArmorOdds_High_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBottomArmorOddsHighMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentBottomArmorOdds_Male <= 70
			TransparentBottomArmorOdds_High_Male = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentBottomArmorOddsHighMale")
		Else
			TransparentBottomArmorOdds_High_Male = TransparentBottomArmorOdds_Male
			SetSliderOptionValueST(TransparentBottomArmorOdds_Male, "{0}%", False, "AND_TransparentBottomArmorOddsHighMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentArmorBottomOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentBraOddsLow
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBraOdds_Low)
		If TransparentBraOdds >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentBraOdds)
		EndIf
		SetSliderDialogRange(1, TransparentBraOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBraOdds_Low = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBraOddsLow")
	EndEvent 

	Event OnDefaultST()
		If TransparentBraOdds >= 30
			TransparentBraOdds_Low = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentBraOddsLow")
		Else
			TransparentBraOdds_Low = TransparentBraOdds
			SetSliderOptionValueST(TransparentBraOdds, "{0}%", False, "AND_TransparentBraOddsLow")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentBraOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentBraOddsLowMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBraOdds_Low_Male)
		If TransparentBraOdds_Male >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentBraOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentBraOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBraOdds_Low_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBraOddsLowMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentBraOdds_Male >= 30
			TransparentBraOdds_Low_Male = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentBraOddsLowMale")
		Else
			TransparentBraOdds_Low_Male = TransparentBraOdds_Male
			SetSliderOptionValueST(TransparentBraOdds_Male, "{0}%", False, "AND_TransparentBraOddsLowMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentBraOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentBraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBraOdds)
		If TransparentBraOdds_Low <= 50 && TransparentBraOdds_High >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentBraOdds_High < 50
			SetSliderDialogDefaultValue(TransparentBraOdds_High)
		Else
			SetSliderDialogDefaultValue(TransparentBraOdds_Low)
		EndIf
		SetSliderDialogRange(TransparentBraOdds_Low, TransparentBraOdds_High)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBraOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBraOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentBraOdds_Low <= 50 && TransparentBraOdds_High >= 50
			TransparentBraOdds = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentBraOdds")
		ElseIf TransparentBraOdds_High < 50
			TransparentBraOdds = TransparentBraOdds_High
			SetSliderOptionValueST(TransparentBraOdds_High, "{0}%", False, "AND_TransparentBraOdds")
		Else
			TransparentBraOdds = TransparentBraOdds_Low
			SetSliderOptionValueST(TransparentBraOdds_Low, "{0}%", False, "AND_TransparentBraOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentBraOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentBraOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBraOdds_Male)
		If TransparentBraOdds_Low_Male <= 50 && TransparentBraOdds_High_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentBraOdds_High_Male < 50
			SetSliderDialogDefaultValue(TransparentBraOdds_High_Male)
		Else
			SetSliderDialogDefaultValue(TransparentBraOdds_Low_Male)
		EndIf
		SetSliderDialogRange(TransparentBraOdds_Low_Male, TransparentBraOdds_High_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBraOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBraOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentBraOdds_Low_Male <= 50 && TransparentBraOdds_High_Male >= 50
			TransparentBraOdds_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentBraOddsMale")
		ElseIf TransparentBraOdds_High_Male < 50
			TransparentBraOdds_Male = TransparentBraOdds_High_Male
			SetSliderOptionValueST(TransparentBraOdds_High_Male, "{0}%", False, "AND_TransparentBraOddsMale")
		Else
			TransparentBraOdds_Male = TransparentBraOdds_Low_Male
			SetSliderOptionValueST(TransparentBraOdds_Low_Male, "{0}%", False, "AND_TransparentBraOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentBraOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentBraOddsHigh
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBraOdds_High)
		If TransparentBraOdds <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentBraOdds)
		EndIf
		SetSliderDialogRange(TransparentBraOdds, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBraOdds_High = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBraOddsHigh")
	EndEvent 

	Event OnDefaultST()
		If TransparentBraOdds <= 70
			TransparentBraOdds_High = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentBraOddsHigh")
		Else
			TransparentBraOdds_High = TransparentBraOdds
			SetSliderOptionValueST(TransparentBraOdds, "{0}%", False, "AND_TransparentBraOddsHigh")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentBraOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentBraOddsHighMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBraOdds_High_Male)
		If TransparentBraOdds_Male <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentBraOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentBraOdds_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBraOdds_High_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentBraOddsHighMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentBraOdds_Male <= 70
			TransparentBraOdds_High_Male = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentBraOddsHighMale")
		Else
			TransparentBraOdds_High_Male = TransparentBraOdds_Male
			SetSliderOptionValueST(TransparentBraOdds_Male, "{0}%", False, "AND_TransparentBraOddsHighMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentBraOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentUnderwearOddsLow
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentUnderwearOdds_Low)
		If TransparentUnderwearOdds >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentUnderwearOdds)
		EndIf
		SetSliderDialogRange(1, TransparentUnderwearOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentUnderwearOdds_Low = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentUnderwearOddsLow")
	EndEvent 

	Event OnDefaultST()
		If TransparentUnderwearOdds >= 30
			TransparentUnderwearOdds_Low = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentUnderwearOddsLow")
		Else
			TransparentUnderwearOdds_Low = TransparentUnderwearOdds
			SetSliderOptionValueST(TransparentUnderwearOdds, "{0}%", False, "AND_TransparentUnderwearOddsLow")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentUnderwearOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentUnderwearOddsLowMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentUnderwearOdds_Low_Male)
		If TransparentUnderwearOdds >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentUnderwearOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentUnderwearOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentUnderwearOdds_Low_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentUnderwearOddsLowMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentUnderwearOdds_Male >= 30
			TransparentUnderwearOdds_Low_Male = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentUnderwearOddsLowMale")
		Else
			TransparentUnderwearOdds_Low_Male = TransparentUnderwearOdds_Male
			SetSliderOptionValueST(TransparentUnderwearOdds_Male, "{0}%", False, "AND_TransparentUnderwearOddsLowMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentUnderwearOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentUnderwearOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentUnderwearOdds)
		If TransparentUnderwearOdds_Low <= 50 && TransparentUnderwearOdds_High >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentUnderwearOdds_High < 50
			SetSliderDialogDefaultValue(TransparentUnderwearOdds_High)
		Else
			SetSliderDialogDefaultValue(TransparentUnderwearOdds_Low)
		EndIf
		SetSliderDialogRange(TransparentUnderwearOdds_Low, TransparentUnderwearOdds_High)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentUnderwearOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentUnderwearOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentUnderwearOdds_Low <= 50 && TransparentUnderwearOdds_High >= 50
			TransparentUnderwearOdds = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentUnderwearOdds")
		ElseIf TransparentUnderwearOdds_High < 50
			TransparentUnderwearOdds = TransparentUnderwearOdds_High
			SetSliderOptionValueST(TransparentUnderwearOdds_High, "{0}%", False, "AND_TransparentUnderwearOdds")
		Else
			TransparentUnderwearOdds = TransparentUnderwearOdds_Low
			SetSliderOptionValueST(TransparentUnderwearOdds_Low, "{0}%", False, "AND_TransparentUnderwearOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentUnderwearOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentUnderwearOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentUnderwearOdds_Male)
		If TransparentUnderwearOdds_Low_Male <= 50 && TransparentUnderwearOdds_High_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentUnderwearOdds_High_Male < 50
			SetSliderDialogDefaultValue(TransparentUnderwearOdds_High_Male)
		Else
			SetSliderDialogDefaultValue(TransparentUnderwearOdds_Low_Male)
		EndIf
		SetSliderDialogRange(TransparentUnderwearOdds_Low_Male, TransparentUnderwearOdds_High_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentUnderwearOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentUnderwearOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentUnderwearOdds_Low_Male <= 50 && TransparentUnderwearOdds_High_Male >= 50
			TransparentUnderwearOdds_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentUnderwearOddsMale")
		ElseIf TransparentUnderwearOdds_High_Male < 50
			TransparentUnderwearOdds_Male = TransparentUnderwearOdds_High_Male
			SetSliderOptionValueST(TransparentUnderwearOdds_High_Male, "{0}%", False, "AND_TransparentUnderwearOddsMale")
		Else
			TransparentUnderwearOdds_Male = TransparentUnderwearOdds_Low_Male
			SetSliderOptionValueST(TransparentUnderwearOdds_Low_Male, "{0}%", False, "AND_TransparentUnderwearOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentUnderwearOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentUnderwearOddsHigh
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentUnderwearOdds_High)
		If TransparentUnderwearOdds <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentUnderwearOdds)
		EndIf
		SetSliderDialogRange(TransparentUnderwearOdds, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentUnderwearOdds_High = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentUnderwearOddsHigh")
	EndEvent 

	Event OnDefaultST()
		If TransparentUnderwearOdds <= 70
			TransparentUnderwearOdds_High = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentUnderwearOddsHigh")
		Else
			TransparentUnderwearOdds_High = TransparentUnderwearOdds
			SetSliderOptionValueST(TransparentUnderwearOdds, "{0}%", False, "AND_TransparentUnderwearOddsHigh")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentUnderwearOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentUnderwearOddsHighMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentUnderwearOdds_High_Male)
		If TransparentUnderwearOdds_Male <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentUnderwearOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentUnderwearOdds_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentUnderwearOdds_High_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentUnderwearOddsHighMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentUnderwearOdds_Male <= 70
			TransparentUnderwearOdds_High_Male = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentUnderwearOddsHighMale")
		Else
			TransparentUnderwearOdds_High_Male = TransparentUnderwearOdds_Male
			SetSliderOptionValueST(TransparentUnderwearOdds_Male, "{0}%", False, "AND_TransparentUnderwearOddsHighMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentUnderwearOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentHotpantsOddsLow
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentHotpantsOdds_Low)
		If TransparentHotpantsOdds >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentHotpantsOdds)
		EndIf
		SetSliderDialogRange(1, TransparentHotpantsOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentHotpantsOdds_Low = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentHotpantsOddsLow")
	EndEvent 

	Event OnDefaultST()
		If TransparentHotpantsOdds >= 30
			TransparentHotpantsOdds_Low = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentHotpantsOddsLow")
		Else
			TransparentHotpantsOdds_Low = TransparentHotpantsOdds
			SetSliderOptionValueST(TransparentHotpantsOdds, "{0}%", False, "AND_TransparentHotpantsOddsLow")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentHotpantsOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentHotpantsOddsLowMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentHotpantsOdds_Low_Male)
		If TransparentHotpantsOdds_Male >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentHotpantsOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentHotpantsOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentHotpantsOdds_Low_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentHotpantsOddsLowMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentHotpantsOdds_Male >= 30
			TransparentHotpantsOdds_Low_Male = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentHotpantsOddsLowMale")
		Else
			TransparentHotpantsOdds_Low_Male = TransparentHotpantsOdds_Male
			SetSliderOptionValueST(TransparentHotpantsOdds_Male, "{0}%", False, "AND_TransparentHotpantsOddsLowMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentHotpantsOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentHotpantsOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentHotpantsOdds)
		If TransparentHotpantsOdds_Low <= 50 && TransparentHotpantsOdds_High >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentHotpantsOdds_High < 50
			SetSliderDialogDefaultValue(TransparentHotpantsOdds_High)
		Else
			SetSliderDialogDefaultValue(TransparentHotpantsOdds_Low)
		EndIf
		SetSliderDialogRange(TransparentHotpantsOdds_Low, TransparentHotpantsOdds_High)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentHotpantsOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentHotpantsOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentHotpantsOdds_Low <= 50 && TransparentHotpantsOdds_High >= 50
			TransparentHotpantsOdds = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentHotpantsOdds")
		ElseIf TransparentHotpantsOdds_High < 50
			TransparentHotpantsOdds = TransparentHotpantsOdds_High
			SetSliderOptionValueST(TransparentHotpantsOdds_High, "{0}%", False, "AND_TransparentHotpantsOdds")
		Else
			TransparentHotpantsOdds = TransparentHotpantsOdds_Low
			SetSliderOptionValueST(TransparentHotpantsOdds_Low, "{0}%", False, "AND_TransparentHotpantsOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentHotpantsOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentHotpantsOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentHotpantsOdds_Male)
		If TransparentHotpantsOdds_Low_Male <= 50 && TransparentHotpantsOdds_High_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentHotpantsOdds_High_Male < 50
			SetSliderDialogDefaultValue(TransparentHotpantsOdds_High_Male)
		Else
			SetSliderDialogDefaultValue(TransparentHotpantsOdds_Low_Male)
		EndIf
		SetSliderDialogRange(TransparentHotpantsOdds_Low_Male, TransparentHotpantsOdds_High_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentHotpantsOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentHotpantsOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentHotpantsOdds_Low_Male <= 50 && TransparentHotpantsOdds_High_Male >= 50
			TransparentHotpantsOdds_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentHotpantsOddsMale")
		ElseIf TransparentHotpantsOdds_High_Male < 50
			TransparentHotpantsOdds_Male = TransparentHotpantsOdds_High_Male
			SetSliderOptionValueST(TransparentHotpantsOdds_High_Male, "{0}%", False, "AND_TransparentHotpantsOddsMale")
		Else
			TransparentHotpantsOdds_Male = TransparentHotpantsOdds_Low_Male
			SetSliderOptionValueST(TransparentHotpantsOdds_Low_Male, "{0}%", False, "AND_TransparentHotpantsOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentHotpantsOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentHotpantsOddsHigh
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentHotpantsOdds_High)
		If TransparentHotpantsOdds <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentHotpantsOdds)
		EndIf
		SetSliderDialogRange(TransparentHotpantsOdds, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentHotpantsOdds_High = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentHotpantsOddsHigh")
	EndEvent 

	Event OnDefaultST()
		If TransparentHotpantsOdds <= 70
			TransparentHotpantsOdds_High = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentHotpantsOddsHigh")
		Else
			TransparentHotpantsOdds_High = TransparentHotpantsOdds
			SetSliderOptionValueST(TransparentHotpantsOdds, "{0}%", False, "AND_TransparentHotpantsOddsHigh")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentHotpantsOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentHotpantsOddsHighMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentHotpantsOdds_High_Male)
		If TransparentHotpantsOdds_Male <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentHotpantsOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentHotpantsOdds_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentHotpantsOdds_High_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentHotpantsOddsHighMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentHotpantsOdds_Male <= 70
			TransparentHotpantsOdds_High_Male = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentHotpantsOddsHighMale")
		Else
			TransparentHotpantsOdds_High_Male = TransparentHotpantsOdds_Male
			SetSliderOptionValueST(TransparentHotpantsOdds_Male, "{0}%", False, "AND_TransparentHotpantsOddsHighMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentHotpantsOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentShowgirlSkirtOddsLow
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentShowgirlSkirtOdds_Low)
		If TransparentShowgirlSkirtOdds >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds)
		EndIf
		SetSliderDialogRange(1, TransparentShowgirlSkirtOdds)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentShowgirlSkirtOdds_Low = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentShowgirlSkirtOddsLow")
	EndEvent 

	Event OnDefaultST()
		If TransparentShowgirlSkirtOdds >= 30
			TransparentShowgirlSkirtOdds_Low = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentShowgirlSkirtOddsLow")
		Else
			TransparentShowgirlSkirtOdds_Low = TransparentShowgirlSkirtOdds
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds, "{0}%", False, "AND_TransparentShowgirlSkirtOddsLow")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentShowgirlSkirtOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentShowgirlSkirtOddsLowMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentShowgirlSkirtOdds_Low_Male)
		If TransparentShowgirlSkirtOdds_Male >= 30
			SetSliderDialogDefaultValue(30)
		Else
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds_Male)
		EndIf
		SetSliderDialogRange(1, TransparentShowgirlSkirtOdds_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentShowgirlSkirtOdds_Low_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentShowgirlSkirtOddsLowMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentShowgirlSkirtOdds_Male >= 30
			TransparentShowgirlSkirtOdds_Low_Male = 30
			SetSliderOptionValueST(30, "{0}%", False, "AND_TransparentShowgirlSkirtOddsLowMale")
		Else
			TransparentShowgirlSkirtOdds_Low_Male = TransparentShowgirlSkirtOdds_Male
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds_Male, "{0}%", False, "AND_TransparentShowgirlSkirtOddsLowMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentShowgirlSkirtOddsLow_Tooltip")
	EndEvent
EndState

State AND_TransparentShowgirlSkirtOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentShowgirlSkirtOdds)
		If TransparentShowgirlSkirtOdds_Low <= 50 && TransparentShowgirlSkirtOdds_High >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentShowgirlSkirtOdds_High < 50
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds_High)
		Else
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds_Low)
		EndIf
		SetSliderDialogRange(TransparentShowgirlSkirtOdds_Low, TransparentShowgirlSkirtOdds_High)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentShowgirlSkirtOdds = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentShowgirlSkirtOdds")
	EndEvent 

	Event OnDefaultST()
		If TransparentShowgirlSkirtOdds_Low <= 50 && TransparentShowgirlSkirtOdds_High >= 50
			TransparentShowgirlSkirtOdds = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentShowgirlSkirtOdds")
		ElseIf TransparentShowgirlSkirtOdds_High < 50
			TransparentShowgirlSkirtOdds = TransparentShowgirlSkirtOdds_High
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds_High, "{0}%", False, "AND_TransparentShowgirlSkirtOdds")
		Else
			TransparentShowgirlSkirtOdds = TransparentShowgirlSkirtOdds_Low
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds_Low, "{0}%", False, "AND_TransparentShowgirlSkirtOdds")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentShowgirlSkirtOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentShowgirlSkirtOddsMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentShowgirlSkirtOdds_Male)
		If TransparentShowgirlSkirtOdds_Low_Male <= 50 && TransparentShowgirlSkirtOdds_High_Male >= 50
			SetSliderDialogDefaultValue(50)
		ElseIf TransparentShowgirlSkirtOdds_High_Male < 50
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds_High_Male)
		Else
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds_Low_Male)
		EndIf
		SetSliderDialogRange(TransparentShowgirlSkirtOdds_Low_Male, TransparentShowgirlSkirtOdds_High_Male)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentShowgirlSkirtOdds_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentShowgirlSkirtOddsMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentShowgirlSkirtOdds_Low_Male <= 50 && TransparentShowgirlSkirtOdds_High_Male >= 50
			TransparentShowgirlSkirtOdds_Male = 50
			SetSliderOptionValueST(50, "{0}%", False, "AND_TransparentShowgirlSkirtOddsMale")
		ElseIf TransparentShowgirlSkirtOdds_High_Male < 50
			TransparentShowgirlSkirtOdds = TransparentShowgirlSkirtOdds_High_Male
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds_High_Male, "{0}%", False, "AND_TransparentShowgirlSkirtOddsMale")
		Else
			TransparentShowgirlSkirtOdds_Male = TransparentShowgirlSkirtOdds_Low_Male
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds_Low_Male, "{0}%", False, "AND_TransparentShowgirlSkirtOddsMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentShowgirlSkirtOdds_Tooltip")
	EndEvent
EndState

State AND_TransparentShowgirlSkirtOddsHigh
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentShowgirlSkirtOdds_High)
		If TransparentShowgirlSkirtOdds <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds)
		EndIf
		SetSliderDialogRange(TransparentShowgirlSkirtOdds, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentShowgirlSkirtOdds_High = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentShowgirlSkirtOddsHigh")
	EndEvent 

	Event OnDefaultST()
		If TransparentShowgirlSkirtOdds <= 70
			TransparentShowgirlSkirtOdds_High = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentShowgirlSkirtOddsHigh")
		Else
			TransparentShowgirlSkirtOdds_High = TransparentShowgirlSkirtOdds
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds, "{0}%", False, "AND_TransparentShowgirlSkirtOddsHigh")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentShowgirlSkirtOddsHigh_Tooltip")
	EndEvent
EndState

State AND_TransparentShowgirlSkirtOddsHighMale
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentShowgirlSkirtOdds_High_Male)
		If TransparentShowgirlSkirtOdds_Male <= 70
			SetSliderDialogDefaultValue(70)
		Else
			SetSliderDialogDefaultValue(TransparentShowgirlSkirtOdds_Male)
		EndIf
		SetSliderDialogRange(TransparentShowgirlSkirtOdds_Male, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentShowgirlSkirtOdds_High_Male = value as Int
		SetSliderOptionValueST(value, "{0}%", False, "AND_TransparentShowgirlSkirtOddsHighMale")
	EndEvent 

	Event OnDefaultST()
		If TransparentShowgirlSkirtOdds_Male <= 70
			TransparentShowgirlSkirtOdds_High_Male = 70
			SetSliderOptionValueST(70, "{0}%", False, "AND_TransparentShowgirlSkirtOddsHighMale")
		Else
			TransparentShowgirlSkirtOdds_High_Male = TransparentShowgirlSkirtOdds_Male
			SetSliderOptionValueST(TransparentShowgirlSkirtOdds_Male, "{0}%", False, "AND_TransparentShowgirlSkirtOddsHighMale")
		EndIf
	EndEvent
	
	Event OnHighlightST()
		SetInfoText("$AND_TransparentShowgirlSkirtOddsHigh_Tooltip")
	EndEvent
EndState