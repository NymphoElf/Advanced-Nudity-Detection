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

GlobalVariable Property TopCurtainOddsLow Auto
GlobalVariable Property TopCurtainOdds Auto
GlobalVariable Property TopCurtainOddsHigh Auto
GlobalVariable Property TopCurtainOddsExtreme Auto
GlobalVariable Property TopCurtainOddsUltra Auto
GlobalVariable Property TransparentTopCurtainOddsLow Auto
GlobalVariable Property TransparentTopCurtainOdds Auto
GlobalVariable Property TransparentTopCurtainOddsHigh Auto
GlobalVariable Property TransparentTopCurtainOddsExtreme Auto
GlobalVariable Property TransparentTopCurtainOddsUltra Auto
GlobalVariable Property PelvicCurtainOddsLow Auto
GlobalVariable Property PelvicCurtainOdds Auto
GlobalVariable Property PelvicCurtainOddsHigh Auto
GlobalVariable Property PelvicCurtainOddsExtreme Auto
GlobalVariable Property PelvicCurtainOddsUltra Auto
GlobalVariable Property TransparentPelvicCurtainOddsLow Auto
GlobalVariable Property TransparentPelvicCurtainOdds Auto
GlobalVariable Property TransparentPelvicCurtainOddsHigh Auto
GlobalVariable Property TransparentPelvicCurtainOddsExtreme Auto
GlobalVariable Property TransparentPelvicCurtainOddsUltra Auto
GlobalVariable Property AssCurtainOddsLow Auto
GlobalVariable Property AssCurtainOdds Auto
GlobalVariable Property AssCurtainOddsHigh Auto
GlobalVariable Property AssCurtainOddsExtreme Auto
GlobalVariable Property AssCurtainOddsUltra Auto
GlobalVariable Property TransparentAssCurtainOddsLow Auto
GlobalVariable Property TransparentAssCurtainOdds Auto
GlobalVariable Property TransparentAssCurtainOddsHigh Auto
GlobalVariable Property TransparentAssCurtainOddsExtreme Auto
GlobalVariable Property TransparentAssCurtainOddsUltra Auto
GlobalVariable Property CStringOdds Auto
GlobalVariable Property TransparentCStringOdds Auto
GlobalVariable Property TransparentTopArmorOdds Auto
GlobalVariable Property TransparentBottomArmorOdds Auto
GlobalVariable Property TransparentBraOdds Auto
GlobalVariable Property TransparentUnderwearOdds Auto
GlobalVariable Property TransparentHotpantsOdds Auto
GlobalVariable Property TransparentShowgirlSkirtOdds Auto

Event OnConfigInit()
	Utility.Wait(1)
	RegisterForSingleUpdate(1)
	Debug.Notification("Advanced Nudity MCM Initializing...")
	TopCurtainOddsLow.SetValue(20)
	TopCurtainOdds.SetValue(35)
	TopCurtainOddsHigh.SetValue(50)
	TopCurtainOddsExtreme.SetValue(65)
	TopCurtainOddsUltra.SetValue(80)
	TransparentTopCurtainOddsLow.SetValue(55)
	TransparentTopCurtainOdds.SetValue(65)
	TransparentTopCurtainOddsHigh.SetValue(75)
	TransparentTopCurtainOddsExtreme.SetValue(85)
	TransparentTopCurtainOddsUltra.SetValue(95)
	PelvicCurtainOddsLow.SetValue(20)
	PelvicCurtainOdds.SetValue(35)
	PelvicCurtainOddsHigh.SetValue(50)
	PelvicCurtainOddsExtreme.SetValue(65)
	PelvicCurtainOddsUltra.SetValue(80)
	TransparentPelvicCurtainOddsLow.SetValue(55)
	TransparentPelvicCurtainOdds.SetValue(65)
	TransparentPelvicCurtainOddsHigh.SetValue(75)
	TransparentPelvicCurtainOddsExtreme.SetValue(85)
	TransparentPelvicCurtainOddsUltra.SetValue(95)
	AssCurtainOddsLow.SetValue(20)
	AssCurtainOdds.SetValue(35)
	AssCurtainOddsHigh.SetValue(50)
	AssCurtainOddsExtreme.SetValue(65)
	AssCurtainOddsUltra.SetValue(80)
	TransparentAssCurtainOddsLow.SetValue(55)
	TransparentAssCurtainOdds.SetValue(65)
	TransparentAssCurtainOddsHigh.SetValue(75)
	TransparentAssCurtainOddsExtreme.SetValue(85)
	TransparentAssCurtainOddsUltra.SetValue(95)
	CStringOdds.SetValue(70)
	TransparentCStringOdds.SetValue(90)
	TransparentTopArmorOdds.SetValue(50)
	TransparentBottomArmorOdds.SetValue(50)
	TransparentBraOdds.SetValue(50)
	TransparentUnderwearOdds.SetValue(50)
	TransparentHotpantsOdds.SetValue(50)
	TransparentShowgirlSkirtOdds.SetValue(50)
EndEvent

Event OnUpdate()
	InstallMCM()
	Debug.Notification("Advanced Nudity MCM Ready!")
EndEvent 

Function InstallMCM()
	ModName = "Advanced Nudity"
	Pages = New String[7]
	Pages[0] = "Factions and Armor States"
	Pages[1] = "Flashing States"
	Pages[2] = "Detected Keywords - Curtain"
	Pages[3] = "Detected Keywords - Armor & Underwear"
	Pages[4] = "Detected Keywords - General/Catch-All"
	Pages[5] = "Detected Keywords - Flash Risk"
	Pages[6] = "Flash Chance"
EndFunction

Event OnConfigOpen()
	Pages = New String[7]
	Pages[0] = "Factions and Armor States"
	Pages[1] = "Flashing States"
	Pages[2] = "Detected Keywords - Curtain"
	Pages[3] = "Detected Keywords - Armor & Underwear"
	Pages[4] = "Detected Keywords - General/Catch-All"
	Pages[5] = "Detected Keywords - Flash Risk"
	Pages[6] = "Flash Chance"
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
				AddTextOption("Chest", (TopCurtainOddsLow.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", (TransparentTopCurtainOddsLow.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRisk)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", (TopCurtainOdds.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", (TransparentTopArmorOdds.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskHigh)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", (TopCurtainOddsHigh.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", (TransparentTopCurtainOddsHigh.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskExtreme)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", (TopCurtainOddsExtreme.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", (TransparentTopCurtainOddsExtreme.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskUltra)
			If PlayerRef.WornHasKeyword(AND_ChestCurtain)
				AddTextOption("Chest", (TopCurtainOddsUltra.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
				AddTextOption("Chest", (TransparentTopCurtainOddsUltra.GetValue() as Int) as String + "%")
			EndIf
		Else
			AddTextOption("Chest", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskLow)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", (AssCurtainOddsLow.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", (TransparentAssCurtainOddsLow.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRisk)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", (AssCurtainOdds.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", (TransparentAssCurtainOdds.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskHigh)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", (AssCurtainOddsHigh.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", (TransparentAssCurtainOddsHigh.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskExtreme)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", (AssCurtainOddsExtreme.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", (TransparentAssCurtainOddsExtreme.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskUltra)
			If PlayerRef.WornHasKeyword(AND_AssCurtain)
				AddTextOption("Ass", (AssCurtainOddsUltra.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT)
				AddTextOption("Ass", (TransparentAssCurtainOddsUltra.GetValue() as Int) as String + "%")
			EndIf
		Else
			AddTextOption("Ass", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskLow)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", (PelvicCurtainOddsLow.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", (TransparentPelvicCurtainOddsLow.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRisk)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", (PelvicCurtainOdds.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", (TransparentPelvicCurtainOdds.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskHigh)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", (PelvicCurtainOddsHigh.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", (TransparentPelvicCurtainOddsHigh.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskExtreme)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", (PelvicCurtainOddsExtreme.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", (TransparentPelvicCurtainOddsExtreme.GetValue() as Int) as String + "%")
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskUltra)
			If PlayerRef.WornHasKeyword(AND_PelvicCurtain)
				AddTextOption("Pelvic", (PelvicCurtainOddsUltra.GetValue() as Int) as String + "%")
			ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT)
				AddTextOption("Pelvic", (TransparentPelvicCurtainOddsUltra.GetValue() as Int) as String + "%")
			EndIf
		Else
			AddTextOption("Pelvic", "0%")
		EndIf
		
		AddHeaderOption("Transparent Clothes Risk")
		If PlayerRef.WornHasKeyword(AND_ArmorTopT) 
			AddTextOption("Top", (TransparentTopArmorOdds.GetValue() as Int) as String + "%")
		Else
			AddTextOption("Top", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ArmorBottomT)
			AddTextOption("Bottom", (TransparentBottomArmorOdds.GetValue() as Int) as String + "%")
		Else
			AddTextOption("Bottom", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_BraT)
			AddTextOption("Bra", (TransparentBraOdds.GetValue() as Int) as String + "%")
		Else
			AddTextOption("Bra", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_UnderwearT)
			AddTextOption("Underwear", (TransparentUnderwearOdds.GetValue() as Int) as String + "%")
		ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
			AddTextOption("Thong", (TransparentUnderwearOdds.GetValue() as Int) as String + "%")
		ElseIf PlayerRef.WornHasKeyword(AND_CString)
			AddTextOption("CString", (CStringOdds.GetValue() as Int) as String + "%")
		ElseIf PlayerRef.WornHasKeyword(AND_CStringT)
			AddTextOption("CString", (TransparentCStringOdds.GetValue() as Int) as String + "%")
		Else
			AddTextOption("Underwear", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_HotpantsT)
			AddTextOption("Hotpants", (TransparentHotpantsOdds.GetValue() as Int) as String + "%")
		Else
			AddTextOption("Hotpants", "0%")
		EndIf
		
		If PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
			AddTextOption("Showgirl Skirt", (TransparentShowgirlSkirtOdds.GetValue() as Int) as String + "")
		Else
			AddTextOption("Showgirl Skirt", "0%")
		EndIf
		AddTextOption("Last Chest Curtain Roll: ", TopCurtainRoll.GetValue() as Int)
		AddTextOption("Last Ass Curtain Roll: ", AssCurtainRoll.GetValue() as Int)
		AddTextOption("Last Pelvic Curtain Roll: ", PelvicCurtainRoll.GetValue() as Int)
		AddTextOption("Last CString Roll", CStringRoll.GetValue() as Int)
		AddTextOption("Last Transparent Top Roll", TopTransparentRoll.GetValue() as Int)
		AddTextOption("Last Transparent Bottom Roll", BottomTransparentRoll.GetValue() as Int)
		AddTextOption("Last Transparent Bra Roll", BraTransparentRoll.GetValue() as Int)
		AddTextOption("Last Transparent Underwear Roll", UnderwearTransparentRoll.GetValue() as Int)
		AddTextOption("Last Transparent Hotpants Roll", HotpantsTransparentRoll.GetValue() as Int)
		AddTextOption("Last Transparent Showgirl Skirt Roll", ShowgirlTransparentRoll.GetValue() as Int)
		
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
		
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskUltra)
			AddTextOption("AND_PelvicFlashRiskUltra", "Yes")
		Else
			AddTextOption("AND_PelvicFlashRiskUltra", "No")
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
		
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskUltra)
			AddTextOption("AND_AssFlashRiskUltra", "Yes")
		Else
			AddTextOption("AND_AssFlashRiskUltra", "No")
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
	ElseIf (page == "Flash Chance")
		AddHeaderOption("Chest Curtain")
		AddSliderOptionST("AND_ChestCurtainLowOdds", "Chest Curtain - Low", TopCurtainOddsLow.GetValue(), "{0}%")
		AddSliderOptionST("AND_ChestCurtainOdds", "Chest Curtain - Normal", TopCurtainOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_ChestCurtainHighOdds", "Chest Curtain - High", TopCurtainOddsHigh.GetValue(), "{0}%")
		AddSliderOptionST("AND_ChestCurtainExtremeOdds", "Chest Curtain - Extreme", TopCurtainOddsExtreme.GetValue(), "{0}%")
		AddSliderOptionST("AND_ChestCurtainUltraOdds", "Chest Curtain - Ultra", TopCurtainOddsUltra.GetValue(), "{0}%")
		
		AddSliderOptionST("AND_TransparentChestCurtainLowOdds", "Transparent Chest Curtain - Low", TransparentTopCurtainOddsLow.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentChestCurtainOdds", "Transparent Chest Curtain - Normal", TransparentTopCurtainOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentChestCurtainHighOdds", "Transparent Chest Curtain - High", TransparentTopCurtainOddsHigh.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentChestCurtainExtremeOdds", "Transparent Chest Curtain - Extreme", TransparentTopCurtainOddsExtreme.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentChestCurtainUltraOdds", "Transparent Chest Curtain - Ultra", TransparentTopCurtainOddsUltra.GetValue(), "{0}%")
		
		AddHeaderOption("Pelvic Curtain")
		AddSliderOptionST("AND_PelvicCurtainLowOdds", "Pelvic Curtain - Low", PelvicCurtainOddsLow.GetValue(), "{0}%")
		AddSliderOptionST("AND_PelvicCurtainOdds", "Pelvic Curtain - Normal", PelvicCurtainOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_PelvicCurtainHighOdds", "Pelvic Curtain - High", PelvicCurtainOddsHigh.GetValue(), "{0}%")
		AddSliderOptionST("AND_PelvicCurtainExtremeOdds", "Pelvic Curtain - Extreme", PelvicCurtainOddsExtreme.GetValue(), "{0}%")
		AddSliderOptionST("AND_PelvicCurtainUltraOdds", "Pelvic Curtain - Ultra", PelvicCurtainOddsUltra.GetValue(), "{0}%")
		
		AddSliderOptionST("AND_TransparentPelvicCurtainLowOdds", "Transparent Pelvic Curtain - Low", TransparentPelvicCurtainOddsLow.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentPelvicCurtainOdds", "Transparent Pelvic Curtain - Normal", TransparentPelvicCurtainOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentPelvicCurtainHighOdds", "Transparent Pelvic Curtain - High", TransparentPelvicCurtainOddsHigh.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentPelvicCurtainExtremeOdds", "Transparent Pelvic Curtain - Extreme", TransparentPelvicCurtainOddsExtreme.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentPelvicCurtainUltraOdds", "Transparent Pelvic Curtain - Ultra", TransparentPelvicCurtainOddsUltra.GetValue(), "{0}%")
		
		AddHeaderOption("Ass Curtain")
		AddSliderOptionST("AND_AssCurtainLowOdds", "Ass Curtain - Low", AssCurtainOddsLow.GetValue(), "{0}%")
		AddSliderOptionST("AND_AssCurtainOdds", "Ass Curtain - Normal", AssCurtainOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_AssCurtainHighOdds", "Ass Curtain - High", AssCurtainOddsHigh.GetValue(), "{0}%")
		AddSliderOptionST("AND_AssCurtainExtremeOdds", "Ass Curtain - Extreme", AssCurtainOddsExtreme.GetValue(), "{0}%")
		AddSliderOptionST("AND_AssCurtainUltraOdds", "Ass Curtain - Ultra", AssCurtainOddsUltra.GetValue(), "{0}%")
		
		AddSliderOptionST("AND_TransparentAssCurtainLowOdds", "Transparent Ass Curtain - Low", TransparentAssCurtainOddsLow.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentAssCurtainOdds", "Transparent Ass Curtain - Normal", TransparentAssCurtainOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentAssCurtainHighOdds", "Transparent Ass Curtain - High", TransparentAssCurtainOddsHigh.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentAssCurtainExtremeOdds", "Transparent Ass Curtain - Extreme", TransparentAssCurtainOddsExtreme.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentAssCurtainUltraOdds", "Transparent Ass Curtain - Ultra", TransparentAssCurtainOddsUltra.GetValue(), "{0}%")
		
		AddHeaderOption("C-String")
		AddSliderOptionST("AND_CStringOdds", "C-String", CStringOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentCStringOdds", "Transparent C-String", TransparentCStringOdds.GetValue(), "{0}%")
		
		AddHeaderOption("Transparent Clothes")
		AddSliderOptionST("AND_TransparentTopArmorOdds", "Transparent Top", TransparentTopArmorOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentBottomArmorOdds", "Transparent Bottom", TransparentBottomArmorOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentBraOdds", "Transparent Bra", TransparentBraOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentUnderwearOdds", "Transparent Underwear", TransparentUnderwearOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentHotpantsOdds", "Transparent Hotpants", TransparentHotpantsOdds.GetValue(), "{0}%")
		AddSliderOptionST("AND_TransparentShowgirlSkirtOdds", "Transparent Showgirl Skirt", TransparentShowgirlSkirtOdds.GetValue(), "{0}%")
	EndIf
EndEvent

State AND_ChestCurtainLowOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsLow.GetValue())
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsLow.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TopCurtainOddsLow.SetValue(20)
		SetSliderOptionValueST(20, "{0}%")
	EndEvent 

EndState

State AND_ChestCurtainOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOdds.GetValue())
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TopCurtainOdds.SetValue(35)
		SetSliderOptionValueST(35, "{0}%")
	EndEvent 

EndState

State AND_ChestCurtainHighOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsHigh.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsHigh.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TopCurtainOddsHigh.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 

EndState

State AND_ChestCurtainExtremeOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsExtreme.GetValue())
		SetSliderDialogDefaultValue(65)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsExtreme.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TopCurtainOddsExtreme.SetValue(65)
		SetSliderOptionValueST(65, "{0}%")
	EndEvent 

EndState

State AND_ChestCurtainUltraOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TopCurtainOddsUltra.GetValue())
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TopCurtainOddsUltra.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TopCurtainOddsUltra.SetValue(80)
		SetSliderOptionValueST(80, "{0}%")
	EndEvent 

EndState

State AND_TransparentChestCurtainLowOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsLow.GetValue())
		SetSliderDialogDefaultValue(55)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsLow.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentTopCurtainOddsLow.SetValue(55)
		SetSliderOptionValueST(55, "{0}%")
	EndEvent 

EndState

State AND_TransparentChestCurtainOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOdds.GetValue())
		SetSliderDialogDefaultValue(65)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentTopCurtainOdds.SetValue(65)
		SetSliderOptionValueST(65, "{0}%")
	EndEvent 

EndState

State AND_TransparentChestCurtainHighOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsHigh.GetValue())
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsHigh.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentTopCurtainOddsHigh.SetValue(75)
		SetSliderOptionValueST(75, "{0}%")
	EndEvent 

EndState

State AND_TransparentChestCurtainExtremeOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsExtreme.GetValue())
		SetSliderDialogDefaultValue(85)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsExtreme.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentTopCurtainOddsExtreme.SetValue(85)
		SetSliderOptionValueST(85, "{0}%")
	EndEvent 

EndState

State AND_TransparentChestCurtainUltraOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopCurtainOddsUltra.GetValue())
		SetSliderDialogDefaultValue(95)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopCurtainOddsUltra.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentTopCurtainOddsUltra.SetValue(95)
		SetSliderOptionValueST(95, "{0}%")
	EndEvent 

EndState

State AND_PelvicCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsLow.GetValue())
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsLow.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		PelvicCurtainOddsLow.SetValue(20)
		SetSliderOptionValueST(20, "{0}%")
	EndEvent 
EndState

State AND_PelvicCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOdds.GetValue())
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		PelvicCurtainOdds.SetValue(35)
		SetSliderOptionValueST(35, "{0}%")
	EndEvent 
EndState

State AND_PelvicCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsHigh.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsHigh.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		PelvicCurtainOddsHigh.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState

State AND_PelvicCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsExtreme.GetValue())
		SetSliderDialogDefaultValue(65)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsExtreme.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		PelvicCurtainOddsExtreme.SetValue(65)
		SetSliderOptionValueST(65, "{0}%")
	EndEvent 
EndState

State AND_PelvicCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(PelvicCurtainOddsUltra.GetValue())
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		PelvicCurtainOddsUltra.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		PelvicCurtainOddsUltra.SetValue(80)
		SetSliderOptionValueST(80, "{0}%")
	EndEvent 
EndState

State AND_TransparentPelvicCurtainLowOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsLow.GetValue())
		SetSliderDialogDefaultValue(55)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsLow.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentPelvicCurtainOddsLow.SetValue(55)
		SetSliderOptionValueST(55, "{0}%")
	EndEvent 

EndState

State AND_TransparentPelvicCurtainOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOdds.GetValue())
		SetSliderDialogDefaultValue(65)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentPelvicCurtainOdds.SetValue(65)
		SetSliderOptionValueST(65, "{0}%")
	EndEvent 

EndState

State AND_TransparentPelvicCurtainHighOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsHigh.GetValue())
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsHigh.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentPelvicCurtainOddsHigh.SetValue(75)
		SetSliderOptionValueST(75, "{0}%")
	EndEvent 

EndState

State AND_TransparentPelvicCurtainExtremeOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsExtreme.GetValue())
		SetSliderDialogDefaultValue(85)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsExtreme.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentPelvicCurtainOddsExtreme.SetValue(85)
		SetSliderOptionValueST(85, "{0}%")
	EndEvent 

EndState

State AND_TransparentPelvicCurtainUltraOdds

	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentPelvicCurtainOddsUltra.GetValue())
		SetSliderDialogDefaultValue(95)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentPelvicCurtainOddsUltra.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentPelvicCurtainOddsUltra.SetValue(95)
		SetSliderOptionValueST(95, "{0}%")
	EndEvent 

EndState

State AND_AssCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsLow.GetValue())
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsLow.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		AssCurtainOddsLow.SetValue(20)
		SetSliderOptionValueST(20, "{0}%")
	EndEvent 
EndState

State AND_AssCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOdds.GetValue())
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		AssCurtainOdds.SetValue(35)
		SetSliderOptionValueST(35, "{0}%")
	EndEvent 
EndState

State AND_AssCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsHigh.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsHigh.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		AssCurtainOddsHigh.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState

State AND_AssCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsExtreme.GetValue())
		SetSliderDialogDefaultValue(65)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsExtreme.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		AssCurtainOddsExtreme.SetValue(65)
		SetSliderOptionValueST(65, "{0}%")
	EndEvent 
EndState

State AND_AssCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(AssCurtainOddsUltra.GetValue())
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		AssCurtainOddsUltra.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		AssCurtainOddsUltra.SetValue(80)
		SetSliderOptionValueST(80, "{0}%")
	EndEvent 
EndState

State AND_TransparentAssCurtainLowOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsLow.GetValue())
		SetSliderDialogDefaultValue(55)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsLow.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentAssCurtainOddsLow.SetValue(55)
		SetSliderOptionValueST(55, "{0}%")
	EndEvent 
EndState

State AND_TransparentAssCurtainOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOdds.GetValue())
		SetSliderDialogDefaultValue(65)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentAssCurtainOdds.SetValue(65)
		SetSliderOptionValueST(65, "{0}%")
	EndEvent 
EndState

State AND_TransparentAssCurtainHighOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsHigh.GetValue())
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsHigh.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentAssCurtainOddsHigh.SetValue(75)
		SetSliderOptionValueST(75, "{0}%")
	EndEvent 
EndState

State AND_TransparentAssCurtainExtremeOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsExtreme.GetValue())
		SetSliderDialogDefaultValue(85)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsExtreme.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentAssCurtainOddsExtreme.SetValue(85)
		SetSliderOptionValueST(85, "{0}%")
	EndEvent 
EndState

State AND_TransparentAssCurtainUltraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentAssCurtainOddsUltra.GetValue())
		SetSliderDialogDefaultValue(95)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentAssCurtainOddsUltra.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentAssCurtainOddsUltra.SetValue(95)
		SetSliderOptionValueST(95, "{0}%")
	EndEvent 
EndState

State AND_CStringOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(CStringOdds.GetValue())
		SetSliderDialogDefaultValue(70)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		CStringOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		CStringOdds.SetValue(70)
		SetSliderOptionValueST(70, "{0}%")
	EndEvent 
EndState

State AND_TransparentCStringOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentCStringOdds.GetValue())
		SetSliderDialogDefaultValue(90)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentCStringOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentCStringOdds.SetValue(90)
		SetSliderOptionValueST(90, "{0}%")
	EndEvent 
EndState

State AND_TransparentTopArmorOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentTopArmorOdds.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentTopArmorOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentTopArmorOdds.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState

State AND_TransparentBottomArmorOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBottomArmorOdds.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBottomArmorOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentBottomArmorOdds.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState

State AND_TransparentBraOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentBraOdds.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentBraOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentBraOdds.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState

State AND_TransparentUnderwearOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentUnderwearOdds.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentUnderwearOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentUnderwearOdds.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState

State AND_TransparentHotpantsOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentHotpantsOdds.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentHotpantsOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentHotpantsOdds.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState

State AND_TransparentShowgirlSkirtOdds
	Event OnSliderOpenST()
		SetSliderDialogStartValue(TransparentShowgirlSkirtOdds.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	EndEvent
	
	Event OnSliderAcceptST(float value)
		TransparentShowgirlSkirtOdds.SetValue(value)
		SetSliderOptionValueST(value, "{0}%")
	EndEvent 

	Event OnDefaultST()
		TransparentShowgirlSkirtOdds.SetValue(50)
		SetSliderOptionValueST(50, "{0}%")
	EndEvent 
EndState