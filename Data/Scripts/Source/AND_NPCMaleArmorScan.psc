ScriptName AND_NPCMaleArmorScan extends Quest

AND_Core Property Core Auto
AND_MCM Property Config Auto
AND_Logger Property Logger Auto

Bool AND_TopCurtain_Cover = False
Bool AND_Bra_Cover = False
Bool AND_Chest_Cover = False

Bool AND_PelvicCurtain_Cover = False
Bool AND_AssCurtain_Cover = False
Bool AND_BottomGenital_Cover = False
Bool AND_BottomAss_Cover = False
Bool AND_Underwear_Cover = False

Bool Function CurtainCheck(String Type, Bool IsTransparent, String Level)
	Int Roll = 0
	Int Odds = 0
	
	If Type == "Chest"
		Roll = Core.TopCurtainRoll
		If Level == "Low"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsLow_Male
			Else
				Odds = Config.TransparentTopCurtainOddsLow_Male
			EndIf
		ElseIf Level == "Normal"
			If IsTransparent == False
				Odds = Config.TopCurtainOdds_Male
			Else
				Odds = Config.TransparentTopCurtainOdds_Male
			EndIf
		ElseIf Level == "High"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsHigh_Male
			Else
				Odds = Config.TransparentTopCurtainOddsHigh_Male
			EndIf
		ElseIf Level == "Extreme"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsExtreme_Male
			Else
				Odds = Config.TransparentTopCurtainOddsExtreme_Male
			EndIf
		ElseIf Level == "Ultra"
			If IsTransparent == False
				Odds = Config.TopCurtainOddsUltra_Male
			Else
				Odds = Config.TransparentTopCurtainOddsUltra_Male
			EndIf
		EndIf
	ElseIf Type == "Pelvic"
		Roll = Core.PelvicCurtainRoll
		If Level == "Low"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsLow_Male
			Else
				Odds = Config.TransparentPelvicCurtainOddsLow_Male
			EndIf
		ElseIf Level == "Normal"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOdds_Male
			Else
				Odds = Config.TransparentPelvicCurtainOdds_Male
			EndIf
		ElseIf Level == "High"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsHigh_Male
			Else
				Odds = Config.TransparentPelvicCurtainOddsHigh_Male
			EndIf
		ElseIf Level == "Extreme"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsExtreme_Male
			Else
				Odds = Config.TransparentPelvicCurtainOddsExtreme_Male
			EndIf
		ElseIf Level == "Ultra"
			If IsTransparent == False
				Odds = Config.PelvicCurtainOddsUltra_Male
			Else
				Odds = Config.TransparentPelvicCurtainOddsUltra_Male
			EndIf
		EndIf
	ElseIf Type == "Ass"
		Roll = Core.AssCurtainRoll
		If Level == "Low"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsLow_Male
			Else
				Odds = Config.TransparentAssCurtainOddsLow_Male
			EndIf
		ElseIf Level == "Normal"
			If IsTransparent == False
				Odds = Config.AssCurtainOdds_Male
			Else
				Odds = Config.TransparentAssCurtainOdds_Male
			EndIf
		ElseIf Level == "High"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsHigh_Male
			Else
				Odds = Config.TransparentAssCurtainOddsHigh_Male
			EndIf
		ElseIf Level == "Extreme"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsExtreme_Male
			Else
				Odds = Config.TransparentAssCurtainOddsExtreme_Male
			EndIf
		ElseIf Level == "Ultra"
			If IsTransparent == False
				Odds = Config.AssCurtainOddsUltra_Male
			Else
				Odds = Config.TransparentAssCurtainOddsUltra_Male
			EndIf
		EndIf
	EndIf
	
	If Roll <= Odds
		return False
	EndIf
	return True
EndFunction

Bool Function TransparentItemCheck(String Type, String Level)
	Int Roll = 0
	Int Odds = 0
	
	If Type == "Top"
		Roll = Core.TopTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentTopArmorOdds_Low_Male
		ElseIf Level == "Normal"
			Odds = Config.TransparentTopArmorOdds_Male
		ElseIf Level == "High"
			Odds = Config.TransparentTopArmorOdds_High_Male
		EndIf
	ElseIf Type == "Bra"
		Roll = Core.BraTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentBraOdds_Low_Male
		ElseIf Level == "Normal"
			Odds = Config.TransparentBraOdds_Male
		ElseIf Level == "High"
			Odds = Config.TransparentBraOdds_High_Male
		EndIf
	ElseIf Type == "Bottom"
		Roll = Core.BottomTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentBottomArmorOdds_Low_Male
		ElseIf Level == "Normal"
			Odds = Config.TransparentBottomArmorOdds_Male
		ElseIf Level == "High"
			Odds = Config.TransparentBottomArmorOdds_High_Male
		EndIf
	ElseIf Type == "Underwear"
		Roll = Core.UnderwearTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentUnderwearOdds_Low_Male
		ElseIf Level == "Normal"
			Odds = Config.TransparentUnderwearOdds_Male
		ElseIf Level == "High"
			Odds = Config.TransparentUnderwearOdds_High_Male
		EndIf
	ElseIf Type == "Hotpants"
		Roll = Core.HotpantsTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentHotpantsOdds_Low_Male
		ElseIf Level == "Normal"
			Odds = Config.TransparentHotpantsOdds_Male
		ElseIf Level == "High"
			Odds = Config.TransparentHotpantsOdds_High_Male
		EndIf
	ElseIf Type == "Himbo"
		Roll = Core.ShowgirlTransparentRoll
		If Level == "Low"
			Odds = Config.TransparentShowgirlSkirtOdds_Low_Male
		ElseIf Level == "Normal"
			Odds = Config.TransparentShowgirlSkirtOdds_Male
		ElseIf Level == "High"
			Odds = Config.TransparentShowgirlSkirtOdds_High_Male
		EndIf
	EndIf
	
	If Roll <= Odds
		return False
	EndIf
	return True
EndFunction

Bool Function CStringCheck(Bool IsTransparent, String Level)
	Int Odds = 0
	If IsTransparent == False
		Odds = Config.CStringOdds_Male
	ElseIf Level == "Low"
		Odds = Config.TransparentCStringOdds_Low_Male
	ElseIf Level == "Normal"
		Odds = Config.TransparentCStringOdds_Male
	ElseIf Level == "High"
		Odds = Config.TransparentCStringOdds_High_Male
	EndIf
	
	If Core.CStringRoll <= Odds
		return False
	EndIf
	return True
EndFunction

Function FullAnalyze(Actor ScannedActor, String ActorName)
	Logger.Log("<Male NPC Armor Scan> [FullAnalyze] Full Analysis Started for " + ScannedActor + " " + ActorName)
	If ScannedActor.WornHasKeyword(Core.AND_CoversAll) == False
		Logger.Log("<Male NPC Armor Scan> [FullAnalyze] No CoversAll Keyword Detected")
		
		Bool HasChestCurtain = ScannedActor.WornHasKeyword(Core.AND_ChestCurtain_Male)
		Bool HasChestCurtainT = ScannedActor.WornHasKeyword(Core.AND_ChestCurtainT_Male)
		
		String HasChestRiskLevel = "None"
		If HasChestCurtain == True || HasChestCurtainT == True
			If ScannedActor.WornHasKeyword(Core.AND_ChestFlashRiskLow_Male)
				HasChestRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ChestFlashRisk_Male)
				HasChestRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ChestFlashRiskHigh_Male)
				HasChestRiskLevel = "High"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ChestFlashRiskExtreme_Male)
				HasChestRiskLevel = "Extreme"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ChestFlashRiskUltra_Male)
				HasChestRiskLevel = "Ultra"
			EndIf
		EndIf
		
		Bool HasPelvicCurtain = (ScannedActor.WornHasKeyword(Core.AND_PelvicCurtain_Male) || ScannedActor.WornHasKeyword(Core.AND_Miniskirt_Male))
		Bool HasPelvicCurtainT = (ScannedActor.WornHasKeyword(Core.AND_PelvicCurtainT_Male) || ScannedActor.WornHasKeyword(Core.AND_MiniskirtT_Male))
		
		String HasPelvicRiskLevel = "None"
		If HasPelvicCurtain == True || HasPelvicCurtainT == True
			If ScannedActor.WornHasKeyword(Core.AND_PelvicFlashRiskLow_Male)
				HasPelvicRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_PelvicFlashRisk_Male)
				HasPelvicRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_PelvicFlashRiskHigh_Male)
				HasPelvicRiskLevel = "High"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_PelvicFlashRiskExtreme_Male)
				HasPelvicRiskLevel = "Extreme"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_PelvicFlashRiskUltra_Male)
				HasPelvicRiskLevel = "Ultra"
			EndIf
		EndIf
		
		Bool HasAssCurtain = (ScannedActor.WornHasKeyword(Core.AND_AssCurtain_Male) || ScannedActor.WornHasKeyword(Core.AND_Miniskirt_Male))
		Bool HasAssCurtainT = (ScannedActor.WornHasKeyword(Core.AND_AssCurtainT_Male) || ScannedActor.WornHasKeyword(Core.AND_MiniskirtT_Male))
		
		String HasAssRiskLevel = "None"
		If HasAssCurtain == True || HasAssCurtainT == True
			If ScannedActor.WornHasKeyword(Core.AND_AssFlashRiskLow_Male)
				HasAssRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_AssFlashRisk_Male)
				HasAssRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_AssFlashRiskHigh_Male)
				HasAssRiskLevel = "High"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_AssFlashRiskExtreme_Male)
				HasAssRiskLevel = "Extreme"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_AssFlashRiskUltra_Male)
				HasAssRiskLevel = "Ultra"
			EndIf
		EndIf
		
		If VanillaArmorCheck(ScannedActor) == False ;Armor has at least one AND Keyword
			Logger.Log("<Male NPC Armor Scan> [FullAnalyze] Armor is not Vanilla")
			;/
			=============
			Top Variables
			=============
			/;
			Bool HasArmorTop = ScannedActor.WornHasKeyword(Core.AND_ArmorTop_Male)
			String HasTopRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_ArmorTopT_Low_Male)
				HasTopRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ArmorTopT_Male)
				HasTopRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ArmorTopT_High_Male)
				HasTopRiskLevel = "High"
			EndIf
			Bool HasArmorTopT = (HasTopRiskLevel != "None")
			
			Bool HasBra = ScannedActor.WornHasKeyword(Core.AND_Bra_Male)
			String HasBraRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_BraT_Low_Male)
				HasBraRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_BraT_Male)
				HasBraRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_BraT_High_Male)
				HasBraRiskLevel = "High"
			EndIf
			Bool HasBraT = (HasBraRiskLevel != "None")
			
			Bool HasBraNoCover = ScannedActor.WornHasKeyword(Core.AND_Bra_NoCover_Male)
			
			;/
			================
			Bottom Variables
			================
			/;
			Bool HasArmorBottom = ScannedActor.WornHasKeyword(Core.AND_ArmorBottom_Male)
			String HasBottomRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_ArmorBottomT_Low_Male)
				HasBottomRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ArmorBottomT_Male)
				HasBottomRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ArmorBottomT_High_Male)
				HasBottomRiskLevel = "High"
			EndIf
			Bool HasArmorBottomT = (HasBottomRiskLevel != "None")
			
			Bool HasHotpants = ScannedActor.WornHasKeyword(Core.AND_Hotpants_Male)
			String HasHotpantsRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_HotpantsT_Low_Male)
				HasHotpantsRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_HotpantsT_Male)
				HasHotpantsRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_HotpantsT_High_Male)
				HasHotpantsRiskLevel = "High"
			EndIf
			Bool HasHotpantsT = (HasHotpantsRiskLevel != "None")
			
			Bool HasHimbo = ScannedActor.WornHasKeyword(Core.AND_HimboSkirt)
			String HasHimboRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_HimboSkirtT_Low)
				HasHimboRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_HimboSkirtT)
				HasHimboRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_HimboSkirtT_High)
				HasHimboRiskLevel = "High"
			EndIf
			Bool HasHimboT = (HasHimboRiskLevel != "None")
			
			Bool HasUnderwear = ScannedActor.WornHasKeyword(Core.AND_Underwear_Male)
			String HasUnderwearRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_UnderwearT_Low_Male)
				HasUnderwearRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_UnderwearT_Male)
				HasUnderwearRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_UnderwearT_High_Male)
				HasUnderwearRiskLevel = "High"
			EndIf
			Bool HasUnderwearT = (HasUnderwearRiskLevel != "None")
			Bool HasUnderwearNoCover = ScannedActor.WornHasKeyword(Core.AND_Underwear_NoCover_Male)
			
			Bool HasThong = ScannedActor.WornHasKeyword(Core.AND_Thong_Male)
			String HasThongRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_ThongT_Low_Male)
				HasThongRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ThongT_Male)
				HasThongRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_ThongT_High_Male)
				HasThongRiskLevel = "High"
			EndIf
			Bool HasThongT = (HasThongRiskLevel != "None")
			Bool HasThongNoCover = ScannedActor.WornHasKeyword(Core.AND_Thong_NoCover_Male)
			
			Bool HasCString = ScannedActor.WornHasKeyword(Core.AND_BananaHammock)
			String HasCStringRiskLevel = "None"
			If ScannedActor.WornHasKeyword(Core.AND_BananaHammockT_Low)
				HasCStringRiskLevel = "Low"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_BananaHammockT)
				HasCStringRiskLevel = "Normal"
			ElseIf ScannedActor.WornHasKeyword(Core.AND_BananaHammockT_High)
				HasCStringRiskLevel = "High"
			EndIf
			Bool HasCStringT = (HasCStringRiskLevel != "None")
			
			AnalyzeTop(HasChestCurtain, HasChestCurtainT, HasChestRiskLevel, HasArmorTop, HasArmorTopT, HasTopRiskLevel, HasBra, HasBraT, HasBraRiskLevel, HasBraNoCover)
			AnalyzeBottom(HasPelvicCurtain, HasPelvicCurtainT, HasPelvicRiskLevel, HasAssCurtain, HasAssCurtainT, HasAssRiskLevel, HasArmorBottom, HasArmorBottomT, HasBottomRiskLevel, HasHotpants, HasHotpantsT, HasHotpantsRiskLevel, HasHimbo, HasHimboT, HasHimboRiskLevel, HasUnderwear, HasUnderwearT, HasUnderwearRiskLevel, HasUnderwearNoCover, HasThong, HasThongT, HasThongRiskLevel, HasThongNoCover, HasCString, HasCStringT, HasCStringRiskLevel)
		Else
			Logger.Log("<Male NPC Armor Scan> [FullAnalyze] Armor is considered Vanilla")
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
		Logger.Log("<Male NPC Armor Scan> [FullAnalyze] CoversAll Keyword Detected")
		
		AND_TopCurtain_Cover = True
		AND_PelvicCurtain_Cover = True
		AND_AssCurtain_Cover = True
		
		AND_Bra_Cover = True
		AND_Chest_Cover = True
		
		AND_BottomGenital_Cover = True
		AND_BottomAss_Cover = True
		AND_Underwear_Cover = True
	EndIf
	FinalAnalyze(ScannedActor, ActorName)
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

Function AnalyzeBottom(Bool PelvicCurtain, Bool PelvicCurtainT, String PelvicRiskLevel, Bool AssCurtain, Bool AssCurtainT, String AssRiskLevel, Bool ArmorBottom, Bool ArmorBottomT, String BottomRiskLevel, Bool Hotpants, Bool HotpantsT, String HotpantsRiskLevel, Bool Himbo, Bool HimboT, String HimboRiskLevel, Bool Underwear, Bool UnderwearT, String UnderwearRiskLevel, Bool UnderwearNoCover, Bool Thong, Bool ThongT, String ThongRiskLevel, Bool ThongNoCover, Bool CString, Bool CStringT, String CStringRiskLevel)
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
			If Hotpants == True && Himbo == True
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf Hotpants == True && HimboT == True
				AND_BottomGenital_Cover = True
				
				If Underwear == True
					AND_BottomAss_Cover = True
					AND_Underwear_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
				ElseIf UnderwearT == True
					AND_Underwear_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
					EndIf
				ElseIf UnderwearNoCover == True
					AND_Underwear_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = False
					EndIf
				ElseIf Thong == True || ThongT == True || CString == True || CStringT == True || ThongNoCover == True
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
				EndIf
				
			ElseIf HotpantsT == True && Himbo == True
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
					
			ElseIf HotpantsT == True && HimboT == True
				Bool Hotpants_Covering = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
				Bool Showgirl_Covering = TransparentItemCheck("Himbo", HimboRiskLevel)
				
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
			ElseIf Himbo == True
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
			ElseIf HimboT == True
				Bool Showgirl_Covering = TransparentItemCheck("Himbo", HimboRiskLevel)
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
		If Hotpants == True && Himbo == True
			AND_BottomAss_Cover = True
			AND_BottomGenital_Cover = True
			AND_Underwear_Cover = True				
		ElseIf Hotpants == True && HimboT == True
			AND_BottomGenital_Cover = True
			
			If Underwear == True
				AND_BottomAss_Cover = True
				AND_Underwear_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
			ElseIf UnderwearT == True
				AND_Underwear_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
				If AND_Underwear_Cover == True
					AND_BottomAss_Cover = True
				Else
					AND_BottomAss_Cover = TransparentItemCheck("Underwear", UnderwearRiskLevel)
				EndIf
			ElseIf UnderwearNoCover == True
				AND_Underwear_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
				If AND_Underwear_Cover == True
					AND_BottomAss_Cover = True
				Else
					AND_BottomAss_Cover = False
				EndIf
			ElseIf Thong == True || ThongT == True || CString == True || CStringT == True || ThongNoCover == True
				AND_Underwear_Cover = True
				AND_BottomAss_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
			Else
				AND_Underwear_Cover = True
				AND_BottomAss_Cover = TransparentItemCheck("Himbo", HimboRiskLevel)
			EndIf
			
		ElseIf HotpantsT == True && Himbo == True
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
				
		ElseIf HotpantsT == True && HimboT == True
			Bool Hotpants_Covering = TransparentItemCheck("Hotpants", HotpantsRiskLevel)
			Bool Showgirl_Covering = TransparentItemCheck("Himbo", HimboRiskLevel)
			
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
		ElseIf Himbo == True
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
		ElseIf HimboT == True
			Bool Showgirl_Covering = TransparentItemCheck("Himbo", HimboRiskLevel)
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

Bool Function VanillaArmorCheck(Actor ScannedActor)
	Armor AND_Slot32 = ScannedActor.GetEquippedArmorInSlot(32)
	
	If AND_Slot32 != None
		Bool CurtainKeywords = False
		Bool TopKeywords = False
		Bool BottomKeywords = False
		Bool BraKeywords = False
		Bool UnderwearKeywords = False
		Bool ExtraKeywords = False
		
		If !AND_Slot32.HasKeyword(Core.AND_ChestCurtain_Male) && !AND_Slot32.HasKeyword(Core.AND_ChestCurtainT_Male) && !AND_Slot32.HasKeyword(Core.AND_PelvicCurtain_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_PelvicCurtainT_Male) && !AND_Slot32.HasKeyword(Core.AND_AssCurtain_Male) && !AND_Slot32.HasKeyword(Core.AND_AssCurtainT_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Miniskirt_Male) && !AND_Slot32.HasKeyword(Core.AND_MiniskirtT_Male)
			CurtainKeywords = False
		Else
			CurtainKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_ArmorTop_Male) && !AND_Slot32.HasKeyword(Core.AND_ArmorTopT_Low_Male) && !AND_Slot32.HasKeyword(Core.AND_ArmorTopT_Male) && !AND_Slot32.HasKeyword(Core.AND_ArmorTopT_High_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ArmorTop_NoCover)
			TopKeywords = False
		Else
			TopKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_ArmorBottom_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ArmorBottomT_Low_Male) && !AND_Slot32.HasKeyword(Core.AND_ArmorBottomT_Male) && !AND_Slot32.HasKeyword(Core.AND_ArmorBottomT_High_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ArmorBottom_NoCover)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Hotpants_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_HotpantsT_Low_Male) && !AND_Slot32.HasKeyword(Core.AND_HotpantsT_Male) && !AND_Slot32.HasKeyword(Core.AND_HotpantsT_High_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_HimboSkirt)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_HimboSkirtT_Low) && !AND_Slot32.HasKeyword(Core.AND_HimboSkirtT) && !AND_Slot32.HasKeyword(Core.AND_HimboSkirtT_High)
			BottomKeywords = False
		Else
			BottomKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_Bra_Male) && !AND_Slot32.HasKeyword(Core.AND_BraT_Low_Male) && !AND_Slot32.HasKeyword(Core.AND_BraT_Male) && !AND_Slot32.HasKeyword(Core.AND_BraT_High_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Bra_NoCover_Male)
			BraKeywords = False
		Else
			BraKeywords = True
		EndIf
		
		If !AND_Slot32.HasKeyword(Core.AND_Underwear_Male) && !AND_Slot32.HasKeyword(Core.AND_UnderwearT_Low_Male) && !AND_Slot32.HasKeyword(Core.AND_UnderwearT_Male) && !AND_Slot32.HasKeyword(Core.AND_UnderwearT_High_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_Underwear_NoCover_Male) && !AND_Slot32.HasKeyword(Core.AND_Thong_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_ThongT_Low_Male) && !AND_Slot32.HasKeyword(Core.AND_ThongT_Male) && !AND_Slot32.HasKeyword(Core.AND_ThongT_High_Male) && !AND_Slot32.HasKeyword(Core.AND_Thong_NoCover_Male)\ 
		&& !AND_Slot32.HasKeyword(Core.AND_BananaHammock) && !AND_Slot32.HasKeyword(Core.AND_BananaHammockT_Low) && !AND_Slot32.HasKeyword(Core.AND_BananaHammockT) && !AND_Slot32.HasKeyword(Core.AND_BananaHammockT_High)
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

Function FinalAnalyze(Actor ScannedActor, String ActorName)
	;Top conditions
	If AND_TopCurtain_Cover == True
		ScannedActor.SetFactionRank(Core.AND_ToplessFaction, 0)
		ScannedActor.SetFactionRank(Core.AND_ShowingBraFaction, 0)
		ScannedActor.SetFactionRank(Core.AND_ShowingChestFaction, 0)
	Else
		If AND_Bra_Cover == True && AND_Chest_Cover == True
			ScannedActor.SetFactionRank(Core.AND_ToplessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingBraFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingChestFaction, 0)
		ElseIf AND_Bra_Cover == False && AND_Chest_Cover == True
			ScannedActor.SetFactionRank(Core.AND_ToplessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingBraFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingChestFaction, 0)
		ElseIf AND_Bra_Cover == False && AND_Chest_Cover == False
			ScannedActor.SetFactionRank(Core.AND_ToplessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingBraFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingChestFaction, 1)
		ElseIf AND_Bra_Cover == True && AND_Chest_Cover == False
			If ScannedActor.WornHasKeyword(Core.AND_ArmorTopT_Low_Male) || ScannedActor.WornHasKeyword(Core.AND_ArmorTopT_Male) || ScannedActor.WornHasKeyword(Core.AND_ArmorTopT_High_Male)\ 
			|| ScannedActor.WornHasKeyword(Core.AND_ArmorTop_NoCover) || ScannedActor.WornHasKeyword(Core.AND_NipplePasties)
				ScannedActor.SetFactionRank(Core.AND_ToplessFaction, 0)
				ScannedActor.SetFactionRank(Core.AND_ShowingBraFaction, 0)
				ScannedActor.SetFactionRank(Core.AND_ShowingChestFaction, 1)
			Else
				ScannedActor.SetFactionRank(Core.AND_ToplessFaction, 1)
				ScannedActor.SetFactionRank(Core.AND_ShowingBraFaction, 0)
				ScannedActor.SetFactionRank(Core.AND_ShowingChestFaction, 1)
			EndIf
		EndIf
	EndIf
		
	;Bottom conditions
	If AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == True
		ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
		ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
		ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
	ElseIf AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == False
		ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
		ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		If AND_Underwear_Cover == True && AND_BottomAss_Cover == True
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == True
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == False
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomAss_Cover == False
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		EndIf
	ElseIf AND_PelvicCurtain_Cover == False && AND_AssCurtain_Cover == True
		ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
		ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
		EndIf
	Else
		If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
			ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
			ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
			ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
			ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
			ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
			ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 0)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
			ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 0)
			ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 1)
		ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
			If ScannedActor.WornHasKeyword(Core.AND_ArmorBottom_NoCover)\ 
			|| ScannedActor.WornHasKeyword(Core.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(Core.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(Core.AND_HotpantsT_High_Male)\ 
			|| ScannedActor.WornHasKeyword(Core.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(Core.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(Core.AND_HimboSkirtT_High)\ 
			|| ScannedActor.WornHasKeyword(Core.AND_Microskirt) || ScannedActor.WornHasKeyword(Core.AND_VaginaPasties)
				ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 1)
			Else
				ScannedActor.SetFactionRank(Core.AND_BottomlessFaction, 1)
				ScannedActor.SetFactionRank(Core.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(Core.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(Core.AND_ShowingAssFaction, 1)
			EndIf
		EndIf
	EndIf
		
	;Nudity Check
	If ScannedActor.GetFactionRank(Core.AND_BottomlessFaction) == 1 && ScannedActor.GetFactionRank(Core.AND_ToplessFaction) == 1 && ScannedActor.WornHasKeyword(Core.AND_NearlyNaked) == False
		ScannedActor.SetFactionRank(Core.AND_NudeActorFaction, 1)
	Else
		ScannedActor.SetFactionRank(Core.AND_NudeActorFaction, 0)
	EndIf

	Int EventHandle = ModEvent.Create("AdvancedNudityDetectionNPCUpdate")
	if EventHandle
		ModEvent.PushForm(EventHandle, ScannedActor)
		ModEvent.Send(EventHandle)
	endif

	Logger.Log("<Male NPC Armor Scan> [Layer Analyze] Male Armor Scan Finished for " + ScannedActor + " " + ActorName)
EndFunction 