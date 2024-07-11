ScriptName AND_Core extends Quest

AND_MCM Property AND_Config Auto
AND_MaleArmorScan Property AND_MaleScan Auto
AND_FemaleArmorScan Property AND_FemaleScan Auto
AND_PlayerScript Property AND_Player Auto

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
Keyword Property AND_Ignore Auto

Keyword Property AND_ArmorBottom_NoCover Auto
Keyword Property AND_ArmorTop_NoCover Auto
Keyword Property AND_Bra_NoCover Auto
Keyword Property AND_Underwear_NoCover Auto
Keyword Property AND_Thong_NoCover Auto

Keyword Property AND_NearlyNaked Auto
Keyword Property AND_NipplePasties Auto
Keyword Property AND_VaginaPasties Auto
Keyword Property AND_EffectivelyNaked Auto

Keyword Property AND_AssCurtain Auto
Keyword Property AND_AssCurtainT Auto
Keyword Property AND_ChestCurtain Auto
Keyword Property AND_ChestCurtainT Auto
Keyword Property AND_PelvicCurtain Auto
Keyword Property AND_PelvicCurtainT Auto

Keyword Property AND_ArmorTop_Male Auto
Keyword Property AND_ArmorTopT_Male Auto
Keyword Property AND_ArmorBottom_Male Auto
Keyword Property AND_ArmorBottomT_Male Auto
Keyword Property AND_Bra_Male Auto
Keyword Property AND_BraT_Male Auto
Keyword Property AND_BananaHammock Auto
Keyword Property AND_BananaHammockT Auto
Keyword Property AND_Hotpants_Male Auto
Keyword Property AND_HotpantsT_Male Auto
Keyword Property AND_Microskirt_Male Auto
Keyword Property AND_Miniskirt_Male Auto
Keyword Property AND_MiniskirtT_Male Auto
Keyword Property AND_HimboSkirt Auto
Keyword Property AND_HimboSkirtT Auto
Keyword Property AND_Thong_Male Auto
Keyword Property AND_ThongT_Male Auto
Keyword Property AND_Underwear_Male Auto
Keyword Property AND_UnderwearT_Male Auto

Keyword Property AND_ArmorBottom_NoCover_Male Auto
Keyword Property AND_ArmorTop_NoCover_Male Auto
Keyword Property AND_Bra_NoCover_Male Auto
Keyword Property AND_Underwear_NoCover_Male Auto
Keyword Property AND_Thong_NoCover_Male Auto

Keyword Property AND_NearlyNaked_Male Auto
Keyword Property AND_NipplePasties_Male Auto
Keyword Property AND_EffectivelyNaked_Male Auto

Keyword Property AND_AssCurtain_Male Auto
Keyword Property AND_AssCurtainT_Male Auto
Keyword Property AND_ChestCurtain_Male Auto
Keyword Property AND_ChestCurtainT_Male Auto
Keyword Property AND_PelvicCurtain_Male Auto
Keyword Property AND_PelvicCurtainT_Male Auto

Keyword Property AND_CoversAll Auto
Keyword Property AND_CoversAll_Male Auto

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

Keyword Property SLA_Brabikini Auto
Keyword Property SLA_ThongT Auto
Keyword Property SLA_ThongGstring Auto
Keyword Property SLA_ThongLowleg Auto
Keyword Property SLA_ThongCString Auto
Keyword Property SLA_ArmorPartTop Auto
Keyword Property SLA_ArmorPartBottom Auto
Keyword Property SLA_FullSkirt Auto
Keyword Property SLA_MicroHotpants Auto
Keyword Property SLA_MicroSkirt Auto
Keyword Property SLA_MiniSkirt Auto
Keyword Property SLA_PantiesNormal Auto
Keyword Property SLA_PantsNormal Auto
Keyword Property SLA_PastiesCrotch Auto
Keyword Property SLA_PastiesNipple Auto
Keyword Property SLA_ArmorHalfNaked Auto
Keyword Property SLA_PelvicCurtain Auto
Keyword Property SLA_ShowgirlSkirt Auto

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

GlobalVariable Property AND_DebugMode Auto

GlobalVariable Property SLA_Found Auto

Event OnInit()
	RegisterForSingleUpdate(10.0) ;When initialized, register the OnUpdate event to fire in 10 seconds
	;RegisterForUpdateGameTime(0.25) ;When initialized, register the OnUpdateGameTime event to fire every 15 in-game minutes. This separate event is required for updating using Game Time instead of Real Time
	
	SLA_Check()
	
	Debug.Notification("A.N.D. Initialized")
EndEvent

Event OnPlayerLoadGame()
	SLA_Check()
EndEvent

Event OnUpdate()
	ActorBase PlayerBase = Game.GetPlayer().GetActorBase()
	If PlayerBase.GetSex() == 0 ;Male
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Start Male Scan")
		EndIf
		AND_MaleScan.AND_LayerAnalyze(AND_Player.PlayerRef)
	Else
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Start Female Scan")
		EndIf
		AND_FemaleScan.AND_LayerAnalyze(AND_Player.PlayerRef)
	EndIf
EndEvent

Event OnUpdateGameTime()
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND Update Game Time")
	EndIf
	AND_DiceRoll()
EndEvent

Function SLA_Check()
	If Game.GetModByName("SexLabAroused.esm") != 255
		SLA_ArmorHalfNaked = Game.GetFormFromFile(0x8E855, "SexLabAroused.esm") as Keyword
		SLA_Brabikini = Game.GetFormFromFile(0x8E856, "SexLabAroused.esm") as Keyword
		SLA_ThongT = Game.GetFormFromFile(0x8E857, "SexLabAroused.esm") as Keyword
		SLA_ThongGstring = Game.GetFormFromFile(0x8F3F5, "SexLabAroused.esm") as Keyword
		SLA_ThongLowleg = Game.GetFormFromFile(0x8EDC2, "SexLabAroused.esm") as Keyword
		SLA_ThongCString = Game.GetFormFromFile(0x8EDC3, "SexLabAroused.esm") as Keyword
		SLA_ArmorPartTop = Game.GetFormFromFile(0x8FEA0, "SexLabAroused.esm") as Keyword
		SLA_ArmorPartBottom = Game.GetFormFromFile(0x8FEA1, "SexLabAroused.esm") as Keyword
		SLA_FullSkirt = Game.GetFormFromFile(0x8F40D, "SexLabAroused.esm") as Keyword
		SLA_MicroHotpants = Game.GetFormFromFile(0x8F3F4, "SexLabAroused.esm") as Keyword
		SLA_MicroSkirt = Game.GetFormFromFile(0x8F40F, "SexLabAroused.esm") as Keyword
		SLA_MiniSkirt = Game.GetFormFromFile(0x8F40E, "SexLabAroused.esm") as Keyword
		SLA_PantiesNormal = Game.GetFormFromFile(0x8EDC1, "SexLabAroused.esm") as Keyword
		SLA_PantsNormal = Game.GetFormFromFile(0x8F3F3, "SexLabAroused.esm") as Keyword
		SLA_PastiesCrotch = Game.GetFormFromFile(0x8F409, "SexLabAroused.esm") as Keyword
		SLA_PastiesNipple = Game.GetFormFromFile(0x8F40A, "SexLabAroused.esm") as Keyword
		SLA_PelvicCurtain = Game.GetFormFromFile(0x8F402, "SexLabAroused.esm") as Keyword
		SLA_ShowgirlSkirt = Game.GetFormFromFile(0x8F403, "SexLabAroused.esm") as Keyword
		
		SLA_Found.SetValue(1)
		
		If AND_DebugMode.GetValue() == 1
			Debug.MessageBox("Advanced Nudity Detection - SexLab Aroused Found. Extra Keywords Enabled.")
		EndIf
	Else
		SLA_Brabikini = None
		SLA_ThongT = None
		SLA_ThongGstring = None
		SLA_ThongLowleg = None
		SLA_ThongCString = None
		SLA_ArmorPartTop = None
		SLA_ArmorPartBottom = None
		SLA_FullSkirt = None
		SLA_MicroHotpants = None
		SLA_MicroSkirt = None
		SLA_MiniSkirt = None
		SLA_PantiesNormal = None
		SLA_PantsNormal = None
		SLA_PastiesCrotch = None
		SLA_PastiesNipple = None
		SLA_ArmorHalfNaked = None
		SLA_PelvicCurtain = None
		SLA_ShowgirlSkirt = None
		
		SLA_Found.SetValue(0)
		
		If AND_DebugMode.GetValue() == 1
			Debug.MessageBox("Advanced Nudity Detection - SexLab Aroused NOT Found. Extra Keywords NOT Enabled.")
		EndIf
	EndIf
EndFunction

Function AND_DiceRoll()
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND Dice Roll")
	EndIf
	
	TopCurtainRoll.SetValue(Utility.RandomInt(1,100))
	PelvicCurtainRoll.SetValue(Utility.RandomInt(1,100))
	AssCurtainRoll.SetValue(Utility.RandomInt(1,100))
	CStringRoll.SetValue(Utility.RandomInt(1,100))
	TopTransparentRoll.SetValue(Utility.RandomInt(1,100))
	BottomTransparentRoll.SetValue(Utility.RandomInt(1,100))
	BraTransparentRoll.SetValue(Utility.RandomInt(1,100))
	UnderwearTransparentRoll.SetValue(Utility.RandomInt(1,100))
	HotpantsTransparentRoll.SetValue(Utility.RandomInt(1,100))
	ShowgirlTransparentRoll.SetValue(Utility.RandomInt(1,100))
	
	ActorBase PlayerBase = Game.GetPlayer().GetActorBase()
	If PlayerBase.GetSex() == 0 ;Male
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Send Male Scan")
		EndIf
		AND_MaleScan.AND_LayerAnalyze(AND_Player.PlayerRef)
	Else
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Send Female Scan")
		EndIf
		AND_FemaleScan.AND_LayerAnalyze(AND_Player.PlayerRef)
	EndIf
EndFunction