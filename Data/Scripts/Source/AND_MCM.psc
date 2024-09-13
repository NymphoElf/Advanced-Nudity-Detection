Scriptname AND_MCM extends SKI_Configbase

AND_Core property Main Auto
AND_MaleArmorScan Property AND_MaleScan Auto
AND_FemaleArmorScan Property AND_FemaleScan Auto

Actor Property PlayerRef Auto

Int Property TopCurtainOddsLow Auto Hidden
Int Property TopCurtainOdds Auto Hidden
Int Property TopCurtainOddsHigh Auto Hidden
Int Property TopCurtainOddsExtreme Auto Hidden
Int Property TopCurtainOddsUltra Auto Hidden
Int Property TransparentTopCurtainOddsLow Auto Hidden
Int Property TransparentTopCurtainOdds Auto Hidden
Int Property TransparentTopCurtainOddsHigh Auto Hidden
Int Property TransparentTopCurtainOddsExtreme Auto Hidden
Int Property TransparentTopCurtainOddsUltra Auto Hidden
Int Property PelvicCurtainOddsLow Auto Hidden
Int Property PelvicCurtainOdds Auto Hidden
Int Property PelvicCurtainOddsHigh Auto Hidden
Int Property PelvicCurtainOddsExtreme Auto Hidden
Int Property PelvicCurtainOddsUltra Auto Hidden
Int Property TransparentPelvicCurtainOddsLow Auto Hidden
Int Property TransparentPelvicCurtainOdds Auto Hidden
Int Property TransparentPelvicCurtainOddsHigh Auto Hidden
Int Property TransparentPelvicCurtainOddsExtreme Auto Hidden
Int Property TransparentPelvicCurtainOddsUltra Auto Hidden
Int Property AssCurtainOddsLow Auto Hidden
Int Property AssCurtainOdds Auto Hidden
Int Property AssCurtainOddsHigh Auto Hidden
Int Property AssCurtainOddsExtreme Auto Hidden
Int Property AssCurtainOddsUltra Auto Hidden
Int Property TransparentAssCurtainOddsLow Auto Hidden
Int Property TransparentAssCurtainOdds Auto Hidden
Int Property TransparentAssCurtainOddsHigh Auto Hidden
Int Property TransparentAssCurtainOddsExtreme Auto Hidden
Int Property TransparentAssCurtainOddsUltra Auto Hidden
Int Property CStringOdds Auto Hidden
Int Property TransparentCStringOdds Auto Hidden
Int Property TransparentCStringOdds_Low Auto Hidden
Int Property TransparentCStringOdds_High Auto Hidden
Int Property TransparentTopArmorOdds Auto Hidden
Int Property TransparentTopArmorOdds_Low Auto Hidden
Int Property TransparentTopArmorOdds_High Auto Hidden
Int Property TransparentBottomArmorOdds Auto Hidden
Int Property TransparentBottomArmorOdds_Low Auto Hidden
Int Property TransparentBottomArmorOdds_High Auto Hidden
Int Property TransparentBraOdds Auto Hidden
Int Property TransparentBraOdds_Low Auto Hidden
Int Property TransparentBraOdds_High Auto Hidden
Int Property TransparentUnderwearOdds Auto Hidden
Int Property TransparentUnderwearOdds_Low Auto Hidden
Int Property TransparentUnderwearOdds_High Auto Hidden
Int Property TransparentHotpantsOdds Auto Hidden
Int Property TransparentHotpantsOdds_Low Auto Hidden
Int Property TransparentHotpantsOdds_High Auto Hidden
Int Property TransparentShowgirlSkirtOdds Auto Hidden
Int Property TransparentShowgirlSkirtOdds_Low Auto Hidden
Int Property TransparentShowgirlSkirtOdds_High Auto Hidden

Bool Property GenderlessWording Auto Hidden
Bool Property IgnoreBakaKeywords Auto Hidden
Bool Property AllowMotionFlash Auto Hidden

Bool Property TopCurtainLayer_Cover Auto Hidden
Bool Property PelvicCurtain_Cover Auto Hidden
Bool Property AssCurtain_Cover Auto Hidden

Int Property FlashChanceInfoShown Auto Hidden

Int Property RunningModifier Auto Hidden
Int Property SprintingModifier Auto Hidden

Event OnConfigInit()
	Utility.Wait(1)
	RegisterForSingleUpdate(1)
	Debug.Notification("Advanced Nudity MCM Initializing...")
	
EndEvent

Function SetDefaults()
	TopCurtainOddsLow = 20
	TopCurtainOdds = 35
	TopCurtainOddsHigh = 50
	TopCurtainOddsExtreme = 65
	TopCurtainOddsUltra = 80
	TransparentTopCurtainOddsLow = 55
	TransparentTopCurtainOdds = 65
	TransparentTopCurtainOddsHigh = 75
	TransparentTopCurtainOddsExtreme = 85
	TransparentTopCurtainOddsUltra = 95
	PelvicCurtainOddsLow = 20
	PelvicCurtainOdds = 35
	PelvicCurtainOddsHigh = 50
	PelvicCurtainOddsExtreme = 65
	PelvicCurtainOddsUltra = 80
	TransparentPelvicCurtainOddsLow = 55
	TransparentPelvicCurtainOdds = 65
	TransparentPelvicCurtainOddsHigh = 75
	TransparentPelvicCurtainOddsExtreme = 85
	TransparentPelvicCurtainOddsUltra = 95
	AssCurtainOddsLow = 20
	AssCurtainOdds = 35
	AssCurtainOddsHigh = 50
	AssCurtainOddsExtreme = 65
	AssCurtainOddsUltra = 80
	TransparentAssCurtainOddsLow = 55
	TransparentAssCurtainOdds = 65
	TransparentAssCurtainOddsHigh = 75
	TransparentAssCurtainOddsExtreme = 85
	TransparentAssCurtainOddsUltra = 95
	CStringOdds = 60
	
	TransparentCStringOdds = 80
	TransparentCStringOdds_Low = 70
	TransparentCStringOdds_High = 90
	
	TransparentTopArmorOdds = 50
	TransparentTopArmorOdds_Low = 30
	TransparentTopArmorOdds_High = 70
	
	TransparentBottomArmorOdds = 50
	TransparentBottomArmorOdds_Low = 30
	TransparentBottomArmorOdds_High = 70
	
	TransparentBraOdds = 50
	TransparentBraOdds_Low = 30
	TransparentBraOdds_High = 70
	
	TransparentUnderwearOdds = 50
	TransparentUnderwearOdds_Low = 30
	TransparentUnderwearOdds_High = 70

	TransparentHotpantsOdds = 50
	TransparentHotpantsOdds_Low = 30
	TransparentHotpantsOdds_High = 70

	TransparentShowgirlSkirtOdds = 50
	TransparentShowgirlSkirtOdds_Low = 30
	TransparentShowgirlSkirtOdds_High = 70
	
	AllowMotionFlash = True
	RunningModifier = 10
	SprintingModifier = 20
EndFunction

Event OnUpdate()
	InstallMCM()
	SetDefaults()
	Debug.Notification("Advanced Nudity MCM Ready!")
EndEvent

Function InstallMCM()
	ModName = "Advanced Nudity"
	Pages = New String[8]
	Pages[0] = "$NudityStatesPage"
	Pages[1] = "$FlashingStatesPage"
	Pages[2] = "$CurtainKeywordsPage"
	Pages[3] = "$ArmorAndUnderwearKeywordsPage"
	Pages[4] = "$GeneralKeywordsPage"
	Pages[5] = "$FlashRiskKeywordsPage"
	Pages[6] = "$BakaKeywordsPage"
	Pages[7] = "$FlashChancesPage"
EndFunction

Function SetMaleCoverage()
	TopCurtainLayer_Cover = AND_MaleScan.AND_TopCurtainLayer_Cover
	AssCurtain_Cover = AND_MaleScan.AND_AssCurtain_Cover
	PelvicCurtain_Cover = AND_MaleScan.AND_PelvicCurtain_Cover
EndFunction

Function SetFemaleCoverage()
	TopCurtainLayer_Cover = AND_FemaleScan.AND_TopCurtainLayer_Cover
	AssCurtain_Cover = AND_FemaleScan.AND_AssCurtain_Cover
	PelvicCurtain_Cover = AND_FemaleScan.AND_PelvicCurtain_Cover
EndFunction

Event OnConfigOpen()
	Pages = New String[8]
	Pages[0] = "$NudityStatesPage"
	Pages[1] = "$FlashingStatesPage"
	Pages[2] = "$CurtainKeywordsPage"
	Pages[3] = "$ArmorAndUnderwearKeywordsPage"
	Pages[4] = "$GeneralKeywordsPage"
	Pages[5] = "$FlashRiskKeywordsPage"
	Pages[6] = "$BakaKeywordsPage"
	Pages[7] = "$FlashChancesPage"
EndEvent

Event OnPageReset(string page)
	SetCursorFillMode(TOP_TO_BOTTOM)
	SetCursorPosition(0)
	ActorBase PlayerBase = Game.GetPlayer().GetActorBase()
	If (page == "" || page == "$NudityStatesPage") ;default page
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
			If PlayerBase.GetSex() == 0 || GenderlessWording == True ;Male/Genderless
				AddTextOption("$ShowingChestText", "$YesText")
			Else
				AddTextOption("$ShowingBoobsText", "$YesText")
			EndIf
		Else
			If PlayerBase.GetSex() == 0 || GenderlessWording == True ;Male/Genderless
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
			If PlayerBase.GetSex() == 0 && GenderlessWording == False ;Male
				AddTextOption("$ShowingPenisText", "$YesText")
			ElseIf GenderlessWording == False
				AddTextOption("$ShowingPussyText", "$YesText")
			Else
				AddTextOption("$ShowingGenitalsText", "$YesText")
			EndIf
		Else
			If PlayerBase.GetSex() == 0 && GenderlessWording == False ;Male
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
		
		If PlayerBase.GetSex() == 0 ;Male
			AddTextOption("$BaseSexText", "$MaleText")
		Else
			AddTextOption("$BaseSexText", "$FemaleText")
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$CurtainStatesHeader")
		If TopCurtainLayer_Cover == True
			AddTextOption("$TopCurtainText", "$CoveringText")
		Else
			AddTextOption("$TopCurtainText", "$NotCoveringText")
		EndIf
		
		If PelvicCurtain_Cover == True
			AddTextOption("$PelvicCurtainText", "$CoveringText")
		Else
			AddTextOption("$PelvicCurtainText", "$NotCoveringText")
		EndIf
			
		If AssCurtain_Cover == True
			AddTextOption("$AssCurtainText", "$CoveringText")
		Else
			AddTextOption("$AssCurtainText", "$NotCoveringText")
		EndIf
		
	ElseIf (page == "$FlashingStatesPage")
		AddHeaderOption("$CurtainRiskHeader")
		If PlayerBase.GetSex() == 0 ;Male
			If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskLow)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
					AddTextOption("$ChestText", TopCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
					AddTextOption("$ChestText", TransparentTopCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$ChestText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskLow)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male)
					AddTextOption("$AssText", AssCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male)
					AddTextOption("$AssText", AssCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male)
					AddTextOption("$AssText", AssCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male)
					AddTextOption("$AssText", AssCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male)
					AddTextOption("$AssText", AssCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male)
					AddTextOption("$AssText", TransparentAssCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$AssText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskLow)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male)
					AddTextOption("$PelvicText", PelvicCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male)
					AddTextOption("$PelvicText", PelvicCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$PelvicText", "0%")
			EndIf
		Else
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
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain)
					AddTextOption("$AssText", AssCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT)
					AddTextOption("$AssText", TransparentAssCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain)
					AddTextOption("$AssText", AssCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT)
					AddTextOption("$AssText", TransparentAssCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain)
					AddTextOption("$AssText", AssCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT)
					AddTextOption("$AssText", TransparentAssCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain)
					AddTextOption("$AssText", AssCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT)
					AddTextOption("$AssText", TransparentAssCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_AssCurtain)
					AddTextOption("$AssText", AssCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT)
					AddTextOption("$AssText", TransparentAssCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$AssText", "0%")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskLow)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain)
					AddTextOption("$PelvicText", PelvicCurtainOddsLow as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsLow as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRisk)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain)
					AddTextOption("$PelvicText", PelvicCurtainOdds as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOdds as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskHigh)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain)
					AddTextOption("$PelvicText", PelvicCurtainOddsHigh as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsHigh as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskExtreme)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain)
					AddTextOption("$PelvicText", PelvicCurtainOddsExtreme as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsExtreme as String + "%")
				EndIf
			ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskUltra)
				If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain)
					AddTextOption("$PelvicText", PelvicCurtainOddsUltra as String + "%")
				ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT)
					AddTextOption("$PelvicText", TransparentPelvicCurtainOddsUltra as String + "%")
				EndIf
			Else
				AddTextOption("$PelvicText", "0%")
			EndIf
		EndIf
		
		AddHeaderOption("$TransparentClothesRiskHeader")
		If PlayerRef.WornHasKeyword(Main.AND_ArmorTopT) && PlayerBase.GetSex() != 0
			AddTextOption("$TopText", TransparentTopArmorOdds as String + "%")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Male)
			AddTextOption("$TopText", TransparentTopArmorOdds as String + "%")
		Else
			AddTextOption("$TopText", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT) && PlayerBase.GetSex() != 0
			AddTextOption("$BottomText", TransparentBottomArmorOdds as String + "%")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Male)
			AddTextOption("$BottomText", TransparentBottomArmorOdds as String + "%")
		Else
			AddTextOption("$BottomText", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_BraT) && PlayerBase.GetSex() != 0
			AddTextOption("$BraText", TransparentBraOdds as String + "%")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_BraT_Male)
			AddTextOption("$BraText", TransparentBraOdds as String + "%")
		Else
			AddTextOption("$BraText", "0%")
		EndIf
		
		If PlayerBase.GetSex() == 0
			If PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Male)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_Male)
				AddTextOption("$ThongText", TransparentUnderwearOdds as String + "%")
			ElseIf PlayerBase.GetSex() != 0 && PlayerRef.WornHasKeyword(Main.AND_BananaHammock)
				AddTextOption("$BananaHammockText", CStringOdds as String + "%")
			ElseIf PlayerBase.GetSex() != 0 && PlayerRef.WornHasKeyword(Main.AND_BananaHammockT)
				AddTextOption("$BananaHammockText", TransparentCStringOdds as String + "%")
			Else
				AddTextOption("$UnderwearText", "0%")
			EndIf
		Else
			If PlayerRef.WornHasKeyword(Main.AND_UnderwearT)
				AddTextOption("$UnderwearText", TransparentUnderwearOdds as String + "%")
			ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT)
				AddTextOption("$ThongText", TransparentUnderwearOdds as String + "%")
			ElseIf PlayerBase.GetSex() != 0 && PlayerRef.WornHasKeyword(Main.AND_CString)
				AddTextOption("$CStringText", CStringOdds as String + "%")
			ElseIf PlayerBase.GetSex() != 0 && PlayerRef.WornHasKeyword(Main.AND_CStringT)
				AddTextOption("$CStringText", TransparentCStringOdds as String + "%")
			Else
				AddTextOption("$UnderwearText", "0%")
			EndIf
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_HotpantsT) && PlayerBase.GetSex() != 0
			AddTextOption("$HotpantsText", TransparentHotpantsOdds as String + "%")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Male)
			AddTextOption("$HotpantsText", TransparentHotpantsOdds as String + "%")
		Else
			AddTextOption("$HotpantsText", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT) && PlayerBase.GetSex() != 0
			AddTextOption("$ShowgirlSkirtText", TransparentShowgirlSkirtOdds as String + "")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT)
			AddTextOption("$HimboSkirtText", TransparentShowgirlSkirtOdds as String + "")
		Else
			If PlayerBase.GetSex() != 0
				AddTextOption("$ShowgirlSkirtText", "0%")
			Else
				AddTextOption("$HimboSkirtText", "0%")
			EndIf
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$FlashRollsHeader")
		AddTextOption("$ChestCurtainRollText", Main.TopCurtainRoll)
		AddTextOption("$AssCurtainRollText", Main.AssCurtainRoll)
		AddTextOption("$PelvicCurtainRollText", Main.PelvicCurtainRoll)
		If PlayerBase.GetSex() == 0 ;Male
			AddTextOption("$BananaHammockRollText", Main.CStringRoll)
		Else
			AddTextOption("$CStringRollText", Main.CStringRoll)
		EndIf
		AddTextOption("$TransparentTopRollText", Main.TopTransparentRoll)
		AddTextOption("$TransparentBottomRollText", Main.BottomTransparentRoll)
		AddTextOption("$TransparentBraRollText", Main.BraTransparentRoll)
		AddTextOption("$TransparentUnderwearRollText", Main.UnderwearTransparentRoll)
		AddTextOption("$TransparentHotpantsRollText", Main.HotpantsTransparentRoll)
		If PlayerBase.GetSex() == 0 ;Male
			AddTextOption("$TransparentHimboSkirtRollText", Main.ShowgirlTransparentRoll)
		Else
			AddTextOption("$TransparentShowgirlSkirtRollText", Main.ShowgirlTransparentRoll)
		EndIf
		
	ElseIf (page == "$CurtainKeywordsPage")
	
		If PlayerRef.WornHasKeyword(Main.AND_ChestCurtain) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ChestCurtain", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtain_Male)
			AddTextOption("AND_ChestCurtain", "$YesText")
		Else
			AddTextOption("AND_ChestCurtain", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ChestCurtainT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ChestCurtainT_Male)
			AddTextOption("AND_ChestCurtainT", "$YesText")
		Else
			AddTextOption("AND_ChestCurtainT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain) && PlayerBase.GetSex() != 0
			AddTextOption("AND_PelvicCurtain", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtain_Male)
			AddTextOption("AND_PelvicCurtain", "$YesText")
		Else
			AddTextOption("AND_PelvicCurtain", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_PelvicCurtainT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_PelvicCurtainT_Male)
			AddTextOption("AND_PelvicCurtainT", "$YesText")
		Else
			AddTextOption("AND_PelvicCurtainT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssCurtain) && PlayerBase.GetSex() != 0
			AddTextOption("AND_AssCurtain", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtain_Male)
			AddTextOption("AND_AssCurtain", "$YesText")
		Else
			AddTextOption("AND_AssCurtain", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssCurtainT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_AssCurtainT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_AssCurtainT_Male)
			AddTextOption("AND_AssCurtainT", "$YesText")
		Else
			AddTextOption("AND_AssCurtainT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Miniskirt) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Miniskirt", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Miniskirt_Male)
			AddTextOption("AND_Miniskirt", "$YesText")
		Else
			AddTextOption("AND_Miniskirt", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_MiniskirtT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_MiniskirtT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_MiniskirtT_Male)
			AddTextOption("AND_MiniskirtT", "$YesText")
		Else
			AddTextOption("AND_MiniskirtT", "$NoText")
		EndIf
	
	ElseIf (page == "$ArmorAndUnderwearKeywordsPage")
	
		AddHeaderOption("$ArmorKeywordsHeader")
	
		If PlayerRef.WornHasKeyword(Main.AND_ArmorTop) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ArmorTop", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTop_Male)
			AddTextOption("AND_ArmorTop", "$YesText")
		Else
			AddTextOption("AND_ArmorTop", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorTopT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ArmorTopT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTopT_Male)
			AddTextOption("AND_ArmorTopT", "$YesText")
		Else
			AddTextOption("AND_ArmorTopT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorTop_NoCover) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ArmorTop_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorTop_NoCover_Male)
			AddTextOption("AND_ArmorTop_NoCover", "$YesText")
		Else
			AddTextOption("AND_ArmorTop_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorBottom) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ArmorBottom", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottom_Male)
			AddTextOption("AND_ArmorBottom", "$YesText")
		Else
			AddTextOption("AND_ArmorBottom", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ArmorBottomT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottomT_Male)
			AddTextOption("AND_ArmorBottomT", "$YesText")
		Else
			AddTextOption("AND_ArmorBottomT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ArmorBottom_NoCover) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ArmorBottom_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ArmorBottom_NoCover_Male)
			AddTextOption("AND_ArmorBottom_NoCover", "$YesText")
		Else
			AddTextOption("AND_ArmorBottom_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Hotpants) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Hotpants", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Hotpants_Male)
			AddTextOption("AND_Hotpants", "$YesText")
		Else
			AddTextOption("AND_Hotpants", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_HotpantsT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_HotpantsT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HotpantsT_Male)
			AddTextOption("AND_HotpantsT", "$YesText")
		Else
			AddTextOption("AND_HotpantsT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirt) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ShowgirlSkirt", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HimboSkirt)
			AddTextOption("AND_HimboSkirt", "$YesText")
		Else
			If PlayerBase.GetSex() != 0
				AddTextOption("AND_ShowgirlSkirt", "$NoText")
			Else
				AddTextOption("AND_HimboSkirt", "$NoText")
			EndIf
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ShowgirlSkirtT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ShowgirlSkirtT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_HimboSkirtT)
			AddTextOption("AND_HimboSkirtT", "$YesText")
		Else
			If PlayerBase.GetSex() != 0
				AddTextOption("AND_ShowgirlSkirtT", "$NoText")
			Else
				AddTextOption("AND_HimboSkirtT", "$NoText")
			EndIf
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$UnderwearKeywordsHeader")
		
		If PlayerRef.WornHasKeyword(Main.AND_Bra) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Bra", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Bra_Male)
			AddTextOption("AND_Bra", "$YesText")
		Else
			AddTextOption("AND_Bra", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_BraT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_BraT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_BraT_Male)
			AddTextOption("AND_BraT", "$YesText")
		Else
			AddTextOption("AND_BraT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Bra_NoCover) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Bra_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Bra_NoCover_Male)
			AddTextOption("AND_Bra_NoCover", "$YesText")
		Else
			AddTextOption("AND_Bra_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_CString) && PlayerBase.GetSex() != 0
			AddTextOption("AND_CString", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammock)
			AddTextOption("AND_BananaHammock", "$YesText")
		Else
			If PlayerBase.GetSex() != 0
				AddTextOption("AND_CString", "$NoText")
			Else
				AddTextOption("AND_BananaHammock", "$NoText")
			EndIf
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_CStringT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_CStringT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_BananaHammockT)
			AddTextOption("AND_BananaHammockT", "$YesText")
		Else
			If PlayerBase.GetSex() != 0
				AddTextOption("AND_CStringT", "$NoText")
			Else
				AddTextOption("AND_BananaHammockT", "$NoText")
			EndIf
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Thong) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Thong", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Thong_Male)
			AddTextOption("AND_Thong", "$YesText")
		Else
			AddTextOption("AND_Thong", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ThongT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_ThongT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_ThongT_Male)
			AddTextOption("AND_ThongT", "$YesText")
		Else
			AddTextOption("AND_ThongT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Thong_NoCover) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Thong_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Thong_NoCover_Male)
			AddTextOption("AND_Thong_NoCover", "$YesText")
		Else
			AddTextOption("AND_Thong_NoCover", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Underwear) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Underwear", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Underwear_Male)
			AddTextOption("AND_Underwear", "$YesText")
		Else
			AddTextOption("AND_Underwear", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_UnderwearT) && PlayerBase.GetSex() != 0
			AddTextOption("AND_UnderwearT", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_UnderwearT_Male)
			AddTextOption("AND_UnderwearT", "$YesText")
		Else
			AddTextOption("AND_UnderwearT", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Underwear_NoCover) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Underwear_NoCover", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Underwear_NoCover_Male)
			AddTextOption("AND_Underwear_NoCover", "$YesText")
		Else
			AddTextOption("AND_Underwear_NoCover", "$NoText")
		EndIf

	ElseIf (page == "$GeneralKeywordsPage")
	
		If PlayerRef.WornHasKeyword(Main.AND_CoversAll) && PlayerBase.GetSex() != 0
			AddTextOption("AND_CoversAll", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_CoversAll_Male)
			AddTextOption("AND_CoversAll", "$YesText")
		Else
			AddTextOption("AND_CoversAll", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_Microskirt) && PlayerBase.GetSex() != 0
			AddTextOption("AND_Microskirt", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_Microskirt_Male)
			AddTextOption("AND_Microskirt", "$YesText")
		Else
			AddTextOption("AND_Microskirt", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_NipplePasties) && PlayerBase.GetSex() != 0
			AddTextOption("AND_NipplePasties", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_NipplePasties_Male)
			AddTextOption("AND_NipplePasties", "$YesText")
		Else
			AddTextOption("AND_NipplePasties", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_VaginaPasties) && PlayerBase.GetSex() != 0
			AddTextOption("AND_VaginaPasties", "$YesText")
		Else
			If PlayerBase.GetSex() != 0
				AddTextOption("AND_VaginaPasties", "$NoText")
			Else
				AddTextOption("AND_VaginaPasties", "N/A")
			EndIf
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_NearlyNaked) && PlayerBase.GetSex() != 0
			AddTextOption("AND_NearlyNaked", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_NearlyNaked_Male)
			AddTextOption("AND_NearlyNaked", "$YesText")
		Else
			AddTextOption("AND_NearlyNaked", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_EffectivelyNaked) && PlayerBase.GetSex() != 0
			AddTextOption("AND_EffectivelyNaked", "$YesText")
		ElseIf PlayerRef.WornHasKeyword(Main.AND_EffectivelyNaked_Male)
			AddTextOption("AND_EffectivelyNaked", "$YesText")
		Else
			AddTextOption("AND_EffectivelyNaked", "$NoText")
		EndIf
	
	ElseIf (page == "$FlashRiskKeywordsPage")
		AddHeaderOption("$ChestCurtainText")
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskUltra)
			AddTextOption("AND_ChestFlashRiskUltra", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskUltra", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskExtreme)
			AddTextOption("AND_ChestFlashRiskExtreme", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskExtreme", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskHigh)
			AddTextOption("AND_ChestFlashRiskHigh", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskHigh", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRisk)
			AddTextOption("AND_ChestFlashRisk", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRisk", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_ChestFlashRiskLow)
			AddTextOption("AND_ChestFlashRiskLow", "$YesText")
		Else
			AddTextOption("AND_ChestFlashRiskLow", "$NoText")
		EndIf
		
		AddHeaderOption("$PelvicCurtainText")
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskUltra)
			AddTextOption("AND_PelvicFlashRiskUltra", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskUltra", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskExtreme)
			AddTextOption("AND_PelvicFlashRiskExtreme", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskExtreme", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskHigh)
			AddTextOption("AND_PelvicFlashRiskHigh", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskHigh", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRisk)
			AddTextOption("AND_PelvicFlashRisk", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRisk", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_PelvicFlashRiskLow)
			AddTextOption("AND_PelvicFlashRiskLow", "$YesText")
		Else
			AddTextOption("AND_PelvicFlashRiskLow", "$NoText")
		EndIf
		
		SetCursorPosition(1)
		
		AddHeaderOption("$AssCurtainText")
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskUltra)
			AddTextOption("AND_AssFlashRiskUltra", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskUltra", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskExtreme)
			AddTextOption("AND_AssFlashRiskExtreme", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskExtreme", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskHigh)
			AddTextOption("AND_AssFlashRiskHigh", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskHigh", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRisk)
			AddTextOption("AND_AssFlashRisk", "$YesText")
		Else
			AddTextOption("AND_AssFlashRisk", "$NoText")
		EndIf
		
		If PlayerRef.WornHasKeyword(Main.AND_AssFlashRiskLow)
			AddTextOption("AND_AssFlashRiskLow", "$YesText")
		Else
			AddTextOption("AND_AssFlashRiskLow", "$NoText")
		EndIf
	ElseIf (page == "$FlashChancesPage")
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
		
		If PlayerBase.GetSex() == 0 ;Male
			AddHeaderOption("$BananaHammockText")
			AddSliderOptionST("AND_CStringOdds", "$BananaHammockText", CStringOdds, "{0}%", 0)
			AddSliderOptionST("AND_TransparentCStringOddsLow", "$TransparentBananaHammockLowText", TransparentCStringOdds_Low, "{0}%", 0)
			AddSliderOptionST("AND_TransparentCStringOdds", "$TransparentBananaHammockNormalText", TransparentCStringOdds, "{0}%", 0)
			AddSliderOptionST("AND_TransparentCStringOddsHigh", "$TransparentBananaHammockHighText", TransparentCStringOdds_High, "{0}%", 0)
		Else
			AddHeaderOption("$CStringText")
			AddSliderOptionST("AND_CStringOdds", "$CStringText", CStringOdds, "{0}%", 0)
			AddSliderOptionST("AND_TransparentCStringOddsLow", "$TransparentCStringLowText", TransparentCStringOdds_Low, "{0}%", 0)
			AddSliderOptionST("AND_TransparentCStringOdds", "$TransparentCStringNormalText", TransparentCStringOdds, "{0}%", 0)
			AddSliderOptionST("AND_TransparentCStringOddsHigh", "$TransparentCStringHighText", TransparentCStringOdds_High, "{0}%", 0)
		EndIf
		
		AddHeaderOption("$MotionSettingsHeader")
		AddToggleOptionST("AND_AllowMotionFlashState", "$AllowMotionFlashText", AllowMotionFlash, 0)
		AddSliderOptionST("AND_RunningFlashIncreaseState", "$RunningModifierText", RunningModifier, "{0}", GetDisabledOptionFlagIf(AllowMotionFlash == False))
		AddSliderOptionST("AND_SprintingFlashIncreaseState", "$SprintingModifierText", SprintingModifier, "{0}", GetDisabledOptionFlagIf(AllowMotionFlash == False))
		
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
		
		If PlayerBase.GetSex() == 0 ;Male
			AddSliderOptionST("AND_TransparentShowgirlSkirtOddsLow", "$TransparentHimboSkirtLowText", TransparentShowgirlSkirtOdds_Low, "{0}%", 0)
			AddSliderOptionST("AND_TransparentShowgirlSkirtOdds", "$TransparentHimboSkirtNormalText", TransparentShowgirlSkirtOdds, "{0}%", 0)
			AddSliderOptionST("AND_TransparentShowgirlSkirtOddsHigh", "$TransparentHimboSkirtHighText", TransparentShowgirlSkirtOdds_High, "{0}%", 0)
		Else
			AddSliderOptionST("AND_TransparentShowgirlSkirtOddsLow", "$TransparentShowgirlSkirtLowText", TransparentShowgirlSkirtOdds_Low, "{0}%", 0)
			AddSliderOptionST("AND_TransparentShowgirlSkirtOdds", "$TransparentShowgirlSkirtNormalText", TransparentShowgirlSkirtOdds, "{0}%", 0)
			AddSliderOptionST("AND_TransparentShowgirlSkirtOddsHigh", "$TransparentShowgirlSkirtHighText", TransparentShowgirlSkirtOdds_High, "{0}%", 0)
		EndIf
		
		If FlashChanceInfoShown != 1
			Debug.MessageBox("Changing the Flash Chances here will NOT immediately change your Flashing Status. The changes will take effect on all future checks.")
			FlashChanceInfoShown = 1
		EndIf
		
	ElseIf (page == "$BakaKeywordsPage")
		If Main.SLA_Found == False
			AddTextOption("$SexlabArousedNotFound", None)
		ElseIf PlayerBase.GetSex() == 0 ;Male
			AddTextOption("", None)
		ElseIf Main.SLA_Found == True
			AddToggleOptionST("IgnoreBakaState", "$IgnoreBakaKeywords", IgnoreBakaKeywords, 0)
			AddEmptyOption()
			If PlayerRef.WornHasKeyword(Main.SLA_ArmorPartTop) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ArmorPartTop", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ArmorPartTop) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ArmorPartTop", "$NoText")
			Else
				AddTextOption("SLA_ArmorPartTop", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_ArmorPartBottom) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ArmorPartBottom", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ArmorPartBottom) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ArmorPartBottom", "$NoText")
			Else
				AddTextOption("SLA_ArmorPartBottom", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_Brabikini) && IgnoreBakaKeywords == False
				AddTextOption("SLA_Brabikini", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_Brabikini) && IgnoreBakaKeywords == False
				AddTextOption("SLA_Brabikini", "$NoText")
			Else
				AddTextOption("SLA_Brabikini", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_FullSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_FullSkirt", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_FullSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_FullSkirt", "$NoText")
			Else
				AddTextOption("SLA_FullSkirt", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_MicroHotpants) && IgnoreBakaKeywords == False
				AddTextOption("SLA_MicroHotpants", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_MicroHotpants) && IgnoreBakaKeywords == False
				AddTextOption("SLA_MicroHotpants", "$NoText")
			Else
				AddTextOption("SLA_MicroHotpants", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_MicroSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_MicroSkirt", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_MicroSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_MicroSkirt", "$NoText")
			Else
				AddTextOption("SLA_MicroSkirt", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_MiniSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_MiniSkirt", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_MiniSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_MiniSkirt", "$NoText")
			Else
				AddTextOption("SLA_MiniSkirt", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_PantiesNormal) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PantiesNormal", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_PantiesNormal) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PantiesNormal", "$NoText")
			Else
				AddTextOption("SLA_PantiesNormal", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_PantsNormal) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PantsNormal", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_PantsNormal) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PantsNormal", "$NoText")
			Else
				AddTextOption("SLA_PantsNormal", "$IgnoredText")
			EndIf
			
			SetCursorPosition(5)
			If PlayerRef.WornHasKeyword(Main.SLA_PastiesCrotch) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PastiesCrotch", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_PastiesCrotch) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PastiesCrotch", "$NoText")
			Else
				AddTextOption("SLA_PastiesCrotch", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_PastiesNipple) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PastiesNipple", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_PastiesNipple) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PastiesNipple", "$NoText")
			Else
				AddTextOption("SLA_PastiesNipple", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_PelvicCurtain) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PelvicCurtain", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_PelvicCurtain) && IgnoreBakaKeywords == False
				AddTextOption("SLA_PelvicCurtain", "$NoText")
			Else
				AddTextOption("SLA_PelvicCurtain", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_ShowgirlSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ShowgirlSkirt", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ShowgirlSkirt) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ShowgirlSkirt", "$NoText")
			Else
				AddTextOption("SLA_ShowgirlSkirt", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_ThongCString) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongCString", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ThongCString) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongCString", "$NoText")
			Else
				AddTextOption("SLA_ThongCString", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_ThongGstring) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongGstring", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ThongGstring) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongGstring", "$NoText")
			Else
				AddTextOption("SLA_ThongGstring", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_ThongLowleg) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongLowleg", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ThongLowleg) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongLowleg", "$NoText")
			Else
				AddTextOption("SLA_ThongLowleg", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_ThongT) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongT", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ThongT) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ThongT", "$NoText")
			Else
				AddTextOption("SLA_ThongT", "$IgnoredText")
			EndIf
			
			If PlayerRef.WornHasKeyword(Main.SLA_ArmorHalfNaked) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ArmorHalfNaked", "$YesText")
			ElseIf !PlayerRef.WornHasKeyword(Main.SLA_ArmorHalfNaked) && IgnoreBakaKeywords == False
				AddTextOption("SLA_ArmorHalfNaked", "$NoText")
			Else
				AddTextOption("SLA_ArmorHalfNaked", "$IgnoredText")
			EndIf
		Else
			Debug.MessageBox("$UnexpectedError")
		EndIf
	EndIf
EndEvent

Int Function GetDisabledOptionFlagIf(Bool Condition)
	If (Condition)
		return OPTION_FLAG_DISABLED
	Else
		return 0
	EndIf
EndFunction

State AND_AllowMotionFlashState
	Event OnSelectST()
		If AllowMotionFlash == False
			AllowMotionFlash = True
		Else
			AllowMotionFlash = False
		EndIf
		SetToggleOptionValueST(AllowMotionFlash, False, "AND_AllowMotionFlashState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfotext("$AND_AllowMotionFlash_Tooltip")
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
		SetInfotext("$AND_RunningFlash_Tooltip")
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
		SetInfotext("$AND_SprintingFlash_Tooltip")
	EndEvent
EndState

State UseGenderlessState
	Event OnSelectST()
		If GenderlessWording == False
			GenderlessWording = True
		Else
			GenderlessWording = False
		EndIf
		SetToggleOptionValueST(GenderlessWording, False, "UseGenderlessState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfotext("$AND_Genderless_Tooltip")
	EndEvent
EndState

State IgnoreBakaState
	Event OnSelectST()
		If IgnoreBakaKeywords == False
			IgnoreBakaKeywords = True
		Else
			IgnoreBakaKeywords = False
		EndIf
		SetToggleOptionValueST(IgnoreBakaKeywords, False, "IgnoreBakaState")
		ForcePageReset()
	EndEvent
	
	Event OnHighlightST()
		SetInfotext("$AND_IgnoreBaka_Tooltip")
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
		SetInfotext("$AND_ChestCurtainOddsLow_Tooltip")
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
		SetInfotext("$AND_ChestCurtainOdds_Tooltip")
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
		SetInfotext("$AND_ChestCurtainOddsHigh_Tooltip")
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
		SetInfotext("$AND_ChestCurtainOddsExtreme_Tooltip")
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
		SetInfotext("$AND_ChestCurtainOddsUltra_Tooltip")
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
		SetInfotext("$AND_TransparentChestCurtainOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentChestCurtainOdds_Tooltip")
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
		SetInfotext("$AND_TransparentChestCurtainOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentChestCurtainOddsExtreme_Tooltip")
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
		SetInfotext("$AND_TransparentChestCurtainOddsUltra_Tooltip")
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
		SetInfotext("$AND_PelvicCurtainOddsLow_Tooltip")
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
		SetInfotext("$AND_PelvicCurtainOdds_Tooltip")
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
		SetInfotext("$AND_PelvicCurtainOddsHigh_Tooltip")
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
		SetInfotext("$AND_PelvicCurtainOddsExtreme_Tooltip")
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
		SetInfotext("$AND_PelvicCurtainOddsUltra_Tooltip")
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
		SetInfotext("$AND_TransparentPelvicCurtainOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentPelvicCurtainOdds_Tooltip")
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
		SetInfotext("$AND_TransparentPelvicCurtainOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentPelvicCurtainOddsExtreme_Tooltip")
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
		SetInfotext("$AND_TransparentPelvicCurtainOddsUltra_Tooltip")
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
		SetInfotext("$AND_AssCurtainOddsLow_Tooltip")
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
		SetInfotext("$AND_AssCurtainOdds_Tooltip")
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
		SetInfotext("$AND_AssCurtainOddsHigh_Tooltip")
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
		SetInfotext("$AND_AssCurtainOddsExtreme_Tooltip")
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
		SetInfotext("$AND_AssCurtainOddsUltra_Tooltip")
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
		SetInfotext("$AND_TransparentAssCurtainOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentAssCurtainOdds_Tooltip")
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
		SetInfotext("$AND_TransparentAssCurtainOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentAssCurtainOddsExtreme_Tooltip")
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
		SetInfotext("$AND_TransparentAssCurtainOddsUltra_Tooltip")
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
		SetInfotext("$AND_CstringOdds_Tooltip")
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
		SetInfotext("$AND_TransparentCstringOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentCstringOdds_Tooltip")
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
		SetInfotext("$AND_TransparentCstringOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentArmorTopOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentArmorTopOdds_Tooltip")
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
		SetInfotext("$AND_TransparentArmorTopOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentArmorBottomOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentArmorBottomOdds_Tooltip")
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
		SetInfotext("$AND_TransparentArmorBottomOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentBraOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentBraOdds_Tooltip")
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
		SetInfotext("$AND_TransparentBraOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentUnderwearOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentUnderwearOdds_Tooltip")
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
		SetInfotext("$AND_TransparentUnderwearOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentHotpantsOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentHotpantsOdds_Tooltip")
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
		SetInfotext("$AND_TransparentHotpantsOddsHigh_Tooltip")
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
		SetInfotext("$AND_TransparentShowgirlSkirtOddsLow_Tooltip")
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
		SetInfotext("$AND_TransparentShowgirlSkirtOdds_Tooltip")
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
		SetInfotext("$AND_TransparentShowgirlSkirtOddsHigh_Tooltip")
	EndEvent
EndState