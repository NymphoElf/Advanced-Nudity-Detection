ScriptName AND_FemaleArmorScan extends Quest

AND_Core Property Core Auto
AND_MCM Property Config Auto

Actor Property PlayerRef Auto

Bool Property AND_TopCurtain_Cover Auto Hidden
Bool Property AND_Bra_Cover Auto Hidden
Bool Property AND_Chest_Cover Auto Hidden

Bool Property AND_PelvicCurtain_Cover Auto Hidden
Bool Property AND_AssCurtain_Cover Auto Hidden
Bool Property AND_BottomGenital_Cover Auto Hidden
Bool Property AND_BottomAss_Cover Auto Hidden
Bool Property AND_Underwear_Cover Auto Hidden

Bool Function CurtainCheck(String Type, Bool IsTransparent, String Level)
	Int Roll = 0
	Int Odds = 0
	
	If Type == "Chest"
		Roll = Core.TopCurtainRoll
		If Level == "Low"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsLow
			Else
				Odds = Config.TransparentTopCurtainOddsLow
			EndIf
		ElseIf Level == "Normal"
			If IsTransparent == False
				Odds = Config.TopCurtainOdds
			Else
				Odds = Config.TransparentTopCurtainOdds
			EndIf
		ElseIf Level == "High"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsHigh
			Else
				Odds = Config.TransparentTopCurtainOddsHigh
			EndIf
		ElseIf Level == "Extreme"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsExtreme
			Else
				Odds = Config.TransparentTopCurtainOddsExtreme
			EndIf
		ElseIf Level == "Ultra"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsUltra
			Else
				Odds = Config.TransparentTopCurtainOddsUltra
			EndIf
		EndIf
	ElseIf Type == "Pelvic"
		Roll = Core.PelvicCurtainRoll
		If Level == "Low"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsLow
			Else
				Odds = Config.TransparentPelvicCurtainOddsLow
			EndIf
		ElseIf Level == "Normal"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOdds
			Else
				Odds = Config.TransparentPelvicCurtainOdds
			EndIf
		ElseIf Level == "High"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsHigh
			Else
				Odds = Config.TransparentPelvicCurtainOddsHigh
			EndIf
		ElseIf Level == "Extreme"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsExtreme
			Else
				Odds = Config.TransparentPelvicCurtainOddsExtreme
			EndIf
		ElseIf Level == "Ultra"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsUltra
			Else
				Odds = Config.TransparentPelvicCurtainOddsUltra
			EndIf
		EndIf
	ElseIf Type == "Ass"
		Roll = Core.AssCurtainRoll
		If Level == "Low"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsLow
			Else
				Odds = Config.TransparentAssCurtainOddsLow
			EndIf
		ElseIf Level == "Normal"
			If IsTransparent == False
				Odds = Config.AssCurtainOdds
			Else
				Odds = Config.TransparentAssCurtainOdds
			EndIf
		ElseIf Level == "High"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsHigh
			Else
				Odds = Config.TransparentAssCurtainOddsHigh
			EndIf
		ElseIf Level == "Extreme"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsExtreme
			Else
				Odds = Config.TransparentAssCurtainOddsExtreme
			EndIf
		ElseIf Level == "Ultra"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsUltra
			Else
				Odds = Config.TransparentAssCurtainOddsUltra
			EndIf
		EndIf
	EndIf
	
	If Roll <= Odds
		If Type == "Chest"
			PlayerRef.SetFactionRank(Core.FlashingChestCurtain, 0)
		ElseIf Type == "Pelvic"
			PlayerRef.SetFactionRank(Core.FlashingPelvicCurtain, 0)
		ElseIf Type == "Ass"
			PlayerRef.SetFactionRank(Core.FlashingAssCurtain, 0)
		EndIf
		return False
	EndIf
	
	If Type == "Chest"
		PlayerRef.SetFactionRank(Core.FlashingChestCurtain, 1)
	ElseIf Type == "Pelvic"
		PlayerRef.SetFactionRank(Core.FlashingPelvicCurtain, 1)
	ElseIf Type == "Ass"
		PlayerRef.SetFactionRank(Core.FlashingAssCurtain, 1)
	EndIf
	return True
EndFunction

Bool Function TransparentItemCheck(String Type, String Level)
	Int Roll = 0
	Int Odds = 0
	
	If Type == "Top"
		Roll = Core.TopTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentTopArmorOdds_Low
		ElseIf Level == "Normal"
			Odds = Config.TransparentTopArmorOdds
		ElseIf Level == "High"
			Odds = Config.TransparentTopArmorOdds_High
		EndIf
	ElseIf Type == "Bra"
		Roll = Core.BraTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentBraOdds_Low
		ElseIf Level == "Normal"
			Odds = Config.TransparentBraOdds
		ElseIf Level == "High"
			Odds = Config.TransparentBraOdds_High
		EndIf
	ElseIf Type == "Bottom"
		Roll = Core.BottomTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentBottomArmorOdds_Low
		ElseIf Level == "Normal"
			Odds = Config.TransparentBottomArmorOdds
		ElseIf Level == "High"
			Odds = Config.TransparentBottomArmorOdds_High
		EndIf
	ElseIf Type == "Underwear"
		Roll = Core.UnderwearTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentUnderwearOdds_Low
		ElseIf Level == "Normal"
			Odds = Config.TransparentUnderwearOdds
		ElseIf Level == "High"
			Odds = Config.TransparentUnderwearOdds_High
		EndIf
	ElseIf Type == "Hotpants"
		Roll = Core.HotpantsTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentHotpantsOdds_Low
		ElseIf Level == "Normal"
			Odds = Config.TransparentHotpantsOdds
		ElseIf Level == "High"
			Odds = Config.TransparentHotpantsOdds_High
		EndIf
	ElseIf Type == "Showgirl"
		Roll = Core.ShowgirlTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentShowgirlSkirtOdds_Low
		ElseIf Level == "Normal"
			Odds = Config.TransparentShowgirlSkirtOdds
		ElseIf Level == "High"
			Odds = Config.TransparentShowgirlSkirtOdds_High
		EndIf
	EndIf
	
	If Roll <= Odds
		If Type == "Top"
			PlayerRef.SetFactionRank(Core.FlashingTop, 0)
		ElseIf Type == "Bra"
			PlayerRef.SetFactionRank(Core.FlashingBra, 0)
		ElseIf Type == "Bottom"
			PlayerRef.SetFactionRank(Core.FlashingBottom, 0)
		ElseIf Type == "Underwear"
			PlayerRef.SetFactionRank(Core.FlashingUnderwear, 0)
		ElseIf Type == "Hotpants"
			PlayerRef.SetFactionRank(Core.FlashingHotpants, 0)
		ElseIf Type == "Showgirl"
			PlayerRef.SetFactionRank(Core.FlashingSkirt, 0)
		EndIf
		return False
	EndIf
	
	If Type == "Top"
		PlayerRef.SetFactionRank(Core.FlashingTop, 1)
	ElseIf Type == "Bra"
		PlayerRef.SetFactionRank(Core.FlashingBra, 1)
	ElseIf Type == "Bottom"
		PlayerRef.SetFactionRank(Core.FlashingBottom, 1)
	ElseIf Type == "Underwear"
		PlayerRef.SetFactionRank(Core.FlashingUnderwear, 1)
	ElseIf Type == "Hotpants"
		PlayerRef.SetFactionRank(Core.FlashingHotpants, 1)
	ElseIf Type == "Showgirl"
		PlayerRef.SetFactionRank(Core.FlashingSkirt, 1)
	EndIf
	return True
EndFunction

Bool Function CStringCheck(Bool IsTransparent, String Level)
	Int Odds = 0
	If IsTransparent == False
		Odds = Config.CStringOdds
	ElseIf Level == "Low"
		Odds = Config.TransparentCStringOdds_Low
	ElseIf Level == "Normal"
		Odds = Config.TransparentCStringOdds
	ElseIf Level == "High"
		Odds = Config.TransparentCStringOdds_High
	EndIf
	
	If Core.CStringRoll <= Odds
		PlayerRef.SetFactionRank(Core.FlashingCString, 0)
		return False
	EndIf
	PlayerRef.SetFactionRank(Core.FlashingCString, 1)
	return True
EndFunction

Function FullAnalyze()
	AND_Logger.FastLog("<Female Armor Scan> [FullAnalyze] Full Analysis Started for Player")
	If PlayerRef.WornHasKeyword(Core.AND_CoversAll) == False && Core.IsPlayerTransformed() == False
		AND_Logger.FastLog("<Female Armor Scan> [FullAnalyze] No CoversAll Keyword Detected")
		
		Bool HasChestCurtain = PlayerRef.WornHasKeyword(Core.AND_ChestCurtain)
		Bool HasChestCurtainT = PlayerRef.WornHasKeyword(Core.AND_ChestCurtainT)
		
		String HasChestRiskLevel = "None"
		If HasChestCurtain == True || HasChestCurtainT == True
			If PlayerRef.WornHasKeyword(Core.AND_ChestFlashRiskLow)
				HasChestRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ChestFlashRisk)
				HasChestRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ChestFlashRiskHigh)
				HasChestRiskLevel = "High"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ChestFlashRiskExtreme)
				HasChestRiskLevel = "Extreme"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ChestFlashRiskUltra)
				HasChestRiskLevel = "Ultra"
			EndIf
		EndIf
		
		Bool HasPelvicCurtain = (PlayerRef.WornHasKeyword(Core.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(Core.AND_Miniskirt))
		Bool HasPelvicCurtainT = (PlayerRef.WornHasKeyword(Core.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(Core.AND_MiniskirtT))
		
		String HasPelvicRiskLevel = "None"
		If HasPelvicCurtain == True || HasPelvicCurtainT == True
			If PlayerRef.WornHasKeyword(Core.AND_PelvicFlashRiskLow)
				HasPelvicRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_PelvicFlashRisk)
				HasPelvicRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_PelvicFlashRiskHigh)
				HasPelvicRiskLevel = "High"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_PelvicFlashRiskExtreme)
				HasPelvicRiskLevel = "Extreme"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_PelvicFlashRiskUltra)
				HasPelvicRiskLevel = "Ultra"
			EndIf
		EndIf
		
		Bool HasAssCurtain = (PlayerRef.WornHasKeyword(Core.AND_AssCurtain) || PlayerRef.WornHasKeyword(Core.AND_Miniskirt))
		Bool HasAssCurtainT = (PlayerRef.WornHasKeyword(Core.AND_AssCurtainT) || PlayerRef.WornHasKeyword(Core.AND_MiniskirtT))
		
		String HasAssRiskLevel = "None"
		If HasAssCurtain == True || HasAssCurtainT == True
			If PlayerRef.WornHasKeyword(Core.AND_AssFlashRiskLow)
				HasAssRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_AssFlashRisk)
				HasAssRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_AssFlashRiskHigh)
				HasAssRiskLevel = "High"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_AssFlashRiskExtreme)
				HasAssRiskLevel = "Extreme"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_AssFlashRiskUltra)
				HasAssRiskLevel = "Ultra"
			EndIf
		EndIf
		
		If VanillaArmorCheck() == False ;Armor has at least one AND Keyword
			AND_Logger.FastLog("<Female Armor Scan> [FullAnalyze] Armor is not Vanilla")
			;/
			=============
			Top Variables
			=============
			/;
			Bool HasArmorTop = PlayerRef.WornHasKeyword(Core.AND_ArmorTop)
			String HasTopRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_ArmorTopT_Low)
				HasTopRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ArmorTopT)
				HasTopRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ArmorTopT_High)
				HasTopRiskLevel = "High"
			EndIf
			Bool HasArmorTopT = (HasTopRiskLevel != "None")
			
			Bool HasBra = PlayerRef.WornHasKeyword(Core.AND_Bra)
			String HasBraRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_BraT_Low)
				HasBraRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_BraT)
				HasBraRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_BraT_High)
				HasBraRiskLevel = "High"
			EndIf
			Bool HasBraT = (HasBraRiskLevel != "None")
			
			Bool HasBraNoCover = PlayerRef.WornHasKeyword(Core.AND_Bra_NoCover)
			
			;/
			================
			Bottom Variables
			================
			/;
			Bool HasArmorBottom = PlayerRef.WornHasKeyword(Core.AND_ArmorBottom)
			String HasBottomRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_ArmorBottomT_Low)
				HasBottomRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ArmorBottomT)
				HasBottomRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ArmorBottomT_High)
				HasBottomRiskLevel = "High"
			EndIf
			Bool HasArmorBottomT = (HasBottomRiskLevel != "None")
			
			Bool HasHotpants = PlayerRef.WornHasKeyword(Core.AND_Hotpants)
			String HasHotpantsRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_HotpantsT_Low)
				HasHotpantsRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_HotpantsT)
				HasHotpantsRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_HotpantsT_High)
				HasHotpantsRiskLevel = "High"
			EndIf
			Bool HasHotpantsT = (HasHotpantsRiskLevel != "None")
			
			Bool HasShowgirl = PlayerRef.WornHasKeyword(Core.AND_ShowgirlSkirt)
			String HasShowgirlRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_ShowgirlSkirtT_Low)
				HasShowgirlRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ShowgirlSkirtT)
				HasShowgirlRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ShowgirlSkirtT_High)
				HasShowgirlRiskLevel = "High"
			EndIf
			Bool HasShowgirlT = (HasShowgirlRiskLevel != "None")
			
			Bool HasUnderwear = PlayerRef.WornHasKeyword(Core.AND_Underwear)
			String HasUnderwearRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_UnderwearT_Low)
				HasUnderwearRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_UnderwearT)
				HasUnderwearRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_UnderwearT_High)
				HasUnderwearRiskLevel = "High"
			EndIf
			Bool HasUnderwearT = (HasUnderwearRiskLevel != "None")
			Bool HasUnderwearNoCover = PlayerRef.WornHasKeyword(Core.AND_Underwear_NoCover)
			
			Bool HasThong = PlayerRef.WornHasKeyword(Core.AND_Thong)
			String HasThongRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_ThongT_Low)
				HasThongRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ThongT)
				HasThongRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_ThongT_High)
				HasThongRiskLevel = "High"
			EndIf
			Bool HasThongT = (HasThongRiskLevel != "None")
			Bool HasThongNoCover = PlayerRef.WornHasKeyword(Core.AND_Thong_NoCover)
			
			Bool HasCString = PlayerRef.WornHasKeyword(Core.AND_CString)
			String HasCStringRiskLevel = "None"
			If PlayerRef.WornHasKeyword(Core.AND_CStringT_Low)
				HasCStringRiskLevel = "Low"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_CStringT)
				HasCStringRiskLevel = "Normal"
			ElseIf PlayerRef.WornHasKeyword(Core.AND_CStringT_High)
				HasCStringRiskLevel = "High"
			EndIf
			Bool HasCStringT = (HasCStringRiskLevel != "None")
			
			AnalyzeTop(HasChestCurtain, HasChestCurtainT, HasChestRiskLevel, HasArmorTop, HasArmorTopT, HasTopRiskLevel, HasBra, HasBraT, HasBraRiskLevel, HasBraNoCover)
			AnalyzeBottom(HasPelvicCurtain, HasPelvicCurtainT, HasPelvicRiskLevel, HasAssCurtain, HasAssCurtainT, HasAssRiskLevel, HasArmorBottom, HasArmorBottomT, HasBottomRiskLevel, HasHotpants, HasHotpantsT, HasHotpantsRiskLevel, HasShowgirl, HasShowgirlT, HasShowgirlRiskLevel, HasUnderwear, HasUnderwearT, HasUnderwearRiskLevel, HasUnderwearNoCover, HasThong, HasThongT, HasThongRiskLevel, HasThongNoCover, HasCString, HasCStringT, HasCStringRiskLevel)
		Else
			AND_Logger.FastLog("<Female Armor Scan> [FullAnalyze] Armor is considered Vanilla")
			;These checks simply update MCM condition for consistency
			If HasChestCurtain == True || HasChestCurtainT == True
				AND_TopCurtain_Cover = CurtainCheck("Chest", HasChestCurtainT, HasChestRiskLevel)
			EndIf
			If HasPelvicCurtain == True || HasPelvicCurtainT == True
				AND_PelvicCurtain_Cover = CurtainCheck("Pelvic", HasPelvicCurtainT, HasPelvicRiskLevel)
			EndIf
			If HasAssCurtain == True || HasAssCurtainT == True
				AND_AssCurtain_Cover = CurtainCheck("Ass", HasAssCurtainT, HasAssRiskLevel)
			EndIf
			
			AND_Bra_Cover = True
			AND_Chest_Cover = True
			
			AND_BottomGenital_Cover = True
			AND_BottomAss_Cover = True
			AND_Underwear_Cover = True
		EndIf
	Else
		AND_Logger.FastLog("<Female Armor Scan> [FullAnalyze] CoversAll Keyword Detected")
		
		AND_TopCurtain_Cover = True
		AND_PelvicCurtain_Cover = True
		AND_AssCurtain_Cover = True
		
		AND_Bra_Cover = True
		AND_Chest_Cover = True
		
		AND_BottomGenital_Cover = True
		AND_BottomAss_Cover = True
		AND_Underwear_Cover = True
	EndIf
	FinalAnalyze()
EndFunction

Function AnalyzeTop(Bool ChestCurtain, Bool ChestCurtainT, String ChestRiskLevel, Bool ArmorTop, Bool ArmorTopT, String TopRiskLevel, Bool Bra, Bool BraT, String BraRiskLevel, Bool BraNoCover)
	;Curtain Layer
	If ChestCurtain == True || ChestCurtainT == True
		AND_TopCurtain_Cover = CurtainCheck("Chest", ChestCurtainT, ChestRiskLevel)
	Else
		AND_TopCurtain_Cover = False
	EndIf
		
	;Armor Layer
	If ArmorTop == True
		AND_Bra_Cover = True
		AND_Chest_Cover = True
	ElseIf ArmorTopT == True
		Bool TopCovering = TransparentItemCheck("Top", TopRiskLevel)
		
		If TopCovering == True
			AND_Bra_Cover = True
			AND_Chest_Cover = True
		Else
			;Bra Layer
			If Bra == True
				AND_Bra_Cover = False
				AND_Chest_Cover = True
			ElseIf BraT == True
				AND_Bra_Cover = False
				AND_Chest_Cover = TransparentItemCheck("Bra", BraRiskLevel)
			ElseIf BraNoCover == True
				AND_Bra_Cover = False
				AND_Chest_Cover = False
			Else
				AND_Bra_Cover = True
				AND_Chest_Cover = False
			EndIf
		EndIf
	Else
		;Bra Layer
		If Bra == True
			AND_Bra_Cover = False
			AND_Chest_Cover = True
		ElseIf BraT == True
			AND_Bra_Cover = False
			AND_Chest_Cover = TransparentItemCheck("Bra", BraRiskLevel)
		ElseIf BraNoCover == True
			AND_Bra_Cover = False
			AND_Chest_Cover = False
		Else
			AND_Bra_Cover = True
			AND_Chest_Cover = False
		EndIf
	EndIf
EndFunction

Function AnalyzeBottom(Bool PelvicCurtain, Bool PelvicCurtainT, String PelvicRiskLevel, Bool AssCurtain, Bool AssCurtainT, String AssRiskLevel, Bool ArmorBottom, Bool ArmorBottomT, String BottomRiskLevel, Bool Hotpants, Bool HotpantsT, String HotpantsRiskLevel, Bool Showgirl, Bool ShowgirlT, String ShowgirlRiskLevel, Bool Underwear, Bool UnderwearT, String UnderwearRiskLevel, Bool UnderwearNoCover, Bool Thong, Bool ThongT, String ThongRiskLevel, Bool ThongNoCover, Bool CString, Bool CStringT, String CStringRiskLevel)
	;Pelvic Curtain Layer
	If PelvicCurtain == True || PelvicCurtainT == True
		AND_PelvicCurtain_Cover = CurtainCheck("Pelvic", PelvicCurtainT, PelvicRiskLevel)
	Else
		AND_PelvicCurtain_Cover = False
	EndIf
	
	;Ass Curtain Layer
	If AssCurtain == True || AssCurtainT == True
		AND_AssCurtain_Cover = CurtainCheck("Ass", AssCurtainT, AssRiskLevel)
	Else
		AND_AssCurtain_Cover = False
	EndIf
		
	;Bottom Armor Layer
	If ArmorBottom == True
		AND_BottomAss_Cover = True
		AND_BottomGenital_Cover = True
		AND_Underwear_Cover = True
	ElseIf ArmorBottomT == True
		AND_Underwear_Cover = TransparentItemCheck("Bottom", BottomRiskLevel)
		
		If AND_Underwear_Cover == True
			AND_BottomGenital_Cover = True
			AND_BottomAss_Cover = True
		Else
			If Hotpants == True && Showgirl == True
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf Hotpants == True && ShowgirlT == True
				AND_BottomGenital_Cover = True
				
				If Underwear == True
					AND_BottomAss_Cover = True
					AND_Underwear_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
				ElseIf UnderwearT == True
					AND_Underwear_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					EndIf
				ElseIf UnderwearNoCover == True
					AND_Underwear_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = False
					EndIf
				ElseIf Thong == True || ThongT == True || CString == True || CStringT == True || ThongNoCover == True
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
				EndIf
				
			ElseIf HotpantsT == True && Showgirl == True
				AND_BottomAss_Cover = True
				If Underwear == True || Thong == True
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
				ElseIf UnderwearT == True || ThongT == True || CString == True || CStringT == True
					AND_Underwear_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						If UnderwearT == True || ThongT == True
							AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
						Else
							AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
							If AND_BottomGenital_Cover == True
								AND_Underwear_Cover = False
							Else
								AND_Underwear_Cover = True
							EndIf
						EndIf
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						AND_BottomGenital_Cover = False
					EndIf
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
				EndIf
					
			ElseIf HotpantsT == True && ShowgirlT == True
				Bool Hotpants_Covering = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
				Bool Showgirl_Covering = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					AND_BottomGenital_Cover = True
					If Underwear == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf UnderwearT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					ElseIf UnderwearNoCover == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If Underwear == True || Thong == True
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf UnderwearT == True || ThongT == True
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					ElseIf CString == True || CStringT == True
						AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf UnderwearNoCover == True || ThongNoCover == True
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If Underwear == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf UnderwearT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf Thong == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ThongT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					ElseIf CString == True || CStringT == True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf UnderwearNoCover == True || ThongNoCover == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf Hotpants == True
				AND_BottomGenital_Cover = True
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
				ElseIf UnderwearT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf UnderwearNoCover == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
				EndIf
			ElseIf Showgirl == True
				AND_BottomAss_Cover = True
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf Thong == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf UnderwearT == True || ThongT == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf CString == True || CStringT == True
					AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = False
				EndIf
			ElseIf HotpantsT == True
				Bool Hotpants_Covering = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
				If Hotpants_Covering == True
					AND_BottomGenital_Cover = True
					If Underwear == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf UnderwearT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					ElseIf UnderwearNoCover == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				Else
					If Underwear == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf UnderwearT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf Thong == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ThongT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					ElseIf CString == True || CStringT == True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf UnderwearNoCover == True || ThongNoCover == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf ShowgirlT == True
				Bool Showgirl_Covering = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
				If Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If Underwear == True || Thong == True
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf UnderwearT == True || ThongT == True
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					ElseIf CString == True || CStringT == True
						AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf UnderwearNoCover == True || ThongNoCover == True
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If Underwear == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf UnderwearT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf Thong == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ThongT == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					ElseIf CString == True || CStringT == True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf UnderwearNoCover == True || ThongNoCover == True
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			Else
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf UnderwearT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf Thong == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ThongT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf CString == True || CStringT == True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				EndIf
			EndIf
		EndIf
	Else
		If Hotpants == True && Showgirl == True
			AND_BottomAss_Cover = True
			AND_BottomGenital_Cover = True
			AND_Underwear_Cover = True				
		ElseIf Hotpants == True && ShowgirlT == True
			AND_BottomGenital_Cover = True
			
			If Underwear == True
				AND_BottomAss_Cover = True
				AND_Underwear_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
			ElseIf UnderwearT == True
				AND_Underwear_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
				If AND_Underwear_Cover == True
					AND_BottomAss_Cover = True
				Else
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				EndIf
			ElseIf UnderwearNoCover == True
				AND_Underwear_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
				If AND_Underwear_Cover == True
					AND_BottomAss_Cover = True
				Else
					AND_BottomAss_Cover = False
				EndIf
			ElseIf Thong == True || ThongT == True || CString == True || CStringT == True || ThongNoCover == True
				AND_Underwear_Cover = True
				AND_BottomAss_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
			Else
				AND_Underwear_Cover = True
				AND_BottomAss_Cover = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
			EndIf
			
		ElseIf HotpantsT == True && Showgirl == True
			AND_BottomAss_Cover = True
			If Underwear == True || Thong == True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
			ElseIf UnderwearT == True || ThongT == True || CString == True || CStringT == True
				AND_Underwear_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
				If AND_Underwear_Cover == True
					AND_BottomGenital_Cover = True
				Else
					If UnderwearT == True || ThongT == True
						AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					Else
						AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					EndIf
				EndIf
			ElseIf UnderwearNoCover == True || ThongNoCover == True
				AND_Underwear_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
				If AND_Underwear_Cover == True
					AND_BottomGenital_Cover = True
				Else
					AND_BottomGenital_Cover = False
				EndIf
			Else
				AND_Underwear_Cover = True
				AND_BottomGenital_Cover = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
			EndIf
				
		ElseIf HotpantsT == True && ShowgirlT == True
			Bool Hotpants_Covering = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
			Bool Showgirl_Covering = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
			
			If Hotpants_Covering == True && Showgirl_Covering == True
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True
			ElseIf Hotpants_Covering == True && Showgirl_Covering == False
				AND_BottomGenital_Cover = True
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
				ElseIf UnderwearT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf UnderwearNoCover == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
				EndIf
			ElseIf Hotpants_Covering == False && Showgirl_Covering == True
				AND_BottomAss_Cover = True
				If Underwear == True || Thong == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf UnderwearT == True || ThongT == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf CString == True || CStringT == True
					AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = False
				EndIf
			Else
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf UnderwearT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf Thong == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ThongT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf CString == True || CStringT == True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				EndIf
			EndIf
		ElseIf Hotpants == True
			AND_BottomGenital_Cover = True
			If Underwear == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = True
			ElseIf UnderwearT == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
			ElseIf UnderwearNoCover == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = False
			Else
				AND_Underwear_Cover = True
				AND_BottomAss_Cover = False
			EndIf
		ElseIf Showgirl == True
			AND_BottomAss_Cover = True
			If Underwear == True
				AND_Underwear_Cover = False
				AND_BottomGenital_Cover = True
			ElseIf Thong == True
				AND_Underwear_Cover = False
				AND_BottomGenital_Cover = True
			ElseIf UnderwearT == True || ThongT == True
				AND_Underwear_Cover = False
				AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
			ElseIf CString == True || CStringT == True
				AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
				If AND_BottomGenital_Cover == True
					AND_Underwear_Cover = False
				Else
					AND_Underwear_Cover = True
				EndIf
			ElseIf UnderwearNoCover == True || ThongNoCover == True
				AND_Underwear_Cover = False
				AND_BottomGenital_Cover = False
			Else
				AND_Underwear_Cover = True
				AND_BottomGenital_Cover = False
			EndIf
		ElseIf HotpantsT == True
			Bool Hotpants_Covering = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
			If Hotpants_Covering == True
				AND_BottomGenital_Cover = True
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
				ElseIf UnderwearT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf UnderwearNoCover == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
				EndIf
			Else
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf UnderwearT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf Thong == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ThongT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf CString == True || CStringT == True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				EndIf
			EndIf
		ElseIf ShowgirlT == True
			Bool Showgirl_Covering = TransparentItemCheck("Showgirl", ShowgirlRiskLevel)
			If Showgirl_Covering == True
				AND_BottomAss_Cover = True
				If Underwear == True || Thong == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf UnderwearT == True || ThongT == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf CString == True || CStringT == True
					AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = False
				EndIf
			Else
				If Underwear == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf UnderwearT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf Thong == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ThongT == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				ElseIf CString == True || CStringT == True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf UnderwearNoCover == True || ThongNoCover == True
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				EndIf
			EndIf
		Else
			If Underwear == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
			ElseIf UnderwearT == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				AND_BottomGenital_Cover = AND_BottomAss_Cover
			ElseIf Thong == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = False
				AND_BottomGenital_Cover = True
			ElseIf ThongT == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = False
				AND_BottomGenital_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
			ElseIf CString == True || CStringT == True
				AND_BottomAss_Cover = False
				AND_BottomGenital_Cover = CStringCheck(CStringT, CStringRiskLevel)
				If AND_BottomGenital_Cover == True
					AND_Underwear_Cover = False
				Else
					AND_Underwear_Cover = True
				EndIf
			ElseIf UnderwearNoCover == True || ThongNoCover == True
				AND_Underwear_Cover = False
				AND_BottomAss_Cover = False
				AND_BottomGenital_Cover = False
			Else
				AND_Underwear_Cover = True
				AND_BottomAss_Cover = False
				AND_BottomGenital_Cover = False
			EndIf
		EndIf
	EndIf
EndFunction

Bool Function VanillaArmorCheck()
	Armor AND_Slot32 = PlayerRef.GetEquippedArmorInSlot(32)
	
	If AND_Slot32 != None
		Bool CurtainKeywords = False
		Bool TopKeywords = False
		Bool BottomKeywords = False
		Bool BraKeywords = False
		Bool UnderwearKeywords = False
		Bool ExtraKeywords = False
		
		If !AND_Slot32.HasKeyword(Core.AND_ChestCurtain) && !AND_Slot32.HasKeyword(Core.AND_ChestCurtainT) && !AND_Slot32.HasKeyword(Core.AND_PelvicCurtain)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_PelvicCurtainT) && !AND_Slot32.HasKeyword(Core.AND_AssCurtain) && !AND_Slot32.HasKeyword(Core.AND_AssCurtainT)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Miniskirt) && !AND_Slot32.HasKeyword(Core.AND_MiniskirtT)
			CurtainKeywords = False
		Else
			CurtainKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_ArmorTop) && !AND_Slot32.HasKeyword(Core.AND_ArmorTopT_Low) && !AND_Slot32.HasKeyword(Core.AND_ArmorTopT) && !AND_Slot32.HasKeyword(Core.AND_ArmorTopT_High)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ArmorTop_NoCover)
			TopKeywords = False
		Else
			TopKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_ArmorBottom)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ArmorBottomT_Low) && !AND_Slot32.HasKeyword(Core.AND_ArmorBottomT) && !AND_Slot32.HasKeyword(Core.AND_ArmorBottomT_High)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ArmorBottom_NoCover)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Hotpants)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_HotpantsT_Low) && !AND_Slot32.HasKeyword(Core.AND_HotpantsT) && !AND_Slot32.HasKeyword(Core.AND_HotpantsT_High)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ShowgirlSkirt)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ShowgirlSkirtT_Low) && !AND_Slot32.HasKeyword(Core.AND_ShowgirlSkirtT) && !AND_Slot32.HasKeyword(Core.AND_ShowgirlSkirtT_High)
			BottomKeywords = False
		Else
			BottomKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_Bra) && !AND_Slot32.HasKeyword(Core.AND_BraT_Low) && !AND_Slot32.HasKeyword(Core.AND_BraT) && !AND_Slot32.HasKeyword(Core.AND_BraT_High)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Bra_NoCover)
			BraKeywords = False
		Else
			BraKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_Underwear) && !AND_Slot32.HasKeyword(Core.AND_UnderwearT_Low) && !AND_Slot32.HasKeyword(Core.AND_UnderwearT) && !AND_Slot32.HasKeyword(Core.AND_UnderwearT_High)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Underwear_NoCover) && !AND_Slot32.HasKeyword(Core.AND_Thong)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ThongT_Low) && !AND_Slot32.HasKeyword(Core.AND_ThongT) && !AND_Slot32.HasKeyword(Core.AND_ThongT_High) && !AND_Slot32.HasKeyword(Core.AND_Thong_NoCover)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_CString) && !AND_Slot32.HasKeyword(Core.AND_CStringT_Low) && !AND_Slot32.HasKeyword(Core.AND_CStringT) && !AND_Slot32.HasKeyword(Core.AND_CStringT_High)
			UnderwearKeywords = False
		Else
			UnderwearKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_NearlyNaked) && !AND_Slot32.HasKeyword(Core.AND_NipplePasties) && !AND_Slot32.HasKeyword(Core.AND_VaginaPasties) && !AND_Slot32.HasKeyword(Core.AND_Microskirt) && !AND_Slot32.HasKeyword(Core.AND_EffectivelyNaked)
			ExtraKeywords = False
		Else
			ExtraKeywords = True
		EndIf
		
		If CurtainKeywords == False && TopKeywords == False && BottomKeywords == False && BraKeywords == False && UnderwearKeywords == False && ExtraKeywords == False
			AND_Bra_Cover = True
			AND_Chest_Cover = True
			AND_Underwear_Cover = True
			AND_BottomGenital_Cover = True
			AND_BottomAss_Cover = True
			AND_BottomGenital_Cover = True
			
			return True
		EndIf
	EndIf
	return False
EndFunction

Function FinalAnalyze()
	;Top conditions
	If AND_TopCurtain_Cover == True
		PlayerRef.SetFactionRank(Core.AND_ToplessFaction, 0)
		PlayerRef.SetFactionRank(Core.AND_ShowingBraFaction, 0)
		PlayerRef.SetFactionRank(Core.AND_ShowingChestFaction, 0)
	Else
		If AND_Bra_Cover == True && AND_Chest_Cover == True
			PlayerRef.SetFactionRank(Core.AND_ToplessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingBraFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingChestFaction, 0)
		ElseIf AND_Bra_Cover == False && AND_Chest_Cover == True
			PlayerRef.SetFactionRank(Core.AND_ToplessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingBraFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingChestFaction, 0)
		ElseIf AND_Bra_Cover == False && AND_Chest_Cover == False
			PlayerRef.SetFactionRank(Core.AND_ToplessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingBraFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingChestFaction, 1)
		ElseIf AND_Bra_Cover == True && AND_Chest_Cover == False
			If PlayerRef.WornHasKeyword(Core.AND_ArmorTopT_Low) || PlayerRef.WornHasKeyword(Core.AND_ArmorTopT) || PlayerRef.WornHasKeyword(Core.AND_ArmorTopT_High)\ 
			|| PlayerRef.WornHasKeyword(Core.AND_ArmorTop_NoCover) || PlayerRef.WornHasKeyword(Core.AND_NipplePasties)
				PlayerRef.SetFactionRank(Core.AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(Core.AND_ShowingBraFaction, 0)
				PlayerRef.SetFactionRank(Core.AND_ShowingChestFaction, 1)
			Else
				PlayerRef.SetFactionRank(Core.AND_ToplessFaction, 1)
				PlayerRef.SetFactionRank(Core.AND_ShowingBraFaction, 0)
				PlayerRef.SetFactionRank(Core.AND_ShowingChestFaction, 1)
			EndIf
		EndIf
	EndIf
		
	;Bottom conditions
	If AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == True
		PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
		PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
		PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
	ElseIf AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == False
		PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
		PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		If AND_Underwear_Cover == True && AND_BottomAss_Cover == True
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == True
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == False
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomAss_Cover == False
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		EndIf
	ElseIf AND_PelvicCurtain_Cover == False && AND_AssCurtain_Cover == True
		PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
		PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
		EndIf
	Else
		If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
			PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
			PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
			PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
			PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
			PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
			PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
			PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
			If PlayerRef.WornHasKeyword(Core.AND_ArmorBottom_NoCover)\ 
			|| PlayerRef.WornHasKeyword(Core.AND_HotpantsT_Low) || PlayerRef.WornHasKeyword(Core.AND_HotpantsT) || PlayerRef.WornHasKeyword(Core.AND_HotpantsT_High)\ 
			|| PlayerRef.WornHasKeyword(Core.AND_ShowgirlSkirtT_Low) || PlayerRef.WornHasKeyword(Core.AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(Core.AND_ShowgirlSkirtT_High)\ 
			|| PlayerRef.WornHasKeyword(Core.AND_Microskirt) || PlayerRef.WornHasKeyword(Core.AND_VaginaPasties)
				PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 1)
			Else
				PlayerRef.SetFactionRank(Core.AND_BottomlessFaction, 1)
				PlayerRef.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(Core.AND_ShowingAssFaction, 1)
			EndIf
		EndIf
	EndIf
		
	;Nudity Check
	If PlayerRef.GetFactionRank(Core.AND_BottomlessFaction) == 1 && PlayerRef.GetFactionRank(Core.AND_ToplessFaction) == 1 && PlayerRef.WornHasKeyword(Core.AND_NearlyNaked) == False
		PlayerRef.SetFactionRank(Core.AND_NudeActorFaction, 1)
	Else
		PlayerRef.SetFactionRank(Core.AND_NudeActorFaction, 0)
	EndIf
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetectionUpdate")
	ModEvent.Send(EventHandle)

	AND_Logger.FastLog("<Female Armor Scan> [Layer Analyze] Female Armor Scan Finished for Player")
EndFunction