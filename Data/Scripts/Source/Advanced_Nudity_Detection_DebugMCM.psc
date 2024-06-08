Scriptname Advanced_Nudity_Detection_DebugMCM extends SKI_Configbase  

Advanced_Nudity_Detection Property AdvancedNudityScanner Auto
AND_FlashScript Property FlashScript Auto

Event OnPageReset(string page)
	SetCursorFillMode(TOP_TO_BOTTOM)
	SetCursorPosition(0)
	
	If (page == "") ;default page
	ElseIf (page == "Factions & Armor States")
		AddHeaderOption("Faction Ranks")
		AddTextOption("Nude", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_NudeActorFaction))
		AddEmptyOption()
		AddTextOption("Topless", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_ToplessFaction))
		AddTextOption("Bottomless", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_BottomlessFaction))
		AddEmptyOption()
		AddTextOption("Showing Bra", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_ShowingBraFaction))
		AddTextOption("Showing Chest", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_ShowingChestFaction))
		AddEmptyOption()
		AddTextOption("Showing Underwear", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_ShowingUnderwearFaction))
		AddTextOption("Showing Genitals", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_ShowingGenitalsFaction))
		AddTextOption("Showing Ass", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.AND_ShowingAssFaction))
		
		AddHeaderOption("Armor Layer States")
		AddTextOption("Top Curtain Layer Cover", AdvancedNudityScanner.TopCurtainLayer_Cover)
		AddTextOption("Bra Layer Cover", AdvancedNudityScanner.BraLayer_Cover)
		AddTextOption("Chest Cover", AdvancedNudityScanner.Chest_Cover)
		AddTextOption("Pelvic Curtain Layer Cover", AdvancedNudityScanner.PelvicCurtain_Cover)
		AddTextOption("Ass Curtain Layer Cover", AdvancedNudityScanner.AssCurtain_Cover)
		AddTextOption("Underwear Cover", AdvancedNudityScanner.Underwear_Cover)
		AddTextOption("Ass Cover", AdvancedNudityScanner.BottomAss_Cover)
		AddTextOption("Genitals Cover", AdvancedNudityScanner.BottomGenital_Cover)
		
	ElseIf (page == "Flashing States")
		AddHeaderOption("Curtain Risk")
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskLow)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtain)
				AddTextOption("Chest", "20%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtainT)
				AddTextOption("Chest", "55%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRisk)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtain)
				AddTextOption("Chest", "35%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtainT)
				AddTextOption("Chest", "65%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskHigh)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtain)
				AddTextOption("Chest", "50%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtainT)
				AddTextOption("Chest", "75%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskExtreme)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtain)
				AddTextOption("Chest", "65%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtainT)
				AddTextOption("Chest", "85%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskUltra)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtain)
				AddTextOption("Chest", "80%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtainT)
				AddTextOption("Chest", "95%")
			EndIf
		Else
			AddTextOption("Chest", "0%")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskLow)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtain)
				AddTextOption("Ass", "20%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtainT)
				AddTextOption("Ass", "55%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRisk)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtain)
				AddTextOption("Ass", "35%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtainT)
				AddTextOption("Ass", "65%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskHigh)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtain)
				AddTextOption("Ass", "50%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtainT)
				AddTextOption("Ass", "75%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskExtreme)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtain)
				AddTextOption("Ass", "65%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtainT)
				AddTextOption("Ass", "85%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskUltra)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtain)
				AddTextOption("Ass", "80%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtainT)
				AddTextOption("Ass", "95%")
			EndIf
		Else
			AddTextOption("Ass", "0%")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskLow)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtain)
				AddTextOption("Pelvic", "20%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtainT)
				AddTextOption("Pelvic", "55%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRisk)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtain)
				AddTextOption("Pelvic", "35%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtainT)
				AddTextOption("Pelvic", "65%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskHigh)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtain)
				AddTextOption("Pelvic", "50%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtainT)
				AddTextOption("Pelvic", "75%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskExtreme)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtain)
				AddTextOption("Pelvic", "65%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtainT)
				AddTextOption("Pelvic", "85%")
			EndIf
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskUltra)
			If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtain)
				AddTextOption("Pelvic", "80%")
			ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtainT)
				AddTextOption("Pelvic", "95%")
			EndIf
		Else
			AddTextOption("Pelvic", "0%")
		EndIf
		
		AddHeaderOption("Transparent Clothes Risk")
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ArmorTopT)
			AddTextOption("Top", "YES")
		Else
			AddTextOption("Top", "NO")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ArmorBottomT)
			AddTextOption("Bottom", "YES")
		Else
			AddTextOption("Bottom", "NO")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_BraT)
			AddTextOption("Bra", "YES")
		Else
			AddTextOption("Bra", "NO")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_UnderwearT)
			AddTextOption("Underwear", "YES")
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ThongT)
			AddTextOption("Thong", "YES")
		ElseIf AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_CString) || AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_CStringT)
			AddTextOption("CString", "YES")
		Else
			AddTextOption("Underwear", "NO")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_HotpantsT)
			AddTextOption("Hotpants", "YES")
		Else
			AddTextOption("Hotpants", "NO")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ShowgirlSkirtT)
			AddTextOption("Showgirl Skirt", "YES")
		Else
			AddTextOption("Showgirl Skirt", "NO")
		EndIf
		AddTextOption("Last Chest Curtain Roll: ", FlashScript.TopCurtainRoll)
		AddTextOption("Last Ass Curtain Roll: ", FlashScript.AssCurtainRoll)
		AddTextOption("Last Pelvic Curtain Roll: ", FlashScript.PelvicCurtainRoll)
		AddTextOption("Last CString Roll", FlashScript.CStringRoll)
		AddTextOption("Last Transparent Top Roll", FlashScript.TopTransparentRoll)
		AddTextOption("Last Transparent Bottom Roll", FlashScript.BottomTransparentRoll)
		AddTextOption("Last Transparent Bra Roll", FlashScript.BraTransparentRoll)
		AddTextOption("Last Transparent Underwear Roll", FlashScript.UnderwearTransparentRoll)
		AddTextOption("Last Transparent Hotpants Roll", FlashScript.HotpantsTransparentRoll)
		AddTextOption("Last Transparent Showgirl Skirt Roll", FlashScript.ShowgirlTransparentRoll)
		
	ElseIf (page == "Detected Keywords - Curtain Layer")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtain) ;MCM Slot 1
			AddTextOption("AND_ChestCurtain", "Yes")
		Else
			AddTextOption("AND_ChestCurtain", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtainT) ;MCM Slot 2
			AddTextOption("AND_ChestCurtainT", "Yes")
		Else
			AddTextOption("AND_ChestCurtainT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtain) ;MCM Slot 3
			AddTextOption("AND_PelvicCurtain", "Yes")
		Else
			AddTextOption("AND_PelvicCurtain", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtainT) ;MCM Slot 4
			AddTextOption("AND_PelvicCurtainT", "Yes")
		Else
			AddTextOption("AND_PelvicCurtainT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtain) ;MCM Slot 5
			AddTextOption("AND_AssCurtain", "Yes")
		Else
			AddTextOption("AND_AssCurtain", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtainT) ;MCM Slot 6
			AddTextOption("AND_AssCurtainT", "Yes")
		Else
			AddTextOption("AND_AssCurtainT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Miniskirt) ;MCM Slot 7
			AddTextOption("AND_Miniskirt", "Yes")
		Else
			AddTextOption("AND_Miniskirt", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_MiniskirtT) ;MCM Slot 8
			AddTextOption("AND_MiniskirtT", "Yes")
		Else
			AddTextOption("AND_MiniskirtT", "No")
		EndIf
	
	ElseIf (page == "Detected Keywords - Armor & Underwear Layers")
	
		AddHeaderOption("Armor Layer")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ArmorTop) ;MCM Slot 1
			AddTextOption("AND_ArmorTop", "Yes")
		Else
			AddTextOption("AND_ArmorTop", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ArmorTopT) ;MCM Slot 2
			AddTextOption("AND_ArmorTopT", "Yes")
		Else
			AddTextOption("AND_ArmorTopT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ArmorBottom) ;MCM Slot 3
			AddTextOption("AND_ArmorBottom", "Yes")
		Else
			AddTextOption("AND_ArmorBottom", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ArmorBottomT) ;MCM Slot 4
			AddTextOption("AND_ArmorBottomT", "Yes")
		Else
			AddTextOption("AND_ArmorBottomT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Hotpants) ;MCM Slot 9
			AddTextOption("AND_Hotpants", "Yes")
		Else
			AddTextOption("AND_Hotpants", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_HotpantsT) ;MCM Slot 10
			AddTextOption("AND_HotpantsT", "Yes")
		Else
			AddTextOption("AND_HotpantsT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ShowgirlSkirt) ;MCM Slot 11
			AddTextOption("AND_ShowgirlSkirt", "Yes")
		Else
			AddTextOption("AND_ShowgirlSkirt", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ShowgirlSkirtT) ;MCM Slot 12
			AddTextOption("AND_ShowgirlSkirtT", "Yes")
		Else
			AddTextOption("AND_ShowgirlSkirtT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_VaginaLeggings) ;MCM Slot 17
			AddTextOption("AND_VaginaLeggings", "Yes")
		Else
			AddTextOption("AND_VaginaLeggings", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_VaginaLeggingsT) ;MCM Slot 18
			AddTextOption("AND_VaginaLeggingsT", "Yes")
		Else
			AddTextOption("AND_VaginaLeggingsT", "No")
		EndIf
		
		AddHeaderOption("Underwear Layer")
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Bra) ;MCM Slot 5
			AddTextOption("AND_Bra", "Yes")
		Else
			AddTextOption("AND_Bra", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_BraT) ;MCM Slot 6
			AddTextOption("AND_BraT", "Yes")
		Else
			AddTextOption("AND_BraT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_CString) ;MCM Slot 7
			AddTextOption("AND_CString", "Yes")
		Else
			AddTextOption("AND_CString", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_CStringT) ;MCM Slot 8
			AddTextOption("AND_CStringT", "Yes")
		Else
			AddTextOption("AND_CStringT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Thong) ;MCM Slot 13
			AddTextOption("AND_Thong", "Yes")
		Else
			AddTextOption("AND_Thong", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ThongT) ;MCM Slot 14
			AddTextOption("AND_ThongT", "Yes")
		Else
			AddTextOption("AND_ThongT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Underwear) ;MCM Slot 15
			AddTextOption("AND_Underwear", "Yes")
		Else
			AddTextOption("AND_Underwear", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_UnderwearT) ;MCM Slot 16
			AddTextOption("AND_UnderwearT", "Yes")
		Else
			AddTextOption("AND_UnderwearT", "No")
		EndIf

	ElseIf (page == "Detected Keywords - General/Catch-All")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_CoversAll)
			AddTextOption("AND_CoversAll", "Yes")
		Else
			AddTextOption("AND_CoversAll", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Microskirt)
			AddTextOption("AND_Microskirt", "Yes")
		Else
			AddTextOption("AND_Microskirt", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_NipplePasties)
			AddTextOption("AND_NipplePasties", "Yes")
		Else
			AddTextOption("AND_NipplePasties", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_VaginaPasties)
			AddTextOption("AND_VaginaPasties", "Yes")
		Else
			AddTextOption("AND_VaginaPasties", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_NearlyNaked)
			AddTextOption("AND_NearlyNaked", "Yes")
		Else
			AddTextOption("AND_NearlyNaked", "No")
		EndIf
	
	ElseIf (page == "Detected Keywords - Flash Risk")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskUltra) ;MCM Slot 1
			AddTextOption("AND_ChestFlashRiskUltra", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskUltra", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskExtreme) ;MCM Slot 2
			AddTextOption("AND_ChestFlashRiskExtreme", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskExtreme", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskHigh) ;MCM Slot 3
			AddTextOption("AND_ChestFlashRiskHigh", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskHigh", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRisk) ;MCM Slot 4
			AddTextOption("AND_ChestFlashRisk", "Yes")
		Else
			AddTextOption("AND_ChestFlashRisk", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskLow) ;MCM Slot 5
			AddTextOption("AND_ChestFlashRiskLow", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskLow", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskExtreme) ;MCM Slot 6
			AddTextOption("AND_PelvicFlashRiskExtreme", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRiskExtreme", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskHigh) ;MCM Slot 7
			AddTextOption("AND_PelvicFlashRiskHigh", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRiskHigh", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRisk) ;MCM Slot 8
			AddTextOption("AND_PelvicFlashRisk", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRisk", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskLow) ;MCM Slot 9
			AddTextOption("AND_PelvicFlashRiskLow", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRiskLow", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskExtreme) ;MCM Slot 10
			AddTextOption("AND_AssFlashRiskExtreme", "Yes")
		Else
			AddTextOption("AND_AssFlashRiskExtreme", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskHigh) ;MCM Slot 11
			AddTextOption("AND_AssFlashRiskHigh", "Yes")
		Else
			AddTextOption("AND_AssFlashRiskHigh", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRisk) ;MCM Slot 12
			AddTextOption("AND_AssFlashRisk", "Yes")
		Else
			AddTextOption("AND_AssFlashRisk", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskLow) ;MCM Slot 13
			AddTextOption("AND_AssFlashRiskLow", "Yes")
		Else
			AddTextOption("AND_AssFlashRiskLow", "No")
		EndIf
	EndIf
EndEvent