Scriptname Advanced_Nudity_Detection_DebugMCM extends SKI_Configbase  

Actor Property PlayerRef Auto

Faction Property AND_ShowingAssFaction Auto
Faction Property AND_ShowingChestFaction Auto
Faction Property AND_ShowingGenitalsFaction Auto 
Faction Property AND_ShowingBraFaction Auto
Faction Property AND_ShowingUnderwearFaction Auto
Faction Property AND_ToplessFaction Auto
Faction Property AND_BottomlessFaction Auto
Faction Property AND_NudeActorFaction Auto

Keyword Property AND_ArmorTop Auto
Keyword Property AND_ArmorTopT Auto
Keyword Property AND_ArmorBottom Auto
Keyword Property AND_ArmorBottomT Auto
Keyword Property AND_Bra Auto
Keyword Property AND_BraT Auto
Keyword Property AND_CString Auto
Keyword Property AND_CStringT Auto
Keyword Property AND_Hotpants Auto
Keyword Property AND_HotpantsT Auto
Keyword Property AND_Microskirt Auto
Keyword Property AND_Miniskirt Auto
Keyword Property AND_MiniskirtT Auto
Keyword Property AND_ShowgirlSkirt Auto
Keyword Property AND_ShowgirlSkirtT Auto
Keyword Property AND_Thong Auto
Keyword Property AND_ThongT Auto
Keyword Property AND_Underwear Auto
Keyword Property AND_UnderwearT Auto

Keyword Property AND_ArmorBottom_NoCover Auto
Keyword Property AND_ArmorTop_NoCover Auto
Keyword Property AND_Bra_NoCover Auto
Keyword Property AND_Underwear_NoCover Auto
Keyword Property AND_Thong_NoCover Auto

Keyword Property AND_NearlyNaked Auto
Keyword Property AND_NipplePasties Auto
Keyword Property AND_VaginaPasties Auto

Keyword Property AND_AssCurtain Auto
Keyword Property AND_AssCurtainT Auto
Keyword Property AND_ChestCurtain Auto
Keyword Property AND_ChestCurtainT Auto
Keyword Property AND_PelvicCurtain Auto
Keyword Property AND_PelvicCurtainT Auto

Keyword Property AND_CoversAll Auto

Keyword Property AND_ChestFlashRiskLow Auto
Keyword Property AND_ChestFlashRisk Auto
Keyword Property AND_ChestFlashRiskHigh Auto
Keyword Property AND_ChestFlashRiskExtreme Auto
Keyword Property AND_ChestFlashRiskUltra Auto
Keyword Property AND_PelvicFlashRiskLow Auto
Keyword Property AND_PelvicFlashRisk Auto
Keyword Property AND_PelvicFlashRiskHigh Auto
Keyword Property AND_PelvicFlashRiskExtreme Auto
Keyword Property AND_PelvicFlashRiskUltra Auto
Keyword Property AND_AssFlashRiskLow Auto
Keyword Property AND_AssFlashRisk Auto
Keyword Property AND_AssFlashRiskHigh Auto
Keyword Property AND_AssFlashRiskExtreme Auto
Keyword Property AND_AssFlashRiskUltra Auto

GlobalVariable Property TopCurtainLayer_Cover Auto
GlobalVariable Property BraLayer_Cover Auto
GlobalVariable Property Chest_Cover Auto

GlobalVariable Property PelvicCurtain_Cover Auto
GlobalVariable Property AssCurtain_Cover Auto
GlobalVariable Property BottomGenital_Cover Auto
GlobalVariable Property BottomAss_Cover Auto
GlobalVariable Property Underwear_Cover Auto

GlobalVariable Property TopCurtainRoll Auto
GlobalVariable Property PelvicCurtainRoll Auto
GlobalVariable Property AssCurtainRoll Auto
GlobalVariable Property CStringRoll Auto
GlobalVariable Property TopTransparentRoll Auto
GlobalVariable Property BottomTransparentRoll Auto
GlobalVariable Property BraTransparentRoll Auto
GlobalVariable Property UnderwearTransparentRoll Auto
GlobalVariable Property HotpantsTransparentRoll Auto
GlobalVariable Property ShowgirlTransparentRoll Auto

Event OnConfigInit()
	Utility.Wait(1)
	RegisterForSingleUpdate(1)
	Debug.Notification("AND Debug MCM Initializing...")
EndEvent

Event OnUpdate()
	InstallMCM()
	Debug.Notification("AND Debug MCM Ready!")
EndEvent 

Function InstallMCM()
	ModName = "AND Debug"
	Pages = New String[5]
	Pages[0] = "Factions and Armor States"
	Pages[1] = "Flashing States"
	Pages[2] = "Detected Keywords - Curtain"
	Pages[3] = "Detected Keywords - Armor & Underwear"
	Pages[4] = "Detected Keywords - General/Catch-All"
	Pages[5] = "Detected Keywords - Flash Risk"
EndFunction

Event OnConfigOpen()
	Pages = New String[5]
	Pages[0] = "Factions and Armor States"
	Pages[1] = "Flashing States"
	Pages[2] = "Detected Keywords - Curtain"
	Pages[3] = "Detected Keywords - Armor & Underwear"
	Pages[4] = "Detected Keywords - General/Catch-All"
	Pages[5] = "Detected Keywords - Flash Risk"
EndEvent

Event OnPageReset(string page)
	SetCursorFillMode(TOP_TO_BOTTOM)
	SetCursorPosition(0)
	
	If (page == "" || page == "Factions and Armor States") ;default page
		AddHeaderOption("Faction Ranks")
		AddTextOption("Nude", PlayerRef.GetFactionRank(AND_NudeActorFaction))
		AddTextOption("Topless", PlayerRef.GetFactionRank(AND_ToplessFaction))
		AddTextOption("Bottomless", PlayerRef.GetFactionRank(AND_BottomlessFaction))
		AddTextOption("Showing Bra", PlayerRef.GetFactionRank(AND_ShowingBraFaction))
		AddTextOption("Showing Chest", PlayerRef.GetFactionRank(AND_ShowingChestFaction))
		AddTextOption("Showing Underwear", PlayerRef.GetFactionRank(AND_ShowingUnderwearFaction))
		AddTextOption("Showing Genitals", PlayerRef.GetFactionRank(AND_ShowingGenitalsFaction))
		AddTextOption("Showing Ass", PlayerRef.GetFactionRank(AND_ShowingAssFaction))
		
		AddHeaderOption("Armor Layer States")
		If TopCurtainLayer_Cover.GetValue() == 1 ;True
			AddTextOption("Top Curtain", "Covering")
		Else
			AddTextOption("Top Curtain", "Not Covering")
		EndIf
		
		If BraLayer_Cover.GetValue() == 1 ;True
			AddTextOption("Bra", "Not Visible")
		Else
			AddTextOption("Bra", "Visible")
		EndIf
			
		If Chest_Cover.GetValue() == 1 ;True
			AddTextOption("Chest", "Not Visible")
		Else
			AddTextOption("Chest", "Visible")
		EndIf
			
		If PelvicCurtain_Cover.GetValue() == 1 ;True
			AddTextOption("Pelvic Curtain", "Covering")
		Else
			AddTextOption("Pelvic Curtain", "Not Covering")
		EndIf
			
		If AssCurtain_Cover.GetValue() == 1 ;True
			AddTextOption("Ass Curtain", "Covering")
		Else
			AddTextOption("Ass Curtain", "Not Covering")
		EndIf
		
		If Underwear_Cover.GetValue() == 1 ;True
			AddTextOption("Underwear", "Not Visible")
		Else
			AddTextOption("Underwear", "Visible")
		EndIf
		
		If BottomAss_Cover.GetValue() == 1 ;True
			AddTextOption("Ass", "Not Visible")
		Else
			AddTextOption("Ass", "Visible")
		EndIf
			
		If BottomGenital_Cover.GetValue() == 1 ;True
			AddTextOption("Genitals", "Not Visible")
		Else
			AddTextOption("Genitals", "Visible")
		EndIf
		
	ElseIf (page == "Flashing States")
		AddHeaderOption("Curtain Risk")
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskLow)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", "20%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", "55%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRisk)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", "35%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", "65%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskHigh)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", "50%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", "75%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskExtreme)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", "65%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", "85%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskUltra)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", "80%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", "95%")
			EndIf
		Else
			AddTextOption("Chest", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskLow)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", "20%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", "55%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRisk)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", "35%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", "65%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskHigh)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", "50%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", "75%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskExtreme)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", "65%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", "85%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskUltra)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", "80%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", "95%")
			EndIf
		Else
			AddTextOption("Ass", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskLow)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", "20%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", "55%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRisk)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", "35%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", "65%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskHigh)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", "50%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", "75%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskExtreme)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", "65%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", "85%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskUltra)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", "80%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", "95%")
			EndIf
		Else
			AddTextOption("Pelvic", "0%")
		EndIf
		
		AddHeaderOption("Transparent Clothes Risk")
		If PlayerRef.WornHasKeyword(AND_ArmorTopT)
			AddTextOption("Top", "YES")
		Else
			AddTextOption("Top", "NO")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ArmorBottomT)
			AddTextOption("Bottom", "YES")
		Else
			AddTextOption("Bottom", "NO")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_BraT)
			AddTextOption("Bra", "YES")
		Else
			AddTextOption("Bra", "NO")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_UnderwearT)
			AddTextOption("Underwear", "YES")
		ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
			AddTextOption("Thong", "YES")
		ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
			AddTextOption("CString", "YES")
		Else
			AddTextOption("Underwear", "NO")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_HotpantsT)
			AddTextOption("Hotpants", "YES")
		Else
			AddTextOption("Hotpants", "NO")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
			AddTextOption("Showgirl Skirt", "YES")
		Else
			AddTextOption("Showgirl Skirt", "NO")
		EndIf
		AddTextOption("Last Chest Curtain Roll: ", TopCurtainRoll.GetValue())
		AddTextOption("Last Ass Curtain Roll: ", AssCurtainRoll.GetValue())
		AddTextOption("Last Pelvic Curtain Roll: ", PelvicCurtainRoll.GetValue())
		AddTextOption("Last CString Roll", CStringRoll.GetValue())
		AddTextOption("Last Transparent Top Roll", TopTransparentRoll.GetValue())
		AddTextOption("Last Transparent Bottom Roll", BottomTransparentRoll.GetValue())
		AddTextOption("Last Transparent Bra Roll", BraTransparentRoll.GetValue())
		AddTextOption("Last Transparent Underwear Roll", UnderwearTransparentRoll.GetValue())
		AddTextOption("Last Transparent Hotpants Roll", HotpantsTransparentRoll.GetValue())
		AddTextOption("Last Transparent Showgirl Skirt Roll", ShowgirlTransparentRoll.GetValue())
		
	ElseIf (page == "Detected Keywords - Curtain")
	
		If PlayerRef.WornHasKeyword(AND_ChestCurtain)
			AddTextOption("AND_ChestCurtain", "Yes")
		Else
			AddTextOption("AND_ChestCurtain", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ChestCurtainT)
			AddTextOption("AND_ChestCurtainT", "Yes")
		Else
			AddTextOption("AND_ChestCurtainT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
			AddTextOption("AND_PelvicCurtain", "Yes")
		Else
			AddTextOption("AND_PelvicCurtain", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
			AddTextOption("AND_PelvicCurtainT", "Yes")
		Else
			AddTextOption("AND_PelvicCurtainT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssCurtain)
			AddTextOption("AND_AssCurtain", "Yes")
		Else
			AddTextOption("AND_AssCurtain", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssCurtainT)
			AddTextOption("AND_AssCurtainT", "Yes")
		Else
			AddTextOption("AND_AssCurtainT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Miniskirt)
			AddTextOption("AND_Miniskirt", "Yes")
		Else
			AddTextOption("AND_Miniskirt", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_MiniskirtT)
			AddTextOption("AND_MiniskirtT", "Yes")
		Else
			AddTextOption("AND_MiniskirtT", "No")
		EndIf
	
	ElseIf (page == "Detected Keywords - Armor & Underwear")
	
		AddHeaderOption("Armor Layer")
	
		If PlayerRef.WornHasKeyword(AND_ArmorTop)
			AddTextOption("AND_ArmorTop", "Yes")
		Else
			AddTextOption("AND_ArmorTop", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ArmorTopT)
			AddTextOption("AND_ArmorTopT", "Yes")
		Else
			AddTextOption("AND_ArmorTopT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ArmorTop_NoCover)
			AddTextOption("AND_ArmorTop_NoCover", "Yes")
		Else
			AddTextOption("AND_ArmorTop_NoCover", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ArmorBottom)
			AddTextOption("AND_ArmorBottom", "Yes")
		Else
			AddTextOption("AND_ArmorBottom", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ArmorBottomT)
			AddTextOption("AND_ArmorBottomT", "Yes")
		Else
			AddTextOption("AND_ArmorBottomT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ArmorBottom_NoCover)
			AddTextOption("AND_ArmorBottom_NoCover", "Yes")
		Else
			AddTextOption("AND_ArmorBottom_NoCover", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Hotpants)
			AddTextOption("AND_Hotpants", "Yes")
		Else
			AddTextOption("AND_Hotpants", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_HotpantsT)
			AddTextOption("AND_HotpantsT", "Yes")
		Else
			AddTextOption("AND_HotpantsT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ShowgirlSkirt)
			AddTextOption("AND_ShowgirlSkirt", "Yes")
		Else
			AddTextOption("AND_ShowgirlSkirt", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
			AddTextOption("AND_ShowgirlSkirtT", "Yes")
		Else
			AddTextOption("AND_ShowgirlSkirtT", "No")
		EndIf
		
		AddHeaderOption("Underwear Layer")
		
		If PlayerRef.WornHasKeyword(AND_Bra)
			AddTextOption("AND_Bra", "Yes")
		Else
			AddTextOption("AND_Bra", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_BraT)
			AddTextOption("AND_BraT", "Yes")
		Else
			AddTextOption("AND_BraT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Bra_NoCover)
			AddTextOption("AND_Bra_NoCover", "Yes")
		Else
			AddTextOption("AND_Bra_NoCover", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_CString)
			AddTextOption("AND_CString", "Yes")
		Else
			AddTextOption("AND_CString", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_CStringT)
			AddTextOption("AND_CStringT", "Yes")
		Else
			AddTextOption("AND_CStringT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Thong)
			AddTextOption("AND_Thong", "Yes")
		Else
			AddTextOption("AND_Thong", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ThongT)
			AddTextOption("AND_ThongT", "Yes")
		Else
			AddTextOption("AND_ThongT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Thong_NoCover)
			AddTextOption("AND_Thong_NoCover", "Yes")
		Else
			AddTextOption("AND_Thong_NoCover", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Underwear)
			AddTextOption("AND_Underwear", "Yes")
		Else
			AddTextOption("AND_Underwear", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_UnderwearT)
			AddTextOption("AND_UnderwearT", "Yes")
		Else
			AddTextOption("AND_UnderwearT", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
			AddTextOption("AND_Underwear_NoCover", "Yes")
		Else
			AddTextOption("AND_Underwear_NoCover", "No")
		EndIf

	ElseIf (page == "Detected Keywords - General/Catch-All")
	
		If PlayerRef.WornHasKeyword(AND_CoversAll)
			AddTextOption("AND_CoversAll", "Yes")
		Else
			AddTextOption("AND_CoversAll", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_Microskirt)
			AddTextOption("AND_Microskirt", "Yes")
		Else
			AddTextOption("AND_Microskirt", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_NipplePasties)
			AddTextOption("AND_NipplePasties", "Yes")
		Else
			AddTextOption("AND_NipplePasties", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_VaginaPasties)
			AddTextOption("AND_VaginaPasties", "Yes")
		Else
			AddTextOption("AND_VaginaPasties", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_NearlyNaked)
			AddTextOption("AND_NearlyNaked", "Yes")
		Else
			AddTextOption("AND_NearlyNaked", "No")
		EndIf
	
	ElseIf (page == "Detected Keywords - Flash Risk")
	
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskUltra)
			AddTextOption("AND_ChestFlashRiskUltra", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskUltra", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskExtreme)
			AddTextOption("AND_ChestFlashRiskExtreme", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskExtreme", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskHigh)
			AddTextOption("AND_ChestFlashRiskHigh", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskHigh", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ChestFlashRisk)
			AddTextOption("AND_ChestFlashRisk", "Yes")
		Else
			AddTextOption("AND_ChestFlashRisk", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskLow)
			AddTextOption("AND_ChestFlashRiskLow", "Yes")
		Else
			AddTextOption("AND_ChestFlashRiskLow", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskExtreme)
			AddTextOption("AND_PelvicFlashRiskExtreme", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRiskExtreme", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskHigh)
			AddTextOption("AND_PelvicFlashRiskHigh", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRiskHigh", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRisk)
			AddTextOption("AND_PelvicFlashRisk", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRisk", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskLow)
			AddTextOption("AND_PelvicFlashRiskLow", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRiskLow", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskExtreme)
			AddTextOption("AND_AssFlashRiskExtreme", "Yes")
		Else
			AddTextOption("AND_AssFlashRiskExtreme", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskHigh)
			AddTextOption("AND_AssFlashRiskHigh", "Yes")
		Else
			AddTextOption("AND_AssFlashRiskHigh", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssFlashRisk)
			AddTextOption("AND_AssFlashRisk", "Yes")
		Else
			AddTextOption("AND_AssFlashRisk", "No")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskLow)
			AddTextOption("AND_AssFlashRiskLow", "Yes")
		Else
			AddTextOption("AND_AssFlashRiskLow", "No")
		EndIf
	EndIf
EndEvent