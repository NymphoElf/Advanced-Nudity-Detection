ScriptName AND_FemaleArmorScan extends Quest

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_Logger Property Logger Auto

Actor Property PlayerRef Auto

Bool Property AND_TopCurtainLayer_Cover Auto Hidden
Bool Property AND_BraLayer_Cover Auto Hidden
Bool Property AND_Chest_Cover Auto Hidden

Bool Property AND_PelvicCurtain_Cover Auto Hidden
Bool Property AND_AssCurtain_Cover Auto Hidden
Bool Property AND_BottomGenital_Cover Auto Hidden
Bool Property AND_BottomAss_Cover Auto Hidden
Bool Property AND_Underwear_Cover Auto Hidden

Bool Function TopCurtainCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_ChestCurtain)
		If PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestCurtainT)
		If PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TopTransparentArmorCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT_Low)
		If AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT)
		If AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT_High)
		If AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentBraCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_BraT_Low)
		If AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_BraT)
		If AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_BraT_High)
		If AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function PelvicCurtainCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AND_Main.AND_Miniskirt)
		If PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function AssCurtainCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(AND_Main.AND_Miniskirt)
		If PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskLow)
			If AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskLow)
			If AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function BottomTransparentArmorCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottomT_Low)
		If AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottomT)
		If AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottomT_High)
		If AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentHotpantsCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_Low)
		If AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT)
		If AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_High)
		If AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentShowgirlCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low)
		If AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT)
		If AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High)
		If AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentUnderwearCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low)
		If AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT)
		If AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
		If AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function CStringCheck()
	If PlayerRef.WornHasKeyword(AND_Main.AND_CString)
		If AND_Main.CStringRoll <= AND_Config.CStringOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low)
		If AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CStringT)
		If AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
		If AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Function AND_LayerAnalyze()
	Logger.Log("<Female Armor Scan> [Layer Analyze] Female Armor Scan Started for Player")

	Armor AND_Slot32 = PlayerRef.GetEquippedArmorInSlot(32)
	
	If !PlayerRef.WornHasKeyword(AND_Main.AND_CoversAll)
	
		;/--------------/;
		;/---TOP SCAN---/;
		;/--------------/;
		
		;Curtain Layer
		If PlayerRef.WornHasKeyword(AND_Main.AND_ChestCurtain) || PlayerRef.WornHasKeyword(AND_Main.AND_ChestCurtainT)
			AND_TopCurtainLayer_Cover = TopCurtainCheck()
		Else
			AND_TopCurtainLayer_Cover = False
		EndIf
			
		;Armor Layer
		If PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTop)
			AND_BraLayer_Cover = True
			AND_Chest_Cover = True
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT) || PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT_High)
			Bool TopCovering = TopTransparentArmorCheck()
			
			If TopCovering == True
				AND_BraLayer_Cover = True
				AND_Chest_Cover = True
			Else
				;Bra Layer
				If PlayerRef.WornHasKeyword(AND_Main.AND_Bra)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_BraT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_BraT) || PlayerRef.WornHasKeyword(AND_Main.AND_BraT_High)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = TransparentBraCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Bra_NoCover)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = False
				Else
					AND_BraLayer_Cover = True
					AND_Chest_Cover = False
				EndIf
			EndIf
		Else
			;Bra Layer
			If PlayerRef.WornHasKeyword(AND_Main.AND_Bra)
				AND_BraLayer_Cover = False
				AND_Chest_Cover = True
			ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_BraT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_BraT) || PlayerRef.WornHasKeyword(AND_Main.AND_BraT_High)
				AND_BraLayer_Cover = False
				AND_Chest_Cover = TransparentBraCheck()
			ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Bra_NoCover)
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
		If PlayerRef.WornHasKeyword(AND_Main.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AND_Main.AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_Main.AND_MiniskirtT)
			AND_PelvicCurtain_Cover = PelvicCurtainCheck()
		Else
			AND_PelvicCurtain_Cover = False
		EndIf
		
		;Ass Curtain Layer
		If PlayerRef.WornHasKeyword(AND_Main.AND_AssCurtain) || PlayerRef.WornHasKeyword(AND_Main.AND_AssCurtainT) || PlayerRef.WornHasKeyword(AND_Main.AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_Main.AND_MiniskirtT)
			AND_AssCurtain_Cover = AssCurtainCheck()
		Else
			AND_AssCurtain_Cover = False
		EndIf
			
		;Bottom Armor Layer
		If PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottom)
			AND_BottomAss_Cover = True
			AND_BottomGenital_Cover = True
			AND_Underwear_Cover = True
		ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottomT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottomT) || PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottomT_High)
			AND_Underwear_Cover = BottomTransparentArmorCheck()
			
			If AND_Underwear_Cover == True
				AND_BottomGenital_Cover = True
				AND_BottomAss_Cover = True
			Else
				If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck()
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
					|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck()
					
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
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
			If PlayerRef.WornHasKeyword(AND_Main.AND_Hotpants) && PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirt)
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Hotpants)\ 
			&& (PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High))
				AND_BottomGenital_Cover = True
				
				If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
					AND_BottomAss_Cover = True
					AND_Underwear_Cover = TransparentShowgirlCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = TransparentShowgirlCheck()
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = TransparentUnderwearCheck()
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
					AND_Underwear_Cover = TransparentShowgirlCheck()
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = False
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Thong)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck()
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck()
				EndIf
				
			ElseIf (PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_High))\ 
				&& PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirt)
				AND_BottomAss_Cover = True
				If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = TransparentHotpantsCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)\ 
					|| PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
					|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_Underwear_Cover = TransparentHotpantsCheck()
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						If PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
							AND_BottomGenital_Cover = TransparentUnderwearCheck()
						Else
							AND_BottomGenital_Cover = CStringCheck()
							If AND_BottomGenital_Cover == True
								AND_Underwear_Cover = False
							Else
								AND_Underwear_Cover = True
							EndIf
						EndIf
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover = TransparentHotpantsCheck()
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						AND_BottomGenital_Cover = False
					EndIf
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = TransparentHotpantsCheck()
				EndIf
					
			ElseIf (PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_High))\ 
				&& (PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High))
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					AND_BottomGenital_Cover = True
					If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomGenital_Cover = CStringCheck()
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck()
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck()
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Hotpants)
				AND_BottomGenital_Cover = True
				If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirt)
				AND_BottomAss_Cover = True
				If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
					
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
					
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
					|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_BottomGenital_Cover = CStringCheck()
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = False
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_High)
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				If Hotpants_Covering == True
					AND_BottomGenital_Cover = True
					If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck()
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck()
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High)
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				If Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomGenital_Cover = CStringCheck()
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck()
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
						|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck()
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
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
				If PlayerRef.WornHasKeyword(AND_Main.AND_Underwear)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck()
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Thong)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT) || PlayerRef.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_CString)\ 
					|| PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT) || PlayerRef.WornHasKeyword(AND_Main.AND_CStringT_High)
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck()
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_Thong_NoCover)
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
			PlayerRef.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
			PlayerRef.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
			PlayerRef.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
		Else
			If AND_BraLayer_Cover == True && AND_Chest_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
			ElseIf AND_BraLayer_Cover == False && AND_Chest_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingBraFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
			ElseIf AND_BraLayer_Cover == False && AND_Chest_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingBraFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingChestFaction, 1)
			ElseIf AND_BraLayer_Cover == True && AND_Chest_Cover == False
				If PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT) || PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTopT_High)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_ArmorTop_NoCover) || PlayerRef.WornHasKeyword(AND_Main.AND_NipplePasties)
					PlayerRef.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingChestFaction, 1)
				Else
					PlayerRef.SetFactionRank(AND_Main.AND_ToplessFaction, 1)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingChestFaction, 1)
				EndIf
			EndIf
		EndIf
		
		;Bottom conditions
		If AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == True
			PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
		ElseIf AND_PelvicCurtain_Cover == True && AND_AssCurtain_Cover == False
			PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			If AND_Underwear_Cover == True && AND_BottomAss_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomAss_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomAss_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			EndIf
		ElseIf AND_PelvicCurtain_Cover == False && AND_AssCurtain_Cover == True
			PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
			EndIf
		Else
			If AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == False && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == True
				PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == True && AND_BottomAss_Cover == False
				PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover == True && AND_BottomGenital_Cover == False && AND_BottomAss_Cover == False
				If PlayerRef.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT) || PlayerRef.WornHasKeyword(AND_Main.AND_HotpantsT_High)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High)\ 
				|| PlayerRef.WornHasKeyword(AND_Main.AND_Microskirt) || PlayerRef.WornHasKeyword(AND_Main.AND_VaginaPasties)
					PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
				Else
					PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 1)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
				EndIf
			EndIf
		EndIf
		
		;Nudity Check
		If PlayerRef.GetFactionRank(AND_Main.AND_BottomlessFaction) == 1 && PlayerRef.GetFactionRank(AND_Main.AND_ToplessFaction) == 1 && !PlayerRef.WornHasKeyword(AND_Main.AND_NearlyNaked)
			PlayerRef.SetFactionRank(AND_Main.AND_NudeActorFaction, 1)
		Else
			PlayerRef.SetFactionRank(AND_Main.AND_NudeActorFaction, 0)
		EndIf
		
	Else
		PlayerRef.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
		PlayerRef.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
		
		PlayerRef.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
		PlayerRef.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
		PlayerRef.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
		
		PlayerRef.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
		PlayerRef.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
		PlayerRef.SetFactionRank(AND_Main.AND_NudeActorFaction, 0)
	EndIf
	
	Int EventHandle = ModEvent.Create("AdvancedNudityDetectionUpdate")
	ModEvent.Send(EventHandle)

	Logger.Log("<Female Armor Scan> [Layer Analyze] Female Armor Scan Finished for Player")
EndFunction