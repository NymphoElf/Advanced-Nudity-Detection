ScriptName AND_FemaleArmorScan extends Quest

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_PlayerScript Property AND_Player Auto

Bool Property AND_TopCurtainLayer_Cover Auto Hidden
Bool Property AND_BraLayer_Cover Auto Hidden
Bool Property AND_Chest_Cover Auto Hidden

Bool Property AND_PelvicCurtain_Cover Auto Hidden
Bool Property AND_AssCurtain_Cover Auto Hidden
Bool Property AND_BottomGenital_Cover Auto Hidden
Bool Property AND_BottomAss_Cover Auto Hidden
Bool Property AND_Underwear_Cover Auto Hidden

GlobalVariable Property AND_DebugMode Auto

Bool Function TopCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsLow
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOdds
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsHigh
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsExtreme
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsUltra
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsLow
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOdds
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsHigh
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <=  AND_Config.TransparentTopCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsExtreme
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsUltra
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsUltra
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
		If ScannedActor == AND_Player.PlayerRef && AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Low
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds_High
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentBraCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Low)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds_Low
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds_High
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function PelvicCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || (AND_Main.SLA_PelvicCurtain != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PelvicCurtain)) || (AND_Main.SLA_MiniSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MiniSkirt))
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsLow
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOdds
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsHigh
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsExtreme
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsUltra
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsLow
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOdds
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsHigh
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsExtreme
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsUltra
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsUltra
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
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsLow
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOdds
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsHigh
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsExtreme
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsUltra
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsUltra
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT)
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskLow)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsLow
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsLow
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOdds
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOdds
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsHigh
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsHigh
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsExtreme
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsExtreme
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsUltra
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsUltra
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
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Low
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_High
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentHotpantsCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Low
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_High
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentShowgirlCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Low
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_High
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentUnderwearCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Low
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_High
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function CStringCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_CString) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.CStringOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.CStringOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds_Low
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds_Low
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CStringT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds_High
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds_High
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Function AND_LayerAnalyze(Actor ScannedActor)
	If AND_DebugMode.GetValue() == 1
		If ScannedActor == AND_Player.PlayerRef
			Debug.Notification("AND - Layer Analyze (PC)")
		Else
			Debug.Trace("AND - Layer Analyze (NPC)")
		EndIf
	EndIf

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
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop) || (AND_Main.SLA_ArmorPartTop != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ArmorPartTop))
			AND_BraLayer_Cover = True
			AND_Chest_Cover = True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High)
			Bool TopCovering = TopTransparentArmorCheck(ScannedActor)
			
			If TopCovering == True
				AND_BraLayer_Cover = True
				AND_Chest_Cover = True
			Else
				;Bra Layer
				If ScannedActor.WornHasKeyword(AND_Main.AND_Bra) || (AND_Main.SLA_Brabikini != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_Brabikini))
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
			If ScannedActor.WornHasKeyword(AND_Main.AND_Bra) || (AND_Main.SLA_Brabikini != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_Brabikini))
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
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT) || (AND_Main.SLA_PelvicCurtain != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PelvicCurtain)) || (AND_Main.SLA_MiniSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MiniSkirt))
			AND_PelvicCurtain_Cover = PelvicCurtainCheck(ScannedActor)
		Else
			AND_PelvicCurtain_Cover = False
		EndIf
		
		;Ass Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain) || ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT) || (AND_Main.SLA_MiniSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MiniSkirt))
			AND_AssCurtain_Cover = AssCurtainCheck(ScannedActor)
		Else
			AND_AssCurtain_Cover = False
		EndIf
			
		;Bottom Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom) || (AND_Main.SLA_ArmorPartBottom != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ArmorPartBottom)) || (AND_Main.SLA_PantsNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantsNormal)) || (AND_Main.SLA_FullSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_FullSkirt))
			AND_BottomAss_Cover = True
			AND_BottomGenital_Cover = True
			AND_Underwear_Cover = True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_High)
			AND_Underwear_Cover = BottomTransparentArmorCheck(ScannedActor)
			
			If AND_Underwear_Cover == True
				AND_BottomGenital_Cover = True
				AND_BottomAss_Cover = True
			Else
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
					|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover)
			If (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants))) && (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt)))
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants)))\ 
			&& (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High) )
				AND_BottomGenital_Cover = True
				
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))\ 
				|| (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring))\ 
				|| (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg))\ 
				|| (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				EndIf
				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High))\ 
				&& (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt)))
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong)\ 
				|| (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))\ 
				|| (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring))\ 
				|| (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg))\ 
				|| (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
					|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants))
				AND_BottomGenital_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt))
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
					|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
					|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
			If (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants))) && (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt)))
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants)))\ 
			&& (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirtT_High) )
				AND_BottomGenital_Cover = True
				
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover) || (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))\ 
				|| (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring))\ 
				|| (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg))\ 
				|| (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				EndIf
				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High))\ 
				&& (ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt)))
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong)\ 
				|| (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))\ 
				|| (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring))\ 
				|| (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg))\ 
				|| (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
					|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants) || (AND_Main.SLA_MicroHotpants != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroHotpants))
				AND_BottomGenital_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ShowgirlSkirt) || (AND_Main.SLA_ShowgirlSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ShowgirlSkirt))
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
					|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal)) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
						|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear) || (AND_Main.SLA_PantiesNormal != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PantiesNormal))
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong) || (AND_Main.SLA_ThongGstring != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongGstring)) || (AND_Main.SLA_ThongLowleg != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongLowleg)) || (AND_Main.SLA_ThongT != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongT))
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_CString)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT) || ScannedActor.WornHasKeyword(AND_Main.AND_CStringT_High)\ 
					|| (AND_Main.SLA_ThongCString != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_ThongCString))
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
			Bool BakaKeywords = False
			
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
			
			If AND_Main.SLA_Found == True
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
				|| ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop_NoCover) || ScannedActor.WornHasKeyword(AND_Main.AND_NipplePasties)\ 
				|| (AND_Main.SLA_PastiesNipple != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PastiesNipple))
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
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Microskirt) || ScannedActor.WornHasKeyword(AND_Main.AND_VaginaPasties)\ 
				|| (AND_Main.SLA_MicroSkirt != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_MicroSkirt))\ 
				|| (AND_Main.SLA_PastiesCrotch != None && AND_Config.IgnoreBakaKeywords == False && ScannedActor.WornHasKeyword(AND_Main.SLA_PastiesCrotch))
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
	
	If ScannedActor == AND_Player.PlayerRef
		Int EventHandle = ModEvent.Create("AdvancedNudityDetectionUpdate")
		ModEvent.Send(EventHandle)
	EndIf

	If AND_DebugMode.GetValue() == 1
		If ScannedActor == AND_Player.PlayerRef
			Debug.Notification("AND - Female (PC) Update Finished.")
		Else
			Debug.Trace("AND - Female (NPC) Update Finished.")
		EndIf
	EndIf
EndFunction