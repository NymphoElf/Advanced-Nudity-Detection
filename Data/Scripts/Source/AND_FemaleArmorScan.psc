ScriptName AND_FemaleArmorScan extends Quest

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_PlayerScript Property AND_Player Auto

GlobalVariable Property AND_TopCurtainLayer_Cover Auto
GlobalVariable Property AND_BraLayer_Cover Auto
GlobalVariable Property AND_Chest_Cover Auto

GlobalVariable Property AND_PelvicCurtain_Cover Auto
GlobalVariable Property AND_AssCurtain_Cover Auto
GlobalVariable Property AND_BottomGenital_Cover Auto
GlobalVariable Property AND_BottomAss_Cover Auto
GlobalVariable Property AND_Underwear_Cover Auto

Bool Function TopCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TopCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TopCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TopCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TopCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TopCurtainOddsUltra.GetValue()
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TransparentTopCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TransparentTopCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TransparentTopCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TransparentTopCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If AND_Main.TopCurtainRoll.GetValue() <= AND_Config.TransparentTopCurtainOddsUltra.GetValue()
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
	If AND_Main.TopTransparentRoll.GetValue() <= AND_Config.TransparentTopArmorOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentBraCheck()
	If AND_Main.BraTransparentRoll.GetValue() <= AND_Config.TransparentBraOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function PelvicCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || (AND_Main.SLA_PelvicCurtain != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PelvicCurtain)) || (AND_Main.SLA_MiniSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MiniSkirt))
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.PelvicCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.PelvicCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.PelvicCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.PelvicCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.PelvicCurtainOddsUltra.GetValue()
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.TransparentPelvicCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.TransparentPelvicCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.TransparentPelvicCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.TransparentPelvicCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If AND_Main.PelvicCurtainRoll.GetValue() <= AND_Config.TransparentPelvicCurtainOddsUltra.GetValue()
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
	If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || (AND_Main.SLA_MiniSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MiniSkirt))
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskLow)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.AssCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.AssCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.AssCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.AssCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.AssCurtainOddsUltra.GetValue()
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskLow)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.TransparentAssCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.TransparentAssCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.TransparentAssCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.TransparentAssCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If AND_Main.AssCurtainRoll.GetValue() <= AND_Config.TransparentAssCurtainOddsUltra.GetValue()
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
	If AND_Main.BottomTransparentRoll.GetValue() <= AND_Config.TransparentBottomArmorOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentHotpantsCheck()
	If AND_Main.HotpantsTransparentRoll.GetValue() <= AND_Config.TransparentHotpantsOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentShowgirlCheck()
	If AND_Main.ShowgirlTransparentRoll.GetValue() <= AND_Config.TransparentShowgirlSkirtOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentUnderwearCheck()
	If AND_Main.UnderwearTransparentRoll.GetValue() <= AND_Config.TransparentUnderwearOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function CStringCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_CString) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
		If AND_Main.CStringRoll.GetValue() <= AND_Config.CStringOdds.GetValue()
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CStringT)
		If AND_Main.CStringRoll.GetValue() <= AND_Config.TransparentCStringOdds.GetValue()
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Function AND_LayerAnalyze(Actor ScannedActor)
	If AND_Main.AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Layer Analyze")
	EndIf

	Armor AND_Slot32 = ScannedActor.GetEquippedArmorInSlot(32)
	
	If !ScannedActor.WornHasKeyword(AND_Main.AND_CoversAll)
	
		;/--------------/;
		;/---TOP SCAN---/;
		;/--------------/;
		
		;Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT)
			AND_TopCurtainLayer_Cover.SetValue(TopCurtainCheck(ScannedActor) as Int)
		Else
			AND_TopCurtainLayer_Cover.SetValue(0) ;False
		EndIf
			
		;Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop) || (AND_Main.SLA_ArmorPartTop != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ArmorPartTop))
			AND_BraLayer_Cover.SetValue(1) ;True
			AND_Chest_Cover.SetValue(1) ;True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT)
			Bool TopCovering = TopTransparentArmorCheck()
			
			If TopCovering == True
				AND_BraLayer_Cover.SetValue(1) ;True
				AND_Chest_Cover.SetValue(1) ;True
			Else
				;Bra Layer
				If ScannedActor.WornHasKeyword(AND_Main.AND_Bra) || (AND_Main.SLA_Brabikini != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_Brabikini))
					AND_BraLayer_Cover.SetValue(0) ;False
					AND_Chest_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT)
					AND_BraLayer_Cover.SetValue(0) ;False
					AND_Chest_Cover.SetValue(TransparentBraCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover)
					AND_BraLayer_Cover.SetValue(0) ;False
					AND_Chest_Cover.SetValue(0) ;False
				Else
					AND_BraLayer_Cover.SetValue(1) ;True
					AND_Chest_Cover.SetValue(0) ;False
				EndIf
			EndIf
		Else
			;Bra Layer
			If ScannedActor.WornHasKeyword(AND_Main.AND_Bra) || (AND_Main.SLA_Brabikini != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_Brabikini))
				AND_BraLayer_Cover.SetValue(0) ;False
				AND_Chest_Cover.SetValue(1) ;True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT)
				AND_BraLayer_Cover.SetValue(0) ;False
				AND_Chest_Cover.SetValue(TransparentBraCheck() as Int)
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover)
				AND_BraLayer_Cover.SetValue(0) ;False
				AND_Chest_Cover.SetValue(0) ;False
			Else
				AND_BraLayer_Cover.SetValue(1) ;True
				AND_Chest_Cover.SetValue(0) ;False
			EndIf
		EndIf
		
		
		;/-----------------/;
		;/---Bottom SCAN---/;
		;/-----------------/;
		
		;Pelvic Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT) || (AND_Main.SLA_PelvicCurtain != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PelvicCurtain)) || (AND_Main.SLA_MiniSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MiniSkirt))
			AND_PelvicCurtain_Cover.SetValue(PelvicCurtainCheck(ScannedActor) as Int)
		Else
			AND_PelvicCurtain_Cover.SetValue(0) ;False
		EndIf
		
		;Ass Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT) || (AND_Main.SLA_MiniSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MiniSkirt))
			AND_AssCurtain_Cover.SetValue(AssCurtainCheck(ScannedActor) as Int)
		Else
			AND_AssCurtain_Cover.SetValue(0) ;False
		EndIf
			
		;Bottom Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom) || (AND_Main.SLA_ArmorPartBottom != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ArmorPartBottom)) || (AND_Main.SLA_PantsNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantsNormal)) || (AND_Main.SLA_FullSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_FullSkirt))
			AND_BottomAss_Cover.SetValue(1) ;True
			AND_BottomGenital_Cover.SetValue(1) ;True
			AND_Underwear_Cover.SetValue(1) ;True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT)
			AND_Underwear_Cover.SetValue(BottomTransparentArmorCheck() as Int)
			
			If AND_Underwear_Cover.GetValue() == 1 ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
				AND_BottomAss_Cover.SetValue(1) ;True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover)
			If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(1) ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
				AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(1) ;True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
				
				If AND_BottomGenital_Cover.GetValue() == 1 ;True
					AND_Underwear_Cover.SetValue(0) ;False
				Else
					AND_Underwear_Cover.SetValue(1) ;True
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(0) ;False
			Else
				AND_Underwear_Cover.SetValue(1) ;True
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(0) ;False
			EndIf
		Else
			If (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants))) && (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt)))
				AND_BottomAss_Cover.SetValue(1) ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
				AND_Underwear_Cover.SetValue(1) ;True				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants))) && ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT)
				AND_BottomGenital_Cover.SetValue(1) ;True
				
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_BottomAss_Cover.SetValue(1) ;True
					AND_Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
					AND_Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
					If AND_Underwear_Cover.GetValue() == 1 ;True
						AND_BottomAss_Cover.SetValue(1) ;True
					Else
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
					AND_Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
					If AND_Underwear_Cover.GetValue() == 1 ;True
						AND_BottomAss_Cover.SetValue(1) ;True
					Else
						AND_BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomAss_Cover.SetValue(TransparentShowgirlCheck() as Int)
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomAss_Cover.SetValue(TransparentShowgirlCheck() as Int)
				EndIf
				
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) && (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt)))
				AND_BottomAss_Cover.SetValue(1) ;True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_BottomGenital_Cover.SetValue(1) ;True
					AND_Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
					AND_Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
					If AND_Underwear_Cover.GetValue() == 1 ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					Else
						If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
							AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
						Else
							AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
							If AND_BottomGenital_Cover.GetValue() == 1 ;True
								AND_Underwear_Cover.SetValue(0) ;False
							Else
								AND_Underwear_Cover.SetValue(1) ;False
							EndIf
						EndIf
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
					If AND_Underwear_Cover.GetValue() == 1 ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					Else
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomGenital_Cover.SetValue(TransparentHotpantsCheck() as Int)
				EndIf
					
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) && ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT)
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					AND_BottomAss_Cover.SetValue(1) ;True
					AND_BottomGenital_Cover.SetValue(1) ;True
					AND_Underwear_Cover.SetValue(1) ;True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					AND_BottomGenital_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					AND_BottomAss_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants))
				AND_BottomGenital_Cover.SetValue(1) ;True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(0) ;False
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomAss_Cover.SetValue(0) ;False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt))
				AND_BottomAss_Cover.SetValue(1) ;True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
					AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
					If AND_BottomGenital_Cover.GetValue() == 1 ;True
						AND_Underwear_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(0) ;False
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomGenital_Cover.SetValue(0) ;False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT)
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				If Hotpants_Covering == True
					AND_BottomGenital_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1)
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT)
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				If Showgirl_Covering == True
					AND_BottomAss_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			Else
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(1) ;True
					AND_BottomGenital_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
					If AND_BottomGenital_Cover.GetValue() == 1 ;True
						AND_Underwear_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(0) ;False
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(0) ;False
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
			Bool BakaKeywords = False
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtain) && !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtainT) && !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtain) && !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtainT) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtain) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtainT) && !AND_Slot32.HasKeyword(AND_Main.AND_Miniskirt) && !AND_Slot32.HasKeyword(AND_Main.AND_MiniskirtT)
				CurtainKeywords = False
			Else
				CurtainKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop_NoCover)
				TopKeywords = False
			Else
				TopKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom_NoCover) && !AND_Slot32.HasKeyword(AND_Main.AND_Hotpants) && !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT) && !AND_Slot32.HasKeyword(AND_Main.AND_ShowgirlSkirt) && !AND_Slot32.HasKeyword(AND_Main.AND_ShowgirlSkirtT)
				BottomKeywords = False
			Else
				BottomKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Bra) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT) && !AND_Slot32.HasKeyword(AND_Main.AND_Bra_NoCover)
				BraKeywords = False
			Else
				BraKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Underwear) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT) && !AND_Slot32.HasKeyword(AND_Main.AND_Underwear_NoCover) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong) && !AND_Slot32.HasKeyword(AND_Main.AND_ThongT) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong_NoCover) && !AND_Slot32.HasKeyword(AND_Main.AND_CString) && !AND_Slot32.HasKeyword(AND_Main.AND_CStringT)
				UnderwearKeywords = False
			Else
				UnderwearKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_NearlyNaked) && !AND_Slot32.HasKeyword(AND_Main.AND_NipplePasties) && !AND_Slot32.HasKeyword(AND_Main.AND_VaginaPasties) && !AND_Slot32.HasKeyword(AND_Main.AND_Microskirt) && !AND_Slot32.HasKeyword(AND_Main.AND_EffectivelyNaked)
				ExtraKeywords = False
			Else
				ExtraKeywords = True
			EndIf
			
			If AND_Main.SLA_Found.GetValue() == 1
				If AND_Config.IgnoreBakaKeywords == True
					BakaKeywords = False
				ElseIf !AND_Slot32.HasKeyword(AND_Main.SLA_ArmorHalfNaked) && !AND_Slot32.HasKeyword(AND_Main.SLA_ArmorPartBottom) && !AND_Slot32.HasKeyword(AND_Main.SLA_ArmorPartTop)\
					&& !AND_Slot32.HasKeyword(AND_Main.SLA_Brabikini) && !AND_Slot32.HasKeyword(AND_Main.SLA_FullSkirt) && !AND_Slot32.HasKeyword(AND_Main.SLA_MicroHotpants)\
					&& !AND_Slot32.HasKeyword(AND_Main.SLA_MicroSkirt) && !AND_Slot32.HasKeyword(AND_Main.SLA_MiniSkirt) && !AND_Slot32.HasKeyword(AND_Main.SLA_PantiesNormal)\
					&& !AND_Slot32.HasKeyword(AND_Main.SLA_PantsNormal) && !AND_Slot32.HasKeyword(AND_Main.SLA_PastiesCrotch) && !AND_Slot32.HasKeyword(AND_Main.SLA_PastiesNipple)\
					&& !AND_Slot32.HasKeyword(AND_Main.SLA_PelvicCurtain) && !AND_Slot32.HasKeyword(AND_Main.SLA_ShowgirlSkirt) && !AND_Slot32.HasKeyword(AND_Main.SLA_ThongCString)\
					&& !AND_Slot32.HasKeyword(AND_Main.SLA_ThongGstring) && !AND_Slot32.HasKeyword(AND_Main.SLA_ThongLowleg) && !AND_Slot32.HasKeyword(AND_Main.SLA_ThongT)
					BakaKeywords = False
				Else
					BakaKeywords = True
				EndIf
			EndIf
			
			If CurtainKeywords == False && TopKeywords == False && BottomKeywords == False && BraKeywords == False && UnderwearKeywords == False && ExtraKeywords == False && BakaKeywords == False
				AND_BraLayer_Cover.SetValue(1) ;True
				AND_Chest_Cover.SetValue(1) ;True
				AND_Underwear_Cover.SetValue(1) ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
				AND_BottomAss_Cover.SetValue(1) ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
			EndIf
		EndIf
		
		;/------------------------/;
		;/-----LAYER ANALYZE------/;
		;/------------------------/;
		
		;Top conditions
		If AND_TopCurtainLayer_Cover.GetValue() == 1 ;True
			ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
		Else
			If AND_BraLayer_Cover.GetValue() == 1 && AND_Chest_Cover.GetValue() == 1 ;True-True
				ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
			ElseIf AND_BraLayer_Cover.GetValue() == 0 && AND_Chest_Cover.GetValue() == 1 ;False-True
				ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 0)
			ElseIf AND_BraLayer_Cover.GetValue() == 0 && AND_Chest_Cover.GetValue() == 0 ;False-False
				ScannedActor.SetFactionRank(AND_Main.AND_ToplessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingBraFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingChestFaction, 1)
			ElseIf AND_BraLayer_Cover.GetValue() == 1 && AND_Chest_Cover.GetValue() == 0 ;True-False
				If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_NipplePasties) || (AND_Main.SLA_PastiesNipple != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PastiesNipple))
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
		If AND_PelvicCurtain_Cover.GetValue() == 1 && AND_AssCurtain_Cover.GetValue() == 1 ;True-True
			ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
		ElseIf AND_PelvicCurtain_Cover.GetValue() == 1 && AND_AssCurtain_Cover.GetValue() == 0 ;True-False
			ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			If AND_Underwear_Cover.GetValue() == 1 && AND_BottomAss_Cover.GetValue() == 1 ;True-True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomAss_Cover.GetValue() == 1 ;False-True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomAss_Cover.GetValue() == 0 ;False-False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover.GetValue() == 1 && AND_BottomAss_Cover.GetValue() == 0 ;True-False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			EndIf
		ElseIf AND_PelvicCurtain_Cover.GetValue() == 0 && AND_AssCurtain_Cover.GetValue() == 1 ;False-True
			ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
			ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			If AND_Underwear_Cover.GetValue() == 1 && AND_BottomGenital_Cover.GetValue() == 1 ;True-True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomGenital_Cover.GetValue() == 1 ;False-True
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomGenital_Cover.GetValue() == 0 ;False-False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
			ElseIf AND_Underwear_Cover.GetValue() == 1 && AND_BottomGenital_Cover.GetValue() == 0 ;True-False
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
			EndIf
		Else
			If AND_Underwear_Cover.GetValue() == 1 && AND_BottomGenital_Cover.GetValue() == 1 && AND_BottomAss_Cover.GetValue() == 1 ;True-True-True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomGenital_Cover.GetValue() == 1 && AND_BottomAss_Cover.GetValue() == 1 ;False-True-True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomGenital_Cover.GetValue() == 0 && AND_BottomAss_Cover.GetValue() == 1 ;False-False-True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomGenital_Cover.GetValue() == 1 && AND_BottomAss_Cover.GetValue() == 0 ;False-True-False
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover.GetValue() == 0 && AND_BottomGenital_Cover.GetValue() == 0 && AND_BottomAss_Cover.GetValue() == 0 ;False-False-False
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover.GetValue() == 1 && AND_BottomGenital_Cover.GetValue() == 0 && AND_BottomAss_Cover.GetValue() == 1 ;True-False-True
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 1)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 0)
			ElseIf AND_Underwear_Cover.GetValue() == 1 && AND_BottomGenital_Cover.GetValue() == 1 && AND_BottomAss_Cover.GetValue() == 0 ;True-True-False
				ScannedActor.SetFactionRank(AND_Main.AND_BottomlessFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingUnderwearFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingGenitalsFaction, 0)
				ScannedActor.SetFactionRank(AND_Main.AND_ShowingAssFaction, 1)
			ElseIf AND_Underwear_Cover.GetValue() == 1 && AND_BottomGenital_Cover.GetValue() == 0 && AND_BottomAss_Cover.GetValue() == 0 ;True-False-False
				If ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_Microskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_VaginaPasties) || (AND_Main.SLA_MicroSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroSkirt)) || (AND_Main.SLA_PastiesCrotch != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PastiesCrotch))
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
		If ScannedActor.GetFactionRank(AND_Main.AND_BottomlessFaction) == 1 && ScannedActor.GetFactionRank(AND_Main.AND_ToplessFaction) == 1 && !ScannedActor.WornHasKeyword(AND_Main.AND_NearlyNaked) && (AND_Main.SLA_ArmorHalfNaked == None || AND_Config.IgnoreBakaKeywords == True || !ScannedActor.WornHasKeyword(AND_Main.SLA_ArmorHalfNaked))
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

	Int EventHandle = ModEvent.Create("AdvancedNudityDetectionUpdate")
	ModEvent.Send(EventHandle)

	If AND_Main.AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Female Update Finished.")
	EndIf
EndFunction