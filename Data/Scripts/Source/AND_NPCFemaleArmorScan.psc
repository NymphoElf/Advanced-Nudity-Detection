ScriptName AND_NPCFemaleArmorScan extends Quest

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_Logger Property Logger Auto

Bool AND_TopCurtainLayer_Cover = False
Bool AND_BraLayer_Cover = False
Bool AND_Chest_Cover = False

Bool AND_PelvicCurtain_Cover = False
Bool AND_AssCurtain_Cover = False
Bool AND_BottomGenital_Cover = False
Bool AND_BottomAss_Cover = False
Bool AND_Underwear_Cover = False

Bool Function TopCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If AND_Main.NPCTopCurtainRoll <=  AND_Config.TransparentTopCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TopTransparentArmorCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Low)
		If AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT)
		If AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High)
		If AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentBraCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Low)
		If AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT)
		If AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_High)
		If AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function PelvicCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt)
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function AssCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt)
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskLow)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskLow)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function BottomTransparentArmorCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Low)
		If AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT)
		If AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_High)
		If AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentHotpantsCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low)
		If AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT)
		If AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High)
		If AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentShowgirlCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low)
		If AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT)
		If AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High)
		If AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentUnderwearCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low)
		If AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
		If AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
		If AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function CStringCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_CString)
		If AND_Main.NPCCstringRoll <= AND_Config.CStringOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low)
		If AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CStringT)
		If AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
		If AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Function AND_LayerAnalyze(Actor ScannedActor, String akName = "")
	Logger.Log("<NPC Female Armor Scan> [Layer Analyze] Female (NPC) Armor Scan Started for " + ScannedActor + " " + akName)

	Armor AND_Slot32 = ScannedActor.GetEquippedArmorInSlot(32)
	
	If !ScannedActor.WornHasKeyword(AND_Main.AND_CoversAll)
	
		;/--------------/;
		;/---TOP SCAN---/;
		;/--------------/;
		
		;Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT)
			AND_TopCurtainLayer_Cover = TopCurtainCheck(ScannedActor)
		Else
			AND_TopCurtainLayer_Cover = False
		EndIf
			
		;Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop)
			AND_BraLayer_Cover = True
			AND_Chest_Cover = True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High)
			Bool TopCovering = TopTransparentArmorCheck(ScannedActor)
			
			If TopCovering == True
				AND_BraLayer_Cover = True
				AND_Chest_Cover = True
			Else
				;Bra Layer
				If ScannedActor.WornHasKeyword(AND_Main.AND_Bra)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT_High)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = TransparentBraCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = False
				Else
					AND_BraLayer_Cover = True
					AND_Chest_Cover = False
				EndIf
			EndIf
		Else
			;Bra Layer
			If ScannedActor.WornHasKeyword(AND_Main.AND_Bra)
				AND_BraLayer_Cover = False
				AND_Chest_Cover = True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT_High)
				AND_BraLayer_Cover = False
				AND_Chest_Cover = TransparentBraCheck(ScannedActor)
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover)
				AND_BraLayer_Cover = False
				AND_Chest_Cover = False
			Else
				AND_BraLayer_Cover = True
				AND_Chest_Cover = False
			EndIf
		EndIf
		
		
		;/-----------------/;
		;/---Bottom SCAN---/;
		;/-----------------/;
		
		;Pelvic Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
			AND_PelvicCurtain_Cover = PelvicCurtainCheck(ScannedActor)
		Else
			AND_PelvicCurtain_Cover = False
		EndIf
		
		;Ass Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
			AND_AssCurtain_Cover = AssCurtainCheck(ScannedActor)
		Else
			AND_AssCurtain_Cover = False
		EndIf
			
		;Bottom Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom)
			AND_BottomAss_Cover = True
			AND_BottomGenital_Cover = True
			AND_Underwear_Cover = True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_High)
			AND_Underwear_Cover = BottomTransparentArmorCheck(ScannedActor)
			
			If AND_Underwear_Cover == True
				AND_BottomGenital_Cover = True
				AND_BottomAss_Cover = True
			Else
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
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
			If ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) && ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt)
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants)\ 
			&& (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High))
				AND_BottomGenital_Cover = True
				
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
					AND_BottomAss_Cover = True
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = False
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				EndIf
				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High))\ 
				&& ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt)
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
							AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
						Else
							AND_BottomGenital_Cover = CStringCheck(ScannedActor)
							If AND_BottomGenital_Cover == True
								AND_Underwear_Cover = False
							Else
								AND_Underwear_Cover = True
							EndIf
						EndIf
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						AND_BottomGenital_Cover = False
					EndIf
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = TransparentHotpantsCheck(ScannedActor)
				EndIf
					
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High))\ 
				&& (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High))
				Bool Hotpants_Covering = TransparentHotpantsCheck(ScannedActor)
				Bool Showgirl_Covering = TransparentShowgirlCheck(ScannedActor)
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					AND_BottomGenital_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants)
				AND_BottomGenital_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt)
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
					
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
					
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High)
				Bool Hotpants_Covering = TransparentHotpantsCheck(ScannedActor)
				If Hotpants_Covering == True
					AND_BottomGenital_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High)
				Bool Showgirl_Covering = TransparentShowgirlCheck(ScannedActor)
				If Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
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
		
		;/------------------------------/;
		;/-----Vanilla Armor Check------/;
		;/------------------------------/;
		
		If AND_Slot32 != None
			Bool CurtainKeywords = False
			Bool TopKeywords = False
			Bool BottomKeywords = False
			Bool BraKeywords = False
			Bool UnderwearKeywords = False
			Bool ExtraKeywords = False
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtain) && !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtainT) && !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtain)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtainT) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtain) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtainT)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Miniskirt) && !AND_Slot32.HasKeyword(AND_Main.AND_MiniskirtT)
				CurtainKeywords = False
			Else
				CurtainKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT_High)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop_NoCover)
				TopKeywords = False
			Else
				TopKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT_High)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom_NoCover)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Hotpants)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT) && !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT_High)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ShowgirlSkirt)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_ShowgirlSkirtT) && !AND_Slot32.HasKeyword(AND_Main.AND_ShowgirlSkirtT_High)
				BottomKeywords = False
			Else
				BottomKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Bra) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT_High)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Bra_NoCover)
				BraKeywords = False
			Else
				BraKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Underwear) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT_High)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Underwear_NoCover) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ThongT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_ThongT) && !AND_Slot32.HasKeyword(AND_Main.AND_ThongT_High) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong_NoCover)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_CString) && !AND_Slot32.HasKeyword(AND_Main.AND_CStringT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_CStringT) && !AND_Slot32.HasKeyword(AND_Main.AND_CStringT_High)
				UnderwearKeywords = False
			Else
				UnderwearKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_NearlyNaked) && !AND_Slot32.HasKeyword(AND_Main.AND_NipplePasties) && !AND_Slot32.HasKeyword(AND_Main.AND_VaginaPasties) && !AND_Slot32.HasKeyword(AND_Main.AND_Microskirt) && !AND_Slot32.HasKeyword(AND_Main.AND_EffectivelyNaked)
				ExtraKeywords = False
			Else
				ExtraKeywords = True
			EndIf
			
			If CurtainKeywords == False && TopKeywords == False && BottomKeywords == False && BraKeywords == False && UnderwearKeywords == False && ExtraKeywords == False
				AND_BraLayer_Cover = True
				AND_Chest_Cover = True
				AND_Underwear_Cover = True
				AND_BottomGenital_Cover = True
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
			EndIf
		EndIf
		
		;/------------------------/;
		;/-----LAYER ANALYZE------/;
		;/------------------------/;
		
		;Top conditions
		If AND_TopCurtainLayer_Cover == True
			ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
		Else
			If AND_BraLayer_Cover == True && AND_Chest_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
			ElseIf AND_BraLayer_Cover == False && AND_Chest_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
			ElseIf AND_BraLayer_Cover == False && AND_Chest_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 1)
			ElseIf AND_BraLayer_Cover == True && AND_Chest_Cover == False
				If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_NipplePasties)
					ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 1)
				Else
					ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 1)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 1)
				EndIf
			EndIf
		EndIf
		
		;Bottom conditions
		If AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == True
			ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
		ElseIf AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == False
			ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			If AND_Underwear_Cover == True && AND_BottomAss_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomAss_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			EndIf
		ElseIf AND_PelvicCurtain_Cover == False && AND_AssCurtain_Cover == True
			ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
			EndIf
		Else
			If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
				If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Microskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_VaginaPasties)
					ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
				Else
					ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 1)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
					ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
				EndIf
			EndIf
		EndIf
		
		;Nudity Check
		If ScannedActor.GetFactionRank(AND_Main.AND_BottomlessFaction) == 1 && ScannedActor.GetFactionRank(AND_Main.AND_ToplessFaction) == 1 && !ScannedActor.WornHasKeyword(AND_Main.AND_NearlyNaked)
			ScannedActor.SetFactionRank(AND_Main.AND_NudeActorFaction, 1)
		Else
			ScannedActor.SetFactionRank(AND_Main.AND_NudeActorFaction, 0)
		EndIf
		
	Else
		ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
		ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
		
		ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
		ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
		ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
		
		ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
		ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
		ScannedActor.SetFactionRank(AND_Main.AND_NudeActorFaction, 0)
	EndIf

	Logger.Log("<NPC Female Armor Scan> [Layer Analyze] Female (NPC) Armor Scan Finished for " + ScannedActor + " " + akName)
EndFunction