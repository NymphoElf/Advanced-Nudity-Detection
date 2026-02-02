ScriptName AND_Core extends Quest

AND_MCM Property Config Auto
AND_MaleArmorScan Property MaleScan Auto
AND_FemaleArmorScan Property FemaleScan Auto
AND_PlayerScript Property PlayerScript Auto
AND_Modesty_Manager Property ModestyManager Auto
AND_Logger Property Logger Auto

SLSF_Reloaded_MCM Property SLSFR_Config = None Auto Hidden
SLSF_Reloaded_ModIntegration Property SLSFR_Mods = None Auto Hidden

sslActorStats Property SexlabStats = None Auto Hidden

Actor Property Rosa Auto Hidden
ActorBase Property PlayerBase Auto

Bool Property MainRollRunning Auto Hidden
Bool Property EquipScanArmed Auto Hidden
Bool Property EnableDynamicModesty = False Auto Hidden

Faction Property AND_ShowingAssFaction Auto
Faction Property AND_ShowingChestFaction Auto
Faction Property AND_ShowingGenitalsFaction Auto 
Faction Property AND_ShowingBraFaction Auto
Faction Property AND_ShowingUnderwearFaction Auto
Faction Property AND_ToplessFaction Auto
Faction Property AND_BottomlessFaction Auto
Faction Property AND_NudeActorFaction Auto

Faction Property ModestyFaction Auto

Faction Property TopModestyFaction Auto ;0 = Shy, 1 = Comfortable, 2 = Bold, 3 = Shameless, 4 = Permanent
Faction Property BottomModestyFaction Auto ;0 = Shy, 1 = Comfortable, 2 = Bold, 3 = Shameless, 4 = Permanent

Faction Property ShyWithMale Auto ;0 = No, 1 = Yes
Faction Property ShyWithFemale Auto ;0 = No, 1 = Yes

Faction Property FlashingChestCurtain Auto
Faction Property FlashingPelvicCurtain Auto
Faction Property FlashingAssCurtain Auto

Faction Property FlashingTop Auto
Faction Property FlashingBra Auto

Faction Property FlashingBottom Auto
Faction Property FlashingUnderwear Auto
Faction Property FlashingHotpants Auto
Faction Property FlashingSkirt Auto
Faction Property FlashingCString Auto

Keyword Property AND_ArmorTop Auto
Keyword Property AND_ArmorTopT_Low Auto
Keyword Property AND_ArmorTopT Auto
Keyword Property AND_ArmorTopT_High Auto
Keyword Property AND_ArmorBottom Auto
Keyword Property AND_ArmorBottomT_Low Auto
Keyword Property AND_ArmorBottomT Auto
Keyword Property AND_ArmorBottomT_High Auto
Keyword Property AND_Bra Auto
Keyword Property AND_BraT_Low Auto
Keyword Property AND_BraT Auto
Keyword Property AND_BraT_High Auto
Keyword Property AND_CString Auto
Keyword Property AND_CStringT_Low Auto
Keyword Property AND_CStringT Auto
Keyword Property AND_CStringT_High Auto
Keyword Property AND_Hotpants Auto
Keyword Property AND_HotpantsT_Low Auto
Keyword Property AND_HotpantsT Auto
Keyword Property AND_HotpantsT_High Auto
Keyword Property AND_Microskirt Auto
Keyword Property AND_Miniskirt Auto
Keyword Property AND_MiniskirtT Auto
Keyword Property AND_ShowgirlSkirt Auto
Keyword Property AND_ShowgirlSkirtT_Low Auto
Keyword Property AND_ShowgirlSkirtT Auto
Keyword Property AND_ShowgirlSkirtT_High Auto
Keyword Property AND_Thong Auto
Keyword Property AND_ThongT_Low Auto
Keyword Property AND_ThongT Auto
Keyword Property AND_ThongT_High Auto
Keyword Property AND_Underwear Auto
Keyword Property AND_UnderwearT_Low Auto
Keyword Property AND_UnderwearT Auto
Keyword Property AND_UnderwearT_High Auto
Keyword Property AND_Ignore Auto

Keyword Property AND_ArmorBottom_NoCover Auto
Keyword Property AND_ArmorTop_NoCover Auto
Keyword Property AND_Bra_NoCover Auto
Keyword Property AND_Underwear_NoCover Auto
Keyword Property AND_Thong_NoCover Auto

Keyword Property AND_NearlyNaked Auto
Keyword Property AND_NipplePasties Auto
Keyword Property AND_VaginaPasties Auto
Keyword Property AND_EffectivelyNaked Auto

Keyword Property AND_AssCurtain Auto
Keyword Property AND_AssCurtainT Auto
Keyword Property AND_ChestCurtain Auto
Keyword Property AND_ChestCurtainT Auto
Keyword Property AND_PelvicCurtain Auto
Keyword Property AND_PelvicCurtainT Auto

Keyword Property AND_ArmorTop_Male Auto
Keyword Property AND_ArmorTopT_Low_Male Auto
Keyword Property AND_ArmorTopT_Male Auto
Keyword Property AND_ArmorTopT_High_Male Auto
Keyword Property AND_ArmorBottom_Male Auto
Keyword Property AND_ArmorBottomT_Low_Male Auto
Keyword Property AND_ArmorBottomT_Male Auto
Keyword Property AND_ArmorBottomT_High_Male Auto
Keyword Property AND_Bra_Male Auto
Keyword Property AND_BraT_Low_Male Auto
Keyword Property AND_BraT_Male Auto
Keyword Property AND_BraT_High_Male Auto
Keyword Property AND_BananaHammock Auto
Keyword Property AND_BananaHammockT_Low Auto
Keyword Property AND_BananaHammockT Auto
Keyword Property AND_BananaHammockT_High Auto
Keyword Property AND_Hotpants_Male Auto
Keyword Property AND_HotpantsT_Low_Male Auto
Keyword Property AND_HotpantsT_Male Auto
Keyword Property AND_HotpantsT_High_Male Auto
Keyword Property AND_Microskirt_Male Auto
Keyword Property AND_Miniskirt_Male Auto
Keyword Property AND_MiniskirtT_Male Auto
Keyword Property AND_HimboSkirt Auto
Keyword Property AND_HimboSkirtT_Low Auto
Keyword Property AND_HimboSkirtT Auto
Keyword Property AND_HimboSkirtT_High Auto
Keyword Property AND_Thong_Male Auto
Keyword Property AND_ThongT_Low_Male Auto
Keyword Property AND_ThongT_Male Auto
Keyword Property AND_ThongT_High_Male Auto
Keyword Property AND_Underwear_Male Auto
Keyword Property AND_UnderwearT_Low_Male Auto
Keyword Property AND_UnderwearT_Male Auto
Keyword Property AND_UnderwearT_High_Male Auto

Keyword Property AND_ArmorBottom_NoCover_Male Auto
Keyword Property AND_ArmorTop_NoCover_Male Auto
Keyword Property AND_Bra_NoCover_Male Auto
Keyword Property AND_Underwear_NoCover_Male Auto
Keyword Property AND_Thong_NoCover_Male Auto

Keyword Property AND_NearlyNaked_Male Auto
Keyword Property AND_NipplePasties_Male Auto
Keyword Property AND_EffectivelyNaked_Male Auto

Keyword Property AND_AssCurtain_Male Auto
Keyword Property AND_AssCurtainT_Male Auto
Keyword Property AND_ChestCurtain_Male Auto
Keyword Property AND_ChestCurtainT_Male Auto
Keyword Property AND_PelvicCurtain_Male Auto
Keyword Property AND_PelvicCurtainT_Male Auto

Keyword Property AND_CoversAll Auto
Keyword Property AND_CoversAll_Male Auto

Keyword Property AND_ChestFlashRiskLow Auto
Keyword Property AND_ChestFlashRisk Auto
Keyword Property AND_ChestFlashRiskHigh Auto
Keyword Property AND_ChestFlashRiskExtreme Auto
Keyword Property AND_ChestFlashRiskUltra Auto
Keyword Property AND_PelvicFlashRiskLow Auto
Keyword Property AND_PelvicFlashRisk Auto
Keyword Property AND_PelvicFlashRiskHigh Auto
Keyword Property AND_PelvicFlashRiskExtreme Auto
Keyword Property AND_PelvicFlashRiskUltra Auto
Keyword Property AND_AssFlashRiskLow Auto
Keyword Property AND_AssFlashRisk Auto
Keyword Property AND_AssFlashRiskHigh Auto
Keyword Property AND_AssFlashRiskExtreme Auto
Keyword Property AND_AssFlashRiskUltra Auto

Keyword Property AND_ChestFlashRiskLow_Male Auto
Keyword Property AND_ChestFlashRisk_Male Auto
Keyword Property AND_ChestFlashRiskHigh_Male Auto
Keyword Property AND_ChestFlashRiskExtreme_Male Auto
Keyword Property AND_ChestFlashRiskUltra_Male Auto
Keyword Property AND_PelvicFlashRiskLow_Male Auto
Keyword Property AND_PelvicFlashRisk_Male Auto
Keyword Property AND_PelvicFlashRiskHigh_Male Auto
Keyword Property AND_PelvicFlashRiskExtreme_Male Auto
Keyword Property AND_PelvicFlashRiskUltra_Male Auto
Keyword Property AND_AssFlashRiskLow_Male Auto
Keyword Property AND_AssFlashRisk_Male Auto
Keyword Property AND_AssFlashRiskHigh_Male Auto
Keyword Property AND_AssFlashRiskExtreme_Male Auto
Keyword Property AND_AssFlashRiskUltra_Male Auto

Int Property TopCurtainRoll Auto Hidden
Int Property PelvicCurtainRoll Auto Hidden
Int Property AssCurtainRoll Auto Hidden
Int Property CStringRoll Auto Hidden
Int Property TopTransparentRoll Auto Hidden
Int Property BottomTransparentRoll Auto Hidden
Int Property BraTransparentRoll Auto Hidden
Int Property UnderwearTransparentRoll Auto Hidden
Int Property HotpantsTransparentRoll Auto Hidden
Int Property ShowgirlTransparentRoll Auto Hidden

Int Property NPCTopCurtainRoll Auto Hidden
Int Property NPCPelvicCurtainRoll Auto Hidden
Int Property NPCAssCurtainRoll Auto Hidden
Int Property NPCCStringRoll Auto Hidden
Int Property NPCTopTransparentRoll Auto Hidden
Int Property NPCBottomTransparentRoll Auto Hidden
Int Property NPCBraTransparentRoll Auto Hidden
Int Property NPCUnderwearTransparentRoll Auto Hidden
Int Property NPCHotpantsTransparentRoll Auto Hidden
Int Property NPCShowgirlTransparentRoll Auto Hidden

Int Property TransformOverwrite = 0 Auto Hidden

Spell Property NPCScanSpell Auto

Bool Property SLSFR_Found Auto Hidden
Bool Property DFFMA_Found Auto Hidden
Bool Property RosaExists Auto Hidden
Bool Property SexlabInstalled Auto Hidden

Race Property BaseRace Auto Hidden

Race[] Property DefaultRaces Auto
Race[] Property TransformedRaces Auto
Race[] Property CustomTransform Auto Hidden

GlobalVariable Property WICommentChanceNaked Auto

Event OnInit()
	Startup()
EndEvent

Function Startup()
	ModCheck()
	CustomTransform = new Race[10]
	AND_Logger.FastLog("<Core> [Startup] Completed!", Logger.CRITICAL)
EndFunction

Event OnUpdate()
	If PlayerBase.GetSex() == 0 ;Male
		AND_Logger.FastLog("<Core> [OnUpdate] Send Male Scan")
		
		MaleScan.FullAnalyze()
		Config.SetMaleCoverage()
	Else
		AND_Logger.FastLog("<Core> [OnUpdate] Send Female Scan")
		
		FemaleScan.FullAnalyze()
		Config.SetFemaleCoverage()
	EndIf
	
	If SLSFR_Found == True
		SLSFR_NakedCommentPreCheck()
	Else
		WICommentChanceNaked.SetValue(NakedCommentChance(False))
	EndIf
	
	Utility.Wait(1.0)
	EquipScanArmed = False
EndEvent

Function ModCheck()
	If Game.GetModByName("SexLab.esm") != 255
		AND_Logger.FastLog("<Core> [Mod Check] SexLab.esm Found")
		SexlabInstalled = True
		SexlabStats = Game.GetFormFromFile(0xD62, "SexLab.esm") as sslActorStats ;GetSexlabStats()
	Else
		AND_Logger.FastLog("<Core> [Mod Check] SexLab.esm NOT Found")
		SexlabInstalled = False
		SexlabStats = None
	EndIf
	
	If Game.GetModByName("SLSF Reloaded.esp") != 255
		AND_Logger.FastLog("<Core> [Mod Check] SLSF Reloaded.esp Found")
		SLSFR_Found = True
		SLSFR_Config = Game.GetFormFromFile(0x809, "SLSF Reloaded.esp") as SLSF_Reloaded_MCM
		SLSFR_Mods = Game.GetFormFromFile(0x808, "SLSF Reloaded.esp") as SLSF_Reloaded_ModIntegration
	Else
		AND_Logger.FastLog("<Core> [Mod Check] SLSF Reloaded.esp NOT Found")
		SLSFR_Found = False
		SLSFR_Config = None
		SLSFR_Mods = None
	EndIf
	
	If Game.GetModByName("Modesty_Keyword.esp") != 255
		AND_Logger.FastLog("<Core> [Mod Check] Modesty_Keyword.esp (aka DFFMA) Found")
		DFFMA_Found = True
		
		If ModestyManager.RegisteredForUpdate == False
			ModestyManager.RegisterForUpdateGameTime(1.0)
			ModestyManager.RegisteredForUpdate = True
		EndIf
	Else
		AND_Logger.FastLog("<Core> [Mod Check] Modesty_Keyword.esp (aka DFFMA) NOT Found")
		DFFMA_Found = False
	EndIf
	
	If Game.GetModByName("RosaFollower.esp") != 255
		AND_Logger.FastLog("<Core> [Mod Check] RosaFollower.esp Found")
		RosaExists = True
		Rosa = Game.GetFormFromFile(0xD62, "RosaFollower.esp") as Actor
	Else
		AND_Logger.FastLog("<Core> [Mod Check] RosaFollower.esp NOT Found")
		RosaExists = False
		Rosa = None
	EndIf
EndFunction

Function AddCustomTransform(Race TransformRace)
	Int Index = CustomTransform.Find(None)
	If Index < 0
		AND_Logger.FastLog("<Core> [AddCustomTransform] - Custom Transform List Full! Oldest Entry will be overwritten!", Logger.WARNING)
		Debug.MessageBox("A.N.D. MESSAGE - Custom Transform List Full! Oldest Entry will be overwritten!")
		Index = TransformOverwrite
		If TransformOverwrite < 9
			TransformOverwrite += 1
		Else
			TransformOverwrite = 0
		EndIf
	EndIf
	
	CustomTransform[Index] = TransformRace
EndFunction

Function AND_MovementDiceRoll(Bool Sprinting)
	AND_Logger.FastLog("<Core> [AND_MovementDiceRoll] - START")
	AND_Logger.FastLog("<Core> [AND_MovementDiceRoll] - Sprinting = " + Sprinting)
	
	Bool WearingChestCurtain = PlayerScript.IsWearingChestCurtain
	Bool WearingAssCurtain = PlayerScript.IsWearingAssCurtain
	Bool WearingPelvicCurtain = PlayerScript.IsWearingPelvicCurtain
	
	If WearingChestCurtain == False && WearingAssCurtain == False && WearingPelvicCurtain == False
		AND_Logger.FastLog("<Core> [AND_MovementDiceRoll] - No curtains worn. Skipping Mvoement check.")
		AND_Logger.FastLog("<Core> [AND_MovementDiceRoll] - END")
		return
	EndIf
	
	Int MaxRoll = 100
	
	If Sprinting == True
		MaxRoll = (100 - Config.SprintingModifier)
	Else
		MaxRoll = (100 - Config.RunningModifier)
	EndIf
	
	;Player Flash Odds
	If WearingChestCurtain == True
		TopCurtainRoll = Utility.RandomInt(1,MaxRoll)
	EndIf
	
	If WearingPelvicCurtain == True
		PelvicCurtainRoll = Utility.RandomInt(1,MaxRoll)
	EndIf
	
	If WearingAssCurtain == True
		AssCurtainRoll = Utility.RandomInt(1,MaxRoll)
	EndIf
	
	If PlayerBase.GetSex() == 0 ;Male
		AND_Logger.FastLog("<Core> [Movement Dice Roll] - Send Male Scan")
		MaleScan.FullAnalyze()
		Config.SetMaleCoverage()
	Else
		AND_Logger.FastLog("<Core> [Movement Dice Roll] - Send Female Scan")
		FemaleScan.FullAnalyze()
		Config.SetFemaleCoverage()
	EndIf
	
	AND_Logger.FastLog("<Core> [AND_MovementDiceRoll] - END")
EndFunction

Function AND_DiceRoll()
	If MainRollRunning == False
		MainRollRunning = True
		AND_Logger.FastLog("<Core> [AND_DiceRoll] - START")
		
		Int MaxRoll = 100
		
		If Config.AllowMotionFlash == True
			If PlayerScript.PlayerRef.IsSprinting()
				MaxRoll = (100 - Config.SprintingModifier)
			ElseIf PlayerScript.PlayerRef.IsRunning()
				MaxRoll = (100 - Config.RunningModifier)
			EndIf
		EndIf
		
		;Player Flash Odds
		TopCurtainRoll = Utility.RandomInt(1,MaxRoll)
		PelvicCurtainRoll = Utility.RandomInt(1,MaxRoll)
		AssCurtainRoll = Utility.RandomInt(1,MaxRoll)
		CStringRoll = Utility.RandomInt(1,100)
		TopTransparentRoll = Utility.RandomInt(1,100)
		BottomTransparentRoll = Utility.RandomInt(1,100)
		BraTransparentRoll = Utility.RandomInt(1,100)
		UnderwearTransparentRoll = Utility.RandomInt(1,100)
		HotpantsTransparentRoll = Utility.RandomInt(1,100)
		ShowgirlTransparentRoll = Utility.RandomInt(1,100)

		;NPC Flash Odds
		NPCTopCurtainRoll = Utility.RandomInt(1,100)
		NPCPelvicCurtainRoll = Utility.RandomInt(1,100)
		NPCAssCurtainRoll = Utility.RandomInt(1,100)
		NPCCStringRoll = Utility.RandomInt(1,100)
		NPCTopTransparentRoll = Utility.RandomInt(1,100)
		NPCBottomTransparentRoll = Utility.RandomInt(1,100)
		NPCBraTransparentRoll = Utility.RandomInt(1,100)
		NPCUnderwearTransparentRoll = Utility.RandomInt(1,100)
		NPCHotpantsTransparentRoll = Utility.RandomInt(1,100)
		NPCShowgirlTransparentRoll = Utility.RandomInt(1,100)
		
		ResetFlashFactions()
		
		If PlayerBase.GetSex() == 0 ;Male
			AND_Logger.FastLog("<Core> [Dice Roll] - Send Male Scan")
			MaleScan.FullAnalyze()
			Config.SetMaleCoverage()
		Else
			AND_Logger.FastLog("<Core> [Dice Roll] - Send Female Scan")
			FemaleScan.FullAnalyze()
			Config.SetFemaleCoverage()
		EndIf
		
		If Config.ScanNPC == True
			NPCScanSpell.Cast(PlayerScript.PlayerRef)
		EndIf
		MainRollRunning = False
		AND_Logger.FastLog("<Core> [AND_DiceRoll] - END")
	EndIf
EndFunction

Function ResetFlashFactions()
	PlayerScript.PlayerRef.SetFactionRank(FlashingChestCurtain, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingPelvicCurtain, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingAssCurtain, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingTop, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingBra, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingBottom, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingUnderwear, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingCString, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingHotpants, 0)
	PlayerScript.PlayerRef.SetFactionRank(FlashingSkirt, 0)
EndFunction

Function SLSFR_NakedCommentPreCheck()
	If SLSFR_Config.DisableNakedCommentsWhilePW == True
		If SLSFR_Mods.IsPublicWhore() == True
			return
		Else
			WICommentChanceNaked.SetValue(NakedCommentChance(False))
		EndIf
	Else
		WICommentChanceNaked.SetValue(NakedCommentChance(False))
	EndIf
EndFunction

Int Function NakedCommentChance(Bool IsMCMRequest)
	Int CommentChance = -1
	Bool UnderwearCounted = False
	
	If IsMCMRequest == True
		CommentChance += 1 ;Increase return value by 1 for a more understandable % return in the MCM
	EndIf
	
	If Config.DisableNakedComments == False
		If PlayerScript.PlayerRef.GetFactionRank(AND_NudeActorFaction) == 1
			CommentChance += Config.NudeFactionCommentChance
		EndIf
		
		If PlayerScript.PlayerRef.GetFactionRank(AND_ToplessFaction) == 1
			CommentChance += Config.ToplessFactionCommentChance
		EndIf
		
		If PlayerScript.PlayerRef.GetFactionRank(AND_BottomlessFaction) == 1
			CommentChance += Config.BottomlessFactionCommentChance
		EndIf
		
		If PlayerScript.PlayerRef.GetFactionRank(AND_ShowingChestFaction) == 1
			CommentChance += Config.ChestFactionCommentChance
		ElseIf PlayerScript.PlayerRef.GetFactionRank(AND_ShowingBraFaction) == 1
			CommentChance += Config.BraFactionCommentChance
		EndIf
		
		If PlayerScript.PlayerRef.GetFactionRank(AND_ShowingGenitalsFaction) == 1
			CommentChance += Config.GenitalsFactionCommentChance
		ElseIf PlayerScript.PlayerRef.GetFactionRank(AND_ShowingUnderwearFaction) == 1
			CommentChance += Config.UnderwearFactionCommentChance
			UnderwearCounted = True
		EndIf
		
		If PlayerScript.PlayerRef.GetFactionRank(AND_ShowingAssFaction) == 1
			CommentChance += Config.AssFactionCommentChance
		ElseIf PlayerScript.PlayerRef.GetFactionRank(AND_ShowingUnderwearFaction) == 1 && UnderwearCounted == False
			CommentChance += Config.UnderwearFactionCommentChance
		EndIf
	EndIf
	
	return CommentChance
EndFunction

Int Function FindSexuality(Actor target)
	If SexlabInstalled == True
		return SexlabStats.GetSexuality(target)
	Else
		return 100
	EndIf
EndFunction

Bool Function IsPlayerTransformed()
	If PlayerBase.GetRace() != BaseRace
		return True
	EndIf
	return False
EndFunction