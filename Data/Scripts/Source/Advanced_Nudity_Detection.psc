ScriptName Advanced_Nudity_Detection extends ReferenceAlias

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

GlobalVariable Property AND_DebugMode Auto

GlobalVariable Property SLA_Found Auto
Int Property SLA_Checked Auto Hidden

Event OnInit()
	If !PlayerRef.IsInFaction(AND_ShowingAssFaction)
		PlayerRef.AddToFaction(AND_ShowingAssFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_ShowingChestFaction)
		PlayerRef.AddToFaction(AND_ShowingChestFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_ShowingGenitalsFaction)
		PlayerRef.AddToFaction(AND_ShowingGenitalsFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_ShowingBraFaction)
		PlayerRef.AddToFaction(AND_ShowingBraFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_ShowingUnderwearFaction)
		PlayerRef.AddToFaction(AND_ShowingUnderwearFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_ToplessFaction)
		PlayerRef.AddToFaction(AND_ToplessFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_BottomlessFaction)
		PlayerRef.AddToFaction(AND_BottomlessFaction)
	EndIf
	If !PlayerRef.IsInFaction(AND_NudeActorFaction)
		PlayerRef.AddToFaction(AND_NudeActorFaction)
	EndIf
	
	RegisterForSingleUpdate(10.0) ;When initialized, register the OnUpdate event to fire in 10 seconds
	RegisterForUpdateGameTime(0.25) ;When initialized, register the OnUpdateGameTime event to fire every 15 in-game minutes. This separate event is required for updating using Game Time instead of Real Time
	SLA_Check()
	
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("A.N.D. Initialized")
	EndIf
EndEvent

Event OnUpdate()
	If SLA_Checked != 1
		SLA_Check()
	EndIf
	AND_LayerAnalyze()
EndEvent

Event OnUpdateGameTime()
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND Update Game Time")
	EndIf
	If SLA_Checked != 1
		SLA_Check()
	EndIf
	AND_DiceRoll()
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Object Equipped.")
	EndIf
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(AND_Ignore))
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Equipped Null Object or has Ignore Keyword. Update Skipped.")
		EndIf
		return
	EndIf
	
	RegisterForSingleUpdate(0.1)
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Object Unequipped.")
	EndIf
	If (akBaseObject == none || akBaseObject.GetName() == "" || akBaseObject.HasKeyword(AND_Ignore))
		If AND_DebugMode.GetValue() == 1
			Debug.Notification("AND - Unequipped None Object or has Ignore Keyword")
		EndIf
		return
	EndIf
	
	RegisterForSingleUpdate(0.1)
EndEvent

Function SLA_Check()
	If Game.GetModByName("SexLabAroused.esm") != 255 || SLA_Found.GetValue() == 1
		If SLA_Found.GetValue() == -1
			SLA_Found.SetValue(1)
		EndIf
		
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
		
		If AND_DebugMode.GetValue() == 1
			Debug.MessageBox("Advanced Nudity Detection - SexLab Aroused Found. Extra Keywords Enabled.")
		EndIf
	Else
		If SLA_Found.GetValue() == -1
			SLA_Found.SetValue(0)
		EndIf
		
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
		
		If AND_DebugMode.GetValue() == 1
			Debug.MessageBox("Advanced Nudity Detection - SexLab Aroused NOT Found. Extra Keywords NOT Enabled.")
		EndIf
	EndIf
	SLA_Checked = 1
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
	
	AND_LayerAnalyze()
EndFunction

Bool Function TopCurtainCheck()
	If PlayerRef.WornHasKeyword(AND_ChestCurtain)
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskLow)
			If TopCurtainRoll.GetValue() <= TopCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRisk)
			If TopCurtainRoll.GetValue() <= TopCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskHigh)
			If TopCurtainRoll.GetValue() <= TopCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskExtreme)
			If TopCurtainRoll.GetValue() <= TopCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskUltra)
			If TopCurtainRoll.GetValue() <= TopCurtainOddsUltra.GetValue()
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskLow)
			If TopCurtainRoll.GetValue() <= TransparentTopCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRisk)
			If TopCurtainRoll.GetValue() <= TransparentTopCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskHigh)
			If TopCurtainRoll.GetValue() <= TransparentTopCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskExtreme)
			If TopCurtainRoll.GetValue() <= TransparentTopCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskUltra)
			If TopCurtainRoll.GetValue() <= TransparentTopCurtainOddsUltra.GetValue()
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
	If TopTransparentRoll.GetValue() <= TransparentTopArmorOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentBraCheck()
	If BraTransparentRoll.GetValue() <= TransparentBraOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function PelvicCurtainCheck()
	If PlayerRef.WornHasKeyword(AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AND_Miniskirt) || (SLA_PelvicCurtain != None && PlayerRef.WornHasKeyword(SLA_PelvicCurtain)) || (SLA_MiniSkirt != None && PlayerRef.WornHasKeyword(SLA_MiniSkirt))
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskLow)
			If PelvicCurtainRoll.GetValue() <= PelvicCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRisk)
			If PelvicCurtainRoll.GetValue() <= PelvicCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskHigh)
			If PelvicCurtainRoll.GetValue() <= PelvicCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskExtreme)
			If PelvicCurtainRoll.GetValue() <= PelvicCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskUltra)
			If PelvicCurtainRoll.GetValue() <= PelvicCurtainOddsUltra.GetValue()
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskLow)
			If PelvicCurtainRoll.GetValue() <= TransparentPelvicCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRisk)
			If PelvicCurtainRoll.GetValue() <= TransparentPelvicCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskHigh)
			If PelvicCurtainRoll.GetValue() <= TransparentPelvicCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskExtreme)
			If PelvicCurtainRoll.GetValue() <= TransparentPelvicCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskUltra)
			If PelvicCurtainRoll.GetValue() <= TransparentPelvicCurtainOddsUltra.GetValue()
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
	If PlayerRef.WornHasKeyword(AND_AssCurtain) || PlayerRef.WornHasKeyword(AND_Miniskirt) || (SLA_MiniSkirt != None && PlayerRef.WornHasKeyword(SLA_MiniSkirt))
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskLow)
			If AssCurtainRoll.GetValue() <= AssCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRisk)
			If AssCurtainRoll.GetValue() <= AssCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskHigh)
			If AssCurtainRoll.GetValue() <= AssCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskExtreme)
			If AssCurtainRoll.GetValue() <= AssCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskUltra)
			If AssCurtainRoll.GetValue() <= AssCurtainOddsUltra.GetValue()
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskLow)
			If AssCurtainRoll.GetValue() <= TransparentAssCurtainOddsLow.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRisk)
			If AssCurtainRoll.GetValue() <= TransparentAssCurtainOdds.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskHigh)
			If AssCurtainRoll.GetValue() <= TransparentAssCurtainOddsHigh.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskExtreme)
			If AssCurtainRoll.GetValue() <= TransparentAssCurtainOddsExtreme.GetValue()
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskUltra)
			If AssCurtainRoll.GetValue() <= TransparentAssCurtainOddsUltra.GetValue()
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
	If BottomTransparentRoll.GetValue() <= TransparentBottomArmorOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentHotpantsCheck()
	If HotpantsTransparentRoll.GetValue() <= TransparentHotpantsOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentShowgirlCheck()
	If ShowgirlTransparentRoll.GetValue() <= TransparentShowgirlSkirtOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentUnderwearCheck()
	If UnderwearTransparentRoll.GetValue() <= TransparentUnderwearOdds.GetValue()
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function CStringCheck()
	If PlayerRef.WornHasKeyword(AND_CString) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
		If CStringRoll.GetValue() <= CStringOdds.GetValue()
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_CStringT)
		If CStringRoll.GetValue() <= TransparentCStringOdds.GetValue()
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Function AND_LayerAnalyze()
	If AND_DebugMode.GetValue() == 1
		Debug.Notification("AND - Layer Analyze")
	EndIf

	Armor AND_Slot32 = PlayerRef.GetEquippedArmorInSlot(32)
	
	If !PlayerRef.WornHasKeyword(AND_CoversAll)
	
		;/--------------/;
		;/---TOP SCAN---/;
		;/--------------/;
		
		;Curtain Layer
		If PlayerRef.WornHasKeyword(AND_ChestCurtain) || PlayerRef.WornHasKeyword(AND_ChestCurtainT)
			TopCurtainLayer_Cover.SetValue(TopCurtainCheck() as Int)
		Else
			TopCurtainLayer_Cover.SetValue(0) ;False
		EndIf
			
		;Armor Layer
		If PlayerRef.WornHasKeyword(AND_ArmorTop) || (SLA_ArmorPartTop != None && PlayerRef.WornHasKeyword(SLA_ArmorPartTop))
			BraLayer_Cover.SetValue(1) ;True
			Chest_Cover.SetValue(1) ;True
		ElseIf PlayerRef.WornHasKeyword(AND_ArmorTopT)
			Bool TopCovering = TopTransparentArmorCheck()
			
			If TopCovering == True
				BraLayer_Cover.SetValue(1) ;True
				Chest_Cover.SetValue(1) ;True
			Else
				;Bra Layer
				If PlayerRef.WornHasKeyword(AND_Bra) || (SLA_Brabikini != None && PlayerRef.WornHasKeyword(SLA_Brabikini))
					BraLayer_Cover.SetValue(0) ;False
					Chest_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_BraT)
					BraLayer_Cover.SetValue(0) ;False
					Chest_Cover.SetValue(TransparentBraCheck() as Int)
				ElseIf PlayerRef.WornHasKeyword(AND_Bra_NoCover)
					BraLayer_Cover.SetValue(0) ;False
					Chest_Cover.SetValue(0) ;False
				Else
					BraLayer_Cover.SetValue(1) ;True
					Chest_Cover.SetValue(0) ;False
				EndIf
			EndIf
		Else
			;Bra Layer
			If PlayerRef.WornHasKeyword(AND_Bra) || (SLA_Brabikini != None && PlayerRef.WornHasKeyword(SLA_Brabikini))
				BraLayer_Cover.SetValue(0) ;False
				Chest_Cover.SetValue(1) ;True
			ElseIf PlayerRef.WornHasKeyword(AND_BraT)
				BraLayer_Cover.SetValue(0) ;False
				Chest_Cover.SetValue(TransparentBraCheck() as Int)
			ElseIf PlayerRef.WornHasKeyword(AND_Bra_NoCover)
				BraLayer_Cover.SetValue(0) ;False
				Chest_Cover.SetValue(0) ;False
			Else
				BraLayer_Cover.SetValue(1) ;True
				Chest_Cover.SetValue(0) ;False
			EndIf
		EndIf
		
		
		;/-----------------/;
		;/---Bottom SCAN---/;
		;/-----------------/;
		
		;Pelvic Curtain Layer
		If PlayerRef.WornHasKeyword(AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_MiniskirtT) || (SLA_PelvicCurtain != None && PlayerRef.WornHasKeyword(SLA_PelvicCurtain)) || (SLA_MiniSkirt != None && PlayerRef.WornHasKeyword(SLA_MiniSkirt))
			PelvicCurtain_Cover.SetValue(PelvicCurtainCheck() as Int)
		Else
			PelvicCurtain_Cover.SetValue(0) ;False
		EndIf
		
		;Ass Curtain Layer
		If PlayerRef.WornHasKeyword(AND_AssCurtain) || PlayerRef.WornHasKeyword(AND_AssCurtainT) || PlayerRef.WornHasKeyword(AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_MiniskirtT) || (SLA_MiniSkirt != None && PlayerRef.WornHasKeyword(SLA_MiniSkirt))
			AssCurtain_Cover.SetValue(AssCurtainCheck() as Int)
		Else
			AssCurtain_Cover.SetValue(0) ;False
		EndIf
			
		;Bottom Armor Layer
		If PlayerRef.WornHasKeyword(AND_ArmorBottom) || (SLA_ArmorPartBottom != None && PlayerRef.WornHasKeyword(SLA_ArmorPartBottom)) || (SLA_PantsNormal != None && PlayerRef.WornHasKeyword(SLA_PantsNormal)) || (SLA_FullSkirt != None && PlayerRef.WornHasKeyword(SLA_FullSkirt))
			BottomAss_Cover.SetValue(1) ;True
			BottomGenital_Cover.SetValue(1) ;True
			Underwear_Cover.SetValue(1) ;True
		ElseIf PlayerRef.WornHasKeyword(AND_ArmorBottomT)
			Underwear_Cover.SetValue(BottomTransparentArmorCheck() as Int)
			
			If Underwear_Cover.GetValue() == 1 ;True
				BottomGenital_Cover.SetValue(1) ;True
				BottomAss_Cover.SetValue(1) ;True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ArmorBottom_NoCover)
			If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(1) ;True
				BottomGenital_Cover.SetValue(1) ;True
			ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
				BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
			ElseIf PlayerRef.WornHasKeyword(AND_Thong) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(0) ;False
				BottomGenital_Cover.SetValue(1) ;True
			ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(0) ;False
				BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
			ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
				BottomAss_Cover.SetValue(0) ;False
				BottomGenital_Cover.SetValue(CStringCheck() as Int)
				
				If BottomGenital_Cover.GetValue() == 1 ;True
					Underwear_Cover.SetValue(0) ;False
				Else
					Underwear_Cover.SetValue(1) ;True
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(0) ;False
				BottomGenital_Cover.SetValue(0) ;False
			Else
				Underwear_Cover.SetValue(1) ;True
				BottomAss_Cover.SetValue(0) ;False
				BottomGenital_Cover.SetValue(0) ;False
			EndIf
		Else
			If (PlayerRef.WornHasKeyword(AND_Hotpants) || (SLA_MicroHotpants != None && PlayerRef.WornHasKeyword(SLA_MicroHotpants))) && (PlayerRef.WornHasKeyword(AND_ShowgirlSkirt) || (SLA_ShowgirlSkirt != None && PlayerRef.WornHasKeyword(SLA_ShowgirlSkirt)))
				BottomAss_Cover.SetValue(1) ;True
				BottomGenital_Cover.SetValue(1) ;True
				Underwear_Cover.SetValue(1) ;True				
			ElseIf (PlayerRef.WornHasKeyword(AND_Hotpants) || (SLA_MicroHotpants != None && PlayerRef.WornHasKeyword(SLA_MicroHotpants))) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
				BottomGenital_Cover.SetValue(1) ;True
				
				If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
					BottomAss_Cover.SetValue(1) ;True
					Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
					Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
					If Underwear_Cover.GetValue() == 1 ;True
						BottomAss_Cover.SetValue(1) ;True
					Else
						BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
					Underwear_Cover.SetValue(TransparentShowgirlCheck() as Int)
					If Underwear_Cover.GetValue() == 1 ;True
						BottomAss_Cover.SetValue(1) ;True
					Else
						BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Thong) || PlayerRef.WornHasKeyword(AND_ThongT) || PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || PlayerRef.WornHasKeyword(AND_Thong_NoCover) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString)) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
					Underwear_Cover.SetValue(1) ;True
					BottomAss_Cover.SetValue(TransparentShowgirlCheck() as Int)
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomAss_Cover.SetValue(TransparentShowgirlCheck() as Int)
				EndIf
				
			ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT) && (PlayerRef.WornHasKeyword(AND_ShowgirlSkirt) || (SLA_ShowgirlSkirt != None && PlayerRef.WornHasKeyword(SLA_ShowgirlSkirt)))
				BottomAss_Cover.SetValue(1) ;True
				If PlayerRef.WornHasKeyword(AND_Underwear) || PlayerRef.WornHasKeyword(AND_Thong) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal)) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
					BottomGenital_Cover.SetValue(1) ;True
					Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT) || PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
					Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
					If Underwear_Cover.GetValue() == 1 ;True
						BottomGenital_Cover.SetValue(1) ;True
					Else
						If PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
							BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
						Else
							BottomGenital_Cover.SetValue(CStringCheck() as Int)
							If BottomGenital_Cover.GetValue() == 1 ;True
								Underwear_Cover.SetValue(0) ;False
							Else
								Underwear_Cover.SetValue(1) ;False
							EndIf
						EndIf
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
					Underwear_Cover.SetValue(TransparentHotpantsCheck() as Int)
					If Underwear_Cover.GetValue() == 1 ;True
						BottomGenital_Cover.SetValue(1) ;True
					Else
						BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomGenital_Cover.SetValue(TransparentHotpantsCheck() as Int)
				EndIf
					
			ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					BottomAss_Cover.SetValue(1) ;True
					BottomGenital_Cover.SetValue(1) ;True
					Underwear_Cover.SetValue(1) ;True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					BottomGenital_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					BottomAss_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear) || PlayerRef.WornHasKeyword(AND_Thong) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal)) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
						BottomGenital_Cover.SetValue(CStringCheck() as Int)
						If BottomGenital_Cover.GetValue() == 1 ;True
							Underwear_Cover.SetValue(0) ;False
						Else
							Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
					ElseIf PlayerRef.WornHasKeyword(AND_Thong) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(CStringCheck() as Int)
						If BottomGenital_Cover.GetValue() == 1 ;True
							Underwear_Cover.SetValue(0) ;False
						Else
							Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_Hotpants) || (SLA_MicroHotpants != None && PlayerRef.WornHasKeyword(SLA_MicroHotpants))
				BottomGenital_Cover.SetValue(1) ;True
				If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(0) ;False
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomAss_Cover.SetValue(0) ;False
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_ShowgirlSkirt) || (SLA_ShowgirlSkirt != None && PlayerRef.WornHasKeyword(SLA_ShowgirlSkirt))
				BottomAss_Cover.SetValue(1) ;True
				If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
					Underwear_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
					Underwear_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
					BottomGenital_Cover.SetValue(CStringCheck() as Int)
					If BottomGenital_Cover.GetValue() == 1 ;True
						Underwear_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
					Underwear_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(0) ;False
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomGenital_Cover.SetValue(0) ;False
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT)
				Bool Hotpants_Covering = TransparentHotpantsCheck()
				If Hotpants_Covering == True
					BottomGenital_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomAss_Cover.SetValue(0) ;False
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						BottomGenital_Cover = BottomAss_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Thong) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(CStringCheck() as Int)
						If BottomGenital_Cover.GetValue() == 1 ;True
							Underwear_Cover.SetValue(0) ;False
						Else
							Underwear_Cover.SetValue(1)
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
				Bool Showgirl_Covering = TransparentShowgirlCheck()
				If Showgirl_Covering == True
					BottomAss_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear) || PlayerRef.WornHasKeyword(AND_Thong) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal)) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
						BottomGenital_Cover.SetValue(CStringCheck() as Int)
						If BottomGenital_Cover.GetValue() == 1 ;True
							Underwear_Cover.SetValue(0) ;False
						Else
							Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
						BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
					ElseIf PlayerRef.WornHasKeyword(AND_Thong) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(CStringCheck() as Int)
						If BottomGenital_Cover.GetValue() == 1 ;True
							Underwear_Cover.SetValue(0) ;False
						Else
							Underwear_Cover.SetValue(1) ;True
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(0) ;False
					EndIf
				EndIf
			Else
				If PlayerRef.WornHasKeyword(AND_Underwear) || (SLA_PantiesNormal != None && PlayerRef.WornHasKeyword(SLA_PantiesNormal))
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(1) ;True
					BottomGenital_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(TransparentUnderwearCheck() as Int)
					BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
				ElseIf PlayerRef.WornHasKeyword(AND_Thong) || (SLA_ThongGstring != None && PlayerRef.WornHasKeyword(SLA_ThongGstring)) || (SLA_ThongLowleg != None && PlayerRef.WornHasKeyword(SLA_ThongLowleg)) || (SLA_ThongT != None && PlayerRef.WornHasKeyword(SLA_ThongT))
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(TransparentUnderwearCheck() as Int)
				ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || (SLA_ThongCString != None && PlayerRef.WornHasKeyword(SLA_ThongCString))
					BottomAss_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(CStringCheck() as Int)
					If BottomGenital_Cover.GetValue() == 1 ;True
						Underwear_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(0) ;False
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomAss_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(0) ;False
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
			
			If !AND_Slot32.HasKeyword(AND_ChestCurtain) && !AND_Slot32.HasKeyword(AND_ChestCurtainT) && !AND_Slot32.HasKeyword(AND_PelvicCurtain) && !AND_Slot32.HasKeyword(AND_PelvicCurtainT) && !AND_Slot32.HasKeyword(AND_AssCurtain) && !AND_Slot32.HasKeyword(AND_AssCurtainT) && !AND_Slot32.HasKeyword(AND_Miniskirt) && !AND_Slot32.HasKeyword(AND_MiniskirtT)
				CurtainKeywords = False
			Else
				CurtainKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_ArmorTop) && !AND_Slot32.HasKeyword(AND_ArmorTopT) && !AND_Slot32.HasKeyword(AND_ArmorTop_NoCover)
				TopKeywords = False
			Else
				TopKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_ArmorBottom) && !AND_Slot32.HasKeyword(AND_ArmorBottomT) && !AND_Slot32.HasKeyword(AND_ArmorBottom_NoCover) && !AND_Slot32.HasKeyword(AND_Hotpants) && !AND_Slot32.HasKeyword(AND_HotpantsT) && !AND_Slot32.HasKeyword(AND_ShowgirlSkirt) && !AND_Slot32.HasKeyword(AND_ShowgirlSkirtT)
				BottomKeywords = False
			Else
				BottomKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Bra) && !AND_Slot32.HasKeyword(AND_BraT) && !AND_Slot32.HasKeyword(AND_Bra_NoCover)
				BraKeywords = False
			Else
				BraKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_Underwear) && !AND_Slot32.HasKeyword(AND_UnderwearT) && !AND_Slot32.HasKeyword(AND_Underwear_NoCover) && !AND_Slot32.HasKeyword(AND_Thong) && !AND_Slot32.HasKeyword(AND_ThongT) && !AND_Slot32.HasKeyword(AND_Thong_NoCover) && !AND_Slot32.HasKeyword(AND_CString) && !AND_Slot32.HasKeyword(AND_CStringT)
				UnderwearKeywords = False
			Else
				UnderwearKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_NearlyNaked) && !AND_Slot32.HasKeyword(AND_NipplePasties) && !AND_Slot32.HasKeyword(AND_VaginaPasties) && !AND_Slot32.HasKeyword(AND_Microskirt) && !AND_Slot32.HasKeyword(AND_EffectivelyNaked)
				ExtraKeywords = False
			Else
				ExtraKeywords = True
			EndIf
			
			If SLA_Found.GetValue() == 1
				If !AND_Slot32.HasKeyword(SLA_ArmorHalfNaked) && !AND_Slot32.HasKeyword(SLA_ArmorPartBottom) && !AND_Slot32.HasKeyword(SLA_ArmorPartTop) && !AND_Slot32.HasKeyword(SLA_Brabikini) && !AND_Slot32.HasKeyword(SLA_FullSkirt) && !AND_Slot32.HasKeyword(SLA_MicroHotpants) && !AND_Slot32.HasKeyword(SLA_MicroSkirt) && !AND_Slot32.HasKeyword(SLA_MiniSkirt) && !AND_Slot32.HasKeyword(SLA_PantiesNormal) && !AND_Slot32.HasKeyword(SLA_PantsNormal) && !AND_Slot32.HasKeyword(SLA_PastiesCrotch) && !AND_Slot32.HasKeyword(SLA_PastiesNipple) && !AND_Slot32.HasKeyword(SLA_PelvicCurtain) && !AND_Slot32.HasKeyword(SLA_ShowgirlSkirt) && !AND_Slot32.HasKeyword(SLA_ThongCString) && !AND_Slot32.HasKeyword(SLA_ThongGstring) && !AND_Slot32.HasKeyword(SLA_ThongLowleg) && !AND_Slot32.HasKeyword(SLA_ThongT)
					BakaKeywords = False
				Else
					BakaKeywords = True
				EndIf
			EndIf
			
			If CurtainKeywords == False && TopKeywords == False && BottomKeywords == False && BraKeywords == False && UnderwearKeywords == False && ExtraKeywords == False && BakaKeywords == False
				BraLayer_Cover.SetValue(1) ;True
				Chest_Cover.SetValue(1) ;True
				Underwear_Cover.SetValue(1) ;True
				BottomGenital_Cover.SetValue(1) ;True
				BottomAss_Cover.SetValue(1) ;True
				BottomGenital_Cover.SetValue(1) ;True
			EndIf
		EndIf
		
		;/------------------------/;
		;/-----LAYER ANALYZE------/;
		;/------------------------/;
		
		;Top conditions
		If TopCurtainLayer_Cover.GetValue() == 1 ;True
			PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingBraFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingChestFaction, 0)
		Else
			If BraLayer_Cover.GetValue() == 1 && Chest_Cover.GetValue() == 1 ;True-True
				PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingBraFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingChestFaction, 0)
			ElseIf BraLayer_Cover.GetValue() == 0 && Chest_Cover.GetValue() == 1 ;False-True
				PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingBraFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingChestFaction, 0)
			ElseIf BraLayer_Cover.GetValue() == 0 && Chest_Cover.GetValue() == 0 ;False-False
				PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingBraFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingChestFaction, 1)
			ElseIf BraLayer_Cover.GetValue() == 1 && Chest_Cover.GetValue() == 0 ;True-False
				If PlayerRef.WornHasKeyword(AND_ArmorTopT) || PlayerRef.WornHasKeyword(AND_ArmorTop_NoCover) || PlayerRef.WornHasKeyword(AND_NipplePasties) || (SLA_PastiesNipple != None && PlayerRef.WornHasKeyword(SLA_PastiesNipple))
					PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingBraFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingChestFaction, 1)
				Else
					PlayerRef.SetFactionRank(AND_ToplessFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingBraFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingChestFaction, 1)
				EndIf
			EndIf
		EndIf
		
		;Bottom conditions
		If PelvicCurtain_Cover.GetValue() == 1 && AssCurtain_Cover.GetValue() == 1 ;True-True
			PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
		ElseIf PelvicCurtain_Cover.GetValue() == 1 && AssCurtain_Cover.GetValue() == 0 ;True-False
			PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			If Underwear_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 1 ;True-True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 1 ;False-True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 0 ;False-False
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
			ElseIf Underwear_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 0 ;True-False
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
			EndIf
		ElseIf PelvicCurtain_Cover.GetValue() == 0 && AssCurtain_Cover.GetValue() == 1 ;False-True
			PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			If Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 1 ;True-True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 1 ;False-True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 0 ;False-False
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
			ElseIf Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 0 ;True-False
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
			EndIf
		Else
			If Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 1 ;True-True-True
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 1 ;False-True-True
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 1 ;False-False-True
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 0 ;False-True-False
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 0 ;False-False-False
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
			ElseIf Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 1 ;True-False-True
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 0 ;True-True-False
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
			ElseIf Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 0 ;True-False-False
				If PlayerRef.WornHasKeyword(AND_HotpantsT) || PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(AND_Microskirt) || PlayerRef.WornHasKeyword(AND_VaginaPasties) || (SLA_MicroSkirt != None && PlayerRef.WornHasKeyword(SLA_MicroSkirt)) || (SLA_PastiesCrotch != None && PlayerRef.WornHasKeyword(SLA_PastiesCrotch))
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
				Else
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
				EndIf
			EndIf
		EndIf
		
		;Nudity Check
		If PlayerRef.GetFactionRank(AND_BottomlessFaction) == 1 && PlayerRef.GetFactionRank(AND_ToplessFaction) == 1 && !PlayerRef.WornHasKeyword(AND_NearlyNaked) && (SLA_ArmorHalfNaked == None || (SLA_ArmorHalfNaked != None && !PlayerRef.WornHasKeyword(SLA_ArmorHalfNaked)))
			PlayerRef.SetFactionRank(AND_NudeActorFaction, 1)
		Else
			PlayerRef.SetFactionRank(AND_NudeActorFaction, 0)
		EndIf
		
	Else
		PlayerRef.SetFactionRank(AND_ShowingBraFaction, 0)
		PlayerRef.SetFactionRank(AND_ShowingChestFaction, 0)
		
		PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
		PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
		PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
		
		PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
		PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
		PlayerRef.SetFactionRank(AND_NudeActorFaction, 0)
	EndIf

Int EventHandle = ModEvent.Create("AdvancedNudityDetectionUpdate")
ModEvent.Send(EventHandle)

If AND_DebugMode.GetValue() == 1
	Debug.Notification("AND - Update Finished.")
EndIf
EndFunction