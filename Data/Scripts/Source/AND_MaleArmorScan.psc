ScriptName AND_MaleArmorScan extends Quest

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
	If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain_Male)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsLow_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsLow_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOdds_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOdds_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsHigh_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsHigh_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsExtreme_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsExtreme_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TopCurtainOddsUltra_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TopCurtainOddsUltra_Male
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT_Male)
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskLow_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsLow_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsLow_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRisk_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOdds_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOdds_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskHigh_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsHigh_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <=  AND_Config.TransparentTopCurtainOddsHigh_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskExtreme_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsExtreme_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsExtreme_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ChestFlashRiskUltra_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.TopCurtainRoll <= AND_Config.TransparentTopCurtainOddsUltra_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopCurtainRoll <= AND_Config.TransparentTopCurtainOddsUltra_Male
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
	If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Low_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Low_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Low_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.TopTransparentRoll <= AND_Config.TransparentTopArmorOdds_High_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCTopTransparentRoll <= AND_Config.TransparentTopArmorOdds_High_Male
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentBraCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Low_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds_Low_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds_Low_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_High_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BraTransparentRoll <= AND_Config.TransparentBraOdds_High_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBraTransparentRoll <= AND_Config.TransparentBraOdds_High_Male
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function PelvicCurtainCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt_Male)
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsLow_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsLow_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOdds_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOdds_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsHigh_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsHigh_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsExtreme_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsExtreme_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.PelvicCurtainOddsUltra_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.PelvicCurtainOddsUltra_Male
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskLow_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsLow_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsLow_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRisk_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOdds_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOdds_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskHigh_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsHigh_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsHigh_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskExtreme_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsExtreme_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsExtreme_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_PelvicFlashRiskUltra_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.PelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsUltra_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCPelvicCurtainRoll <= AND_Config.TransparentPelvicCurtainOddsUltra_Male
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
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskLow_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsLow_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsLow_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOdds_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOdds_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsHigh_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsHigh_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsExtreme_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsExtreme_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.AssCurtainOddsUltra_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.AssCurtainOddsUltra_Male
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskLow_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsLow_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsLow_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRisk_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOdds_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOdds_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskHigh_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsHigh_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsHigh_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskExtreme_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsExtreme_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsExtreme_Male
				return False
			Else
				return True
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_AssFlashRiskUltra_Male)
			If ScannedActor == AND_Player.PlayerRef && AND_Main.AssCurtainRoll <= AND_Config.TransparentAssCurtainOddsUltra_Male
				return False
			ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCAssCurtainRoll <= AND_Config.TransparentAssCurtainOddsUltra_Male
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
	If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Low_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Low_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Low_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_High_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.BottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_High_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCBottomTransparentRoll <= AND_Config.TransparentBottomArmorOdds_High_Male
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentHotpantsCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Low_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Low_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.HotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_High_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCHotpantsTransparentRoll <= AND_Config.TransparentHotpantsOdds_High_Male
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentShowgirlCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Low_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Low_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.ShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_High_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCShowgirlTransparentRoll <= AND_Config.TransparentShowgirlSkirtOdds_High_Male
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function TransparentUnderwearCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Low_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Low_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.UnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_High_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCUnderwearTransparentRoll <= AND_Config.TransparentUnderwearOdds_High_Male
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Bool Function CStringCheck(Actor ScannedActor)
	If ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.CStringOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.CStringOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds_Low_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds_Low_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds_Male
			return False
		Else
			return True
		EndIf
	ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
		If ScannedActor == AND_Player.PlayerRef && AND_Main.CStringRoll <= AND_Config.TransparentCStringOdds_High_Male
			return False
		ElseIf ScannedActor != AND_Player.PlayerRef && AND_Main.NPCCstringRoll <= AND_Config.TransparentCStringOdds_High_Male
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
		If ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ChestCurtainT_Male)
			AND_TopCurtainLayer_Cover = TopCurtainCheck(ScannedActor)
		Else
			AND_TopCurtainLayer_Cover = False
		EndIf
			
		;Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop_Male)
			AND_BraLayer_Cover = True
			AND_Chest_Cover = True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High_Male)
			Bool TopCovering = TopTransparentArmorCheck(ScannedActor)
			
			If TopCovering == True
				AND_BraLayer_Cover = True
				AND_Chest_Cover = True
			Else
				;Bra Layer
				If ScannedActor.WornHasKeyword(AND_Main.AND_Bra_Male)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT_High_Male)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = TransparentBraCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover_Male)
					AND_BraLayer_Cover = False
					AND_Chest_Cover = False
				Else
					AND_BraLayer_Cover = True
					AND_Chest_Cover = False
				EndIf
			EndIf
		Else
			;Bra Layer
			If ScannedActor.WornHasKeyword(AND_Main.AND_Bra_Male)
				AND_BraLayer_Cover = False
				AND_Chest_Cover = True
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_BraT_High_Male)
				AND_BraLayer_Cover = False
				AND_Chest_Cover = TransparentBraCheck(ScannedActor)
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Bra_NoCover_Male)
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
		If ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_PelvicCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
			AND_PelvicCurtain_Cover = PelvicCurtainCheck(ScannedActor)
		Else
			AND_PelvicCurtain_Cover = False
		EndIf
		
		;Ass Curtain Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtain_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_AssCurtainT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Miniskirt_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_MiniskirtT_Male)
			AND_AssCurtain_Cover = AssCurtainCheck(ScannedActor)
		Else
			AND_AssCurtain_Cover = False
		EndIf
			
		;Bottom Armor Layer
		If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_Male)
			AND_BottomAss_Cover = True
			AND_BottomGenital_Cover = True
			AND_Underwear_Cover = True
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottomT_High_Male)
			AND_Underwear_Cover = BottomTransparentArmorCheck(ScannedActor)
			
			If AND_Underwear_Cover == True
				AND_BottomGenital_Cover = True
				AND_BottomAss_Cover = True
			Else
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = False
				EndIf
			EndIf
		ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover_Male)
			If ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)\ 
			&& (ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High))
				AND_BottomGenital_Cover = True
				
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_BottomAss_Cover = True
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = False
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				EndIf
				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male))\ 
				&& ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirt)
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
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
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
					
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male))\ 
				&& (ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High))
				Bool Hotpants_Covering = TransparentHotpantsCheck(ScannedActor)
				Bool Showgirl_Covering = TransparentShowgirlCheck(ScannedActor)
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					AND_BottomGenital_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)
				AND_BottomGenital_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirt)
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male)
				Bool Hotpants_Covering = TransparentHotpantsCheck(ScannedActor)
				If Hotpants_Covering == True
					AND_BottomGenital_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High)
				Bool Showgirl_Covering = TransparentShowgirlCheck(ScannedActor)
				If Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
			If ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)
				AND_BottomAss_Cover = True
				AND_BottomGenital_Cover = True
				AND_Underwear_Cover = True				
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)\ 
			&& (ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High))
				AND_BottomGenital_Cover = True
				
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_BottomAss_Cover = True
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
					AND_Underwear_Cover = TransparentShowgirlCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomAss_Cover = True
					Else
						AND_BottomAss_Cover = False
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = TransparentShowgirlCheck(ScannedActor)
				EndIf
				
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male))\ 
				&& ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirt)
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
					AND_Underwear_Cover = TransparentHotpantsCheck(ScannedActor)
					If AND_Underwear_Cover == True
						AND_BottomGenital_Cover = True
					Else
						If ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
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
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
					
			ElseIf (ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male))\ 
				&& (ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High))
				Bool Hotpants_Covering = TransparentHotpantsCheck(ScannedActor)
				Bool Showgirl_Covering = TransparentShowgirlCheck(ScannedActor)
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
					AND_Underwear_Cover = True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					AND_BottomGenital_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Hotpants_Male)
				AND_BottomGenital_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomAss_Cover = False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirt)
				AND_BottomAss_Cover = True
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
					AND_Underwear_Cover = False
					AND_BottomGenital_Cover = False
				Else
					AND_Underwear_Cover = True
					AND_BottomGenital_Cover = False
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male)
				Bool Hotpants_Covering = TransparentHotpantsCheck(ScannedActor)
				If Hotpants_Covering == True
					AND_BottomGenital_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					Else
						AND_Underwear_Cover = True
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High)
				Bool Showgirl_Covering = TransparentShowgirlCheck(ScannedActor)
				If Showgirl_Covering == True
					AND_BottomAss_Cover = True
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
						AND_Underwear_Cover = False
						AND_BottomGenital_Cover = False
					EndIf
				Else
					If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = True
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
						AND_BottomGenital_Cover = AND_BottomAss_Cover
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = True
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
						AND_Underwear_Cover = False
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
						|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
						AND_BottomAss_Cover = False
						AND_BottomGenital_Cover = CStringCheck(ScannedActor)
						If AND_BottomGenital_Cover == True
							AND_Underwear_Cover = False
						Else
							AND_Underwear_Cover = True
						EndIf
					ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = True
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_UnderwearT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = TransparentUnderwearCheck(ScannedActor)
					AND_BottomGenital_Cover = AND_BottomAss_Cover
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Thong_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = True
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ThongT_High_Male)
					AND_Underwear_Cover = False
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = TransparentUnderwearCheck(ScannedActor)
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammock)\ 
					|| ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT) || ScannedActor.WornHasKeyword(AND_Main.AND_BananaHammockT_High)
					AND_BottomAss_Cover = False
					AND_BottomGenital_Cover = CStringCheck(ScannedActor)
					If AND_BottomGenital_Cover == True
						AND_Underwear_Cover = False
					Else
						AND_Underwear_Cover = True
					EndIf
				ElseIf ScannedActor.WornHasKeyword(AND_Main.AND_Underwear_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_Thong_NoCover_Male)
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
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtain_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ChestCurtainT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtain_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_PelvicCurtainT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtain_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_AssCurtainT_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Miniskirt_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_MiniskirtT_Male)
				CurtainKeywords = False
			Else
				CurtainKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT_Low_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTopT_High_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ArmorTop_NoCover_Male)
				TopKeywords = False
			Else
				TopKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT_Low_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottomT_High_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ArmorBottom_NoCover_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Hotpants_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT_Low_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_HotpantsT_High_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_HimboSkirt)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_HimboSkirtT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_HimboSkirtT) && !AND_Slot32.HasKeyword(AND_Main.AND_HimboSkirtT_High)
				BottomKeywords = False
			Else
				BottomKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Bra_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT_Low_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_BraT_High_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Bra_NoCover_Male)
				BraKeywords = False
			Else
				BraKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_Underwear_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT_Low_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_UnderwearT_High_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_Underwear_NoCover_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_ThongT_Low_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ThongT_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_ThongT_High_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Thong_NoCover_Male)\ 
			&& !AND_Slot32.HasKeyword(AND_Main.AND_BananaHammock) && !AND_Slot32.HasKeyword(AND_Main.AND_BananaHammockT_Low) && !AND_Slot32.HasKeyword(AND_Main.AND_BananaHammockT) && !AND_Slot32.HasKeyword(AND_Main.AND_BananaHammockT_High)
				UnderwearKeywords = False
			Else
				UnderwearKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Main.AND_NearlyNaked_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_NipplePasties_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_Microskirt_Male) && !AND_Slot32.HasKeyword(AND_Main.AND_EffectivelyNaked_Male)
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTopT_High_Male)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_ArmorTop_NoCover_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_NipplePasties_Male)
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
				If ScannedActor.WornHasKeyword(AND_Main.AND_ArmorBottom_NoCover_Male)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Low_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_Male) || ScannedActor.WornHasKeyword(AND_Main.AND_HotpantsT_High_Male)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_Low) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT) || ScannedActor.WornHasKeyword(AND_Main.AND_HimboSkirtT_High)\ 
				|| ScannedActor.WornHasKeyword(AND_Main.AND_Microskirt_Male)
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

	If ScannedActor == AND_Player.PlayerRef
		Int EventHandle = ModEvent.Create("AdvancedNudityDetectionUpdate")
		ModEvent.Send(EventHandle)
	EndIf

	If AND_DebugMode.GetValue() == 1
		If ScannedActor == AND_Player.PlayerRef
			Debug.Notification("AND - Male (PC) Update Finished.")
		Else
			Debug.Trace("AND - Male (NPC) Update Finished.")
		EndIf
	EndIf
EndFunction