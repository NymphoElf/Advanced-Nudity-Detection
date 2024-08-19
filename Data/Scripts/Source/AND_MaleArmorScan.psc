ScriptName AND_MaleArmorScan extends Quest

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
	If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain_Male)
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
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT_Male)
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
	If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt_Male)
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
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
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
	If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt_Male)
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
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
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
	If ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)
		If AND_Main.CStringRoll.GetValue() <= AND_Config.CStringOdds.GetValue()
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
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
	
	If !ScannedActor.WornHasKeyword(AND_Main.AND_CoversAll_Male)
	
		;/--------------/;
		;/---TOP SCAN---/;
		;/--------------/;
		
		;Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT_Male)
			AND_TopCurtainLayer_Cover.SetValue(TopCurtainCheck(ScannedActor) as Int)
		Else
			AND_TopCurtainLayer_Cover.SetValue(0) ;False
		EndIf
			
		;Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop_Male)
			AND_BraLayer_Cover.SetValue(1) ;True
			AND_Chest_Cover.SetValue(1) ;True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Male)
			Bool TopCovering = TopTransparentArmorCheck()
			
			If TopCovering == True
				AND_BraLayer_Cover.SetValue(1) ;True
				AND_Chest_Cover.SetValue(1) ;True
			Else
				;Bra Layer
				If ScannedActor.WornHasKeyword(AND_Main.AND_Bra_Male)
					AND_BraLayer_Cover.SetValue(0) ;False
					AND_Chest_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Male)
					AND_BraLayer_Cover.SetValue(0) ;False
					AND_Chest_Cover.SetValue(TransparentBraCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover_Male)
					AND_BraLayer_Cover.SetValue(0) ;False
					AND_Chest_Cover.SetValue(0) ;False
				Else
					AND_BraLayer_Cover.SetValue(1) ;True
					AND_Chest_Cover.SetValue(0) ;False
				EndIf
			EndIf
		Else
			;Bra Layer
			If ScannedActor.WornHasKeyword(AND_Main.AND_Bra_Male)
				AND_BraLayer_Cover.SetValue(0) ;False
				AND_Chest_Cover.SetValue(1) ;True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Male)
				AND_BraLayer_Cover.SetValue(0) ;False
				AND_Chest_Cover.SetValue(TransparentBraCheck() as Int)
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover_Male)
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
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
			AND_PelvicCurtain_Cover.SetValue(PelvicCurtainCheck(ScannedActor) as Int)
		Else
			AND_PelvicCurtain_Cover.SetValue(0) ;False
		EndIf
		
		;Ass Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
			AND_AssCurtain_Cover.SetValue(AssCurtainCheck(ScannedActor) as Int)
		Else
			AND_AssCurtain_Cover.SetValue(0) ;False
		EndIf
			
		;Bottom Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_Male)
			AND_BottomAss_Cover.SetValue(1) ;True
			AND_BottomGenital_Cover.SetValue(1) ;True
			AND_Underwear_Cover.SetValue(1) ;True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Male)
			AND_Underwear_Cover.SetValue(BottomTransparentArmorCheck() as Int)
			
			If AND_Underwear_Cover.GetValue() == 1 ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
				AND_BottomAss_Cover.SetValue(1) ;True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover_Male)
			If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(1) ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
				AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(1) ;True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
				
				If AND_BottomGenital_Cover.GetValue() == 1 ;True
					AND_Underwear_Cover.SetValue(0) ;False
				Else
					AND_Underwear_Cover.SetValue(1) ;True
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
				AND_Underwear_Cover.SetValue(0) ;False
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(0) ;False
			Else
				AND_Underwear_Cover.SetValue(1) ;True
				AND_BottomAss_Cover.SetValue(0) ;False
				AND_BottomGenital_Cover.SetValue(0) ;False
			EndIf
		Else
			If (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)) && (ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirt))
				AND_BottomAss_Cover.SetValue(1) ;True
				AND_BottomGenital_Cover.SetValue(1) ;True
				AND_Underwear_Cover.SetValue(1) ;True				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)) && ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT)
				AND_BottomGenital_Cover.SetValue(1) ;True
				
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_BottomAss_Cover.SetValue(1) ;True
					AND_Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
					AND_Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
					If AND_Underwear_Cover.GetValue() == 1 ;True
						AND_BottomAss_Cover.SetValue(1) ;True
					Else
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
					AND_Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
					If AND_Underwear_Cover.GetValue() == 1 ;True
						AND_BottomAss_Cover.SetValue(1) ;True
					Else
						AND_BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomAss_Cover.SetValue(TransparentShowgirlCheck() as Int)
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomAss_Cover.SetValue(TransparentShowgirlCheck() as Int)
				EndIf
				
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) && (ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirt))
				AND_BottomAss_Cover.SetValue(1) ;True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_BottomGenital_Cover.SetValue(1) ;True
					AND_Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
					AND_Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
					If AND_Underwear_Cover.GetValue() == 1 ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					Else
						If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
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
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
					
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) && ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT)
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					AND_BottomAss_Cover.SetValue(1) ;True
					AND_BottomGenital_Cover.SetValue(1) ;True
					AND_Underwear_Cover.SetValue(1) ;True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					AND_BottomGenital_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					AND_BottomAss_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)
				AND_BottomGenital_Cover.SetValue(1) ;True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(0) ;False
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomAss_Cover.SetValue(0) ;False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirt)
				AND_BottomAss_Cover.SetValue(1) ;True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
					AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
					If AND_BottomGenital_Cover.GetValue() == 1 ;True
						AND_Underwear_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(0) ;False
				Else
					AND_Underwear_Cover.SetValue(1) ;True
					AND_BottomGenital_Cover.SetValue(0) ;False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male)
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				If Hotpants_Covering == True
					AND_BottomGenital_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1)
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT)
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				If Showgirl_Covering == True
					AND_BottomAss_Cover.SetValue(1) ;True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(1) ;True
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(1) ;True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
						AND_Underwear_Cover.SetValue(0) ;False
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
						AND_BottomAss_Cover.SetValue(0) ;False
						AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
						If AND_BottomGenital_Cover.GetValue() == 1 ;True
							AND_Underwear_Cover.SetValue(0) ;False
						Else
							AND_Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(1) ;True
					AND_BottomGenital_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					AND_BottomGenital_Cover.SetValue(AND_BottomAss_Cover.GetValue())
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(1) ;True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
					AND_Underwear_Cover.SetValue(0) ;False
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
					AND_BottomAss_Cover.SetValue(0) ;False
					AND_BottomGenital_Cover.SetValue(CStringCheck(ScannedActor) as Int)
					If AND_BottomGenital_Cover.GetValue() == 1 ;True
						AND_Underwear_Cover.SetValue(0) ;False
					Else
						AND_Underwear_Cover.SetValue(1) ;True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtain_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtainT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtain_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtainT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtain_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtainT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Miniskirt_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_MiniskirtT_Male)
				CurtainKeywords = False
			Else
				CurtainKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop_NoCover_Male)
				TopKeywords = False
			Else
				TopKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom_NoCover_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Hotpants_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_HimboSkirt) && !AND_Slot32.HasKeyword(AND_Main.AND_HimboSkirtT)
				BottomKeywords = False
			Else
				BottomKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Bra_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Bra_NoCover_Male)
				BraKeywords = False
			Else
				BraKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Underwear_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Underwear_NoCover_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ThongT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong_NoCover_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_BananaHammock) && !AND_Slot32.HasKeyword(AND_Main.AND_BananaHammockT)
				UnderwearKeywords = False
			Else
				UnderwearKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_NearlyNaked_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_NipplePasties_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_VaginaPasties) && !AND_Slot32.HasKeyword(AND_Main.AND_Microskirt_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_EffectivelyNaked_Male)
				ExtraKeywords = False
			Else
				ExtraKeywords = True
			EndIf
			
			If CurtainKeywords == False && TopKeywords == False && BottomKeywords == False && BraKeywords == False && UnderwearKeywords == False && ExtraKeywords == False
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_NipplePasties_Male)
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_Microskirt_Male)
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
		If ScannedActor.GetFactionRank(AND_Main.AND_BottomlessFaction) == 1 && ScannedActor.GetFactionRank(AND_Main.AND_ToplessFaction) == 1 && !ScannedActor.WornHasKeyword(AND_Main.AND_NearlyNaked_Male)
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
		Debug.Notification("AND - Male Update Finished.")
	EndIf
EndFunction