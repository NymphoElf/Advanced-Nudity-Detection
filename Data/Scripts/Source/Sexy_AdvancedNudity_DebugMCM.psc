Scriptname Sexy_AdvancedNudity_DebugMCM extends SKI_Configbase  

Sexy_AdvancedNudity Property AdvancedNudityScanner Auto

Event OnPageReset(string page)
	SetCursorFillMode(TOP_TO_BOTTOM)
	SetCursorPosition(0)
	
	If (page == "") ;default page
	ElseIf (page == "Factions & Armor States")
		AddHeaderOption("Faction Ranks")
		AddTextOption("Nude", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_NudeActorFaction))
		AddEmptyOption()
		AddTextOption("Topless", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_ToplessFaction))
		AddTextOption("Bottomless", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_BottomlessFaction))
		AddEmptyOption()
		AddTextOption("Showing Bra", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_ShowingBraFaction))
		AddTextOption("Showing Chest", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_ShowingChestFaction))
		AddEmptyOption()
		AddTextOption("Showing Underwear", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_ShowingUnderwearFaction))
		AddTextOption("Showing Genitals", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_ShowingGenitalsFaction))
		AddTextOption("Showing Ass", AdvancedNudityScanner.PlayerRef.GetFactionRank(AdvancedNudityScanner.Sexy_ShowingAssFaction))
		
		AddHeaderOption("Armor Layer States")
		AddTextOption("Chest Curtain Layer", AdvancedNudityScanner.Player_Top_CurtainLayer_State)
		AddTextOption("Shirt Layer", AdvancedNudityScanner.Player_Top_ArmorLayer_State)
		AddTextOption("Bra Layer", AdvancedNudityScanner.Player_Top_BraLayer_State)
		AddEmptyOption()
		AddTextOption("Pelvic Curtain Layer", AdvancedNudityScanner.Player_Bottom_FrontCurtainLayer_State)
		AddTextOption("Ass Curtain Layer", AdvancedNudityScanner.Player_Bottom_AssCurtainLayer_State)
		AddTextOption("Pants Layer", AdvancedNudityScanner.Player_Bottom_ArmorLayer_State)
		AddTextOption("Underwear Layer", AdvancedNudityScanner.Player_Bottom_UnderwearLayer_State)
		
	ElseIf (page == "Flashing States")
		AddHeaderOption("Flash Risk")
		AddTextOption("Chest", AdvancedNudityScanner.Player_ChestFlashRisk)
		AddTextOption("Ass", AdvancedNudityScanner.Player_AssFlashRisk)
		AddTextOption("Genitals", AdvancedNudityScanner.Player_GenitalFlashRisk)
		AddEmptyOption()
		AddHeaderOption("Is Player Flashing?")
		AddTextOption("Chest", AdvancedNudityScanner.Player_IsFlashingChest)
		AddTextOption("Ass", AdvancedNudityScanner.Player_IsFlashingAss)
		AddTextOption("Genitals", AdvancedNudityScanner.Player_IsFlashingGenitals)
		AddTextOption("CString", AdvancedNudityScanner.Player_CStringNotSeen)
		AddEmptyOption()
		AddTextOption("Last Chest Flash Roll: ", AdvancedNudityScanner.ChestFlashRoll)
		AddTextOption("Last Ass Flash Roll: ", AdvancedNudityScanner.AssFlashRoll)
		AddTextOption("Last Genital Flash Roll: ", AdvancedNudityScanner.GenitalFlashRoll)
		AddTextOption("Last CString Flash Roll", AdvancedNudityScanner.CStringFlashRoll)
		
	ElseIf (page == "Detected Keywords - Curtain Layer")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ChestCurtain) ;MCM Slot 1
			AddTextOption("Sexy_ChestCurtain", "Yes")
		Else
			AddTextOption("Sexy_ChestCurtain", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ChestCurtainT) ;MCM Slot 2
			AddTextOption("Sexy_ChestCurtainT", "Yes")
		Else
			AddTextOption("Sexy_ChestCurtainT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_PelvicCurtain) ;MCM Slot 3
			AddTextOption("Sexy_PelvicCurtain", "Yes")
		Else
			AddTextOption("Sexy_PelvicCurtain", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_PelvicCurtainT) ;MCM Slot 4
			AddTextOption("Sexy_PelvicCurtainT", "Yes")
		Else
			AddTextOption("Sexy_PelvicCurtainT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_AssCurtain) ;MCM Slot 5
			AddTextOption("Sexy_AssCurtain", "Yes")
		Else
			AddTextOption("Sexy_AssCurtain", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_AssCurtainT) ;MCM Slot 6
			AddTextOption("Sexy_AssCurtainT", "Yes")
		Else
			AddTextOption("Sexy_AssCurtainT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_Miniskirt) ;MCM Slot 7
			AddTextOption("Sexy_Miniskirt", "Yes")
		Else
			AddTextOption("Sexy_Miniskirt", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_MiniskirtT) ;MCM Slot 8
			AddTextOption("Sexy_MiniskirtT", "Yes")
		Else
			AddTextOption("Sexy_MiniskirtT", "No")
		EndIf
	
	ElseIf (page == "Detected Keywords - Armor & Underwear Layers")
	
		AddHeaderOption("Armor Layer")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ArmorTop) ;MCM Slot 1
			AddTextOption("Sexy_ArmorTop", "Yes")
		Else
			AddTextOption("Sexy_ArmorTop", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ArmorTopT) ;MCM Slot 2
			AddTextOption("Sexy_ArmorTopT", "Yes")
		Else
			AddTextOption("Sexy_ArmorTopT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ArmorBottom) ;MCM Slot 3
			AddTextOption("Sexy_ArmorBottom", "Yes")
		Else
			AddTextOption("Sexy_ArmorBottom", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ArmorBottomT) ;MCM Slot 4
			AddTextOption("Sexy_ArmorBottomT", "Yes")
		Else
			AddTextOption("Sexy_ArmorBottomT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_Hotpants) ;MCM Slot 9
			AddTextOption("Sexy_Hotpants", "Yes")
		Else
			AddTextOption("Sexy_Hotpants", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_HotpantsT) ;MCM Slot 10
			AddTextOption("Sexy_HotpantsT", "Yes")
		Else
			AddTextOption("Sexy_HotpantsT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ShowgirlSkirt) ;MCM Slot 11
			AddTextOption("Sexy_ShowgirlSkirt", "Yes")
		Else
			AddTextOption("Sexy_ShowgirlSkirt", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ShowgirlSkirtT) ;MCM Slot 12
			AddTextOption("Sexy_ShowgirlSkirtT", "Yes")
		Else
			AddTextOption("Sexy_ShowgirlSkirtT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_VaginaLeggings) ;MCM Slot 17
			AddTextOption("Sexy_VaginaLeggings", "Yes")
		Else
			AddTextOption("Sexy_VaginaLeggings", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_VaginaLeggingsT) ;MCM Slot 18
			AddTextOption("Sexy_VaginaLeggingsT", "Yes")
		Else
			AddTextOption("Sexy_VaginaLeggingsT", "No")
		EndIf
		
		AddHeaderOption("Underwear Layer")
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_Bra) ;MCM Slot 5
			AddTextOption("Sexy_Bra", "Yes")
		Else
			AddTextOption("Sexy_Bra", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_BraT) ;MCM Slot 6
			AddTextOption("Sexy_BraT", "Yes")
		Else
			AddTextOption("Sexy_BraT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_CString) ;MCM Slot 7
			AddTextOption("Sexy_CString", "Yes")
		Else
			AddTextOption("Sexy_CString", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_CStringT) ;MCM Slot 8
			AddTextOption("Sexy_CStringT", "Yes")
		Else
			AddTextOption("Sexy_CStringT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_Thong) ;MCM Slot 13
			AddTextOption("Sexy_Thong", "Yes")
		Else
			AddTextOption("Sexy_Thong", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ThongT) ;MCM Slot 14
			AddTextOption("Sexy_ThongT", "Yes")
		Else
			AddTextOption("Sexy_ThongT", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_Underwear) ;MCM Slot 15
			AddTextOption("Sexy_Underwear", "Yes")
		Else
			AddTextOption("Sexy_Underwear", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_UnderwearT) ;MCM Slot 16
			AddTextOption("Sexy_UnderwearT", "Yes")
		Else
			AddTextOption("Sexy_UnderwearT", "No")
		EndIf

	ElseIf (page == "Detected Keywords - General/Catch-All")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_CoversAll)
			AddTextOption("Sexy_CoversAll", "Yes")
		Else
			AddTextOption("Sexy_CoversAll", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_Microskirt)
			AddTextOption("Sexy_Microskirt", "Yes")
		Else
			AddTextOption("Sexy_Microskirt", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_NipplePasties)
			AddTextOption("Sexy_NipplePasties", "Yes")
		Else
			AddTextOption("Sexy_NipplePasties", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_VaginaPasties)
			AddTextOption("Sexy_VaginaPasties", "Yes")
		Else
			AddTextOption("Sexy_VaginaPasties", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_NearlyNaked)
			AddTextOption("Sexy_NearlyNaked", "Yes")
		Else
			AddTextOption("Sexy_NearlyNaked", "No")
		EndIf
	
	ElseIf (page == "Detected Keywords - Flash Risk")
	
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ChestFlashRiskUltra) ;MCM Slot 1
			AddTextOption("Sexy_ChestFlashRiskUltra", "Yes")
		Else
			AddTextOption("Sexy_ChestFlashRiskUltra", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ChestFlashRiskExtreme) ;MCM Slot 2
			AddTextOption("Sexy_ChestFlashRiskExtreme", "Yes")
		Else
			AddTextOption("Sexy_ChestFlashRiskExtreme", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ChestFlashRiskHigh) ;MCM Slot 3
			AddTextOption("Sexy_ChestFlashRiskHigh", "Yes")
		Else
			AddTextOption("Sexy_ChestFlashRiskHigh", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ChestFlashRisk) ;MCM Slot 4
			AddTextOption("Sexy_ChestFlashRisk", "Yes")
		Else
			AddTextOption("Sexy_ChestFlashRisk", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_ChestFlashRiskLow) ;MCM Slot 5
			AddTextOption("Sexy_ChestFlashRiskLow", "Yes")
		Else
			AddTextOption("Sexy_ChestFlashRiskLow", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_GenitalFlashRiskExtreme) ;MCM Slot 6
			AddTextOption("Sexy_GenitalFlashRiskExtreme", "Yes")
		Else
			AddTextOption("Sexy_GenitalFlashRiskExtreme", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_GenitalFlashRiskHigh) ;MCM Slot 7
			AddTextOption("Sexy_GenitalFlashRiskHigh", "Yes")
		Else
			AddTextOption("Sexy_GenitalFlashRiskHigh", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_GenitalFlashRisk) ;MCM Slot 8
			AddTextOption("Sexy_GenitalFlashRisk", "Yes")
		Else
			AddTextOption("Sexy_GenitalFlashRisk", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_GenitalFlashRiskLow) ;MCM Slot 9
			AddTextOption("Sexy_GenitalFlashRiskLow", "Yes")
		Else
			AddTextOption("Sexy_GenitalFlashRiskLow", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_AssFlashRiskExtreme) ;MCM Slot 10
			AddTextOption("Sexy_AssFlashRiskExtreme", "Yes")
		Else
			AddTextOption("Sexy_AssFlashRiskExtreme", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_AssFlashRiskHigh) ;MCM Slot 11
			AddTextOption("Sexy_AssFlashRiskHigh", "Yes")
		Else
			AddTextOption("Sexy_AssFlashRiskHigh", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_AssFlashRisk) ;MCM Slot 12
			AddTextOption("Sexy_AssFlashRisk", "Yes")
		Else
			AddTextOption("Sexy_AssFlashRisk", "No")
		EndIf
		
		If AdvancedNudityScanner.PlayerRef.WornHasKeyword(AdvancedNudityScanner.Sexy_AssFlashRiskLow) ;MCM Slot 13
			AddTextOption("Sexy_AssFlashRiskLow", "Yes")
		Else
			AddTextOption("Sexy_AssFlashRiskLow", "No")
		EndIf
	EndIf
EndEvent