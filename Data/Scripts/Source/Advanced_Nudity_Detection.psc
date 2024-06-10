ScriptName Advanced_Nudity_Detection extends ReferenceAlias

;AND_FlashScript Property FlashScript Auto

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

;/
Bool Property TopCurtainLayer_Cover = 0 ;False Auto ;1 ;True means Curtain is covering everything underneath, 0 ;False means it is not
Bool Property BraLayer_Cover = 0 ;False Auto ;1 ;True means Bra cannot be see regardless of reason, 0 ;False means bra can be seen
Bool Property Chest_Cover = 0 ;False Auto ;1 ;True means Chest cannot be seen, 0 ;False means chest can be seen

Bool Property PelvicCurtain_Cover = 0 ;False Auto ;1 ;True means Curtain is covering everything underneath, 0 ;False means it is not
Bool Property AssCurtain_Cover = 0 ;False Auto ;1 ;True means Curtain is covering everything underneath, 0 ;False means it is not
Bool Property BottomGenital_Cover = 0 ;False Auto ;0 ;False means Genitals are not Covered
Bool Property BottomAss_Cover = 0 ;False Auto ;0 ;False means Ass is not Covered
Bool Property Underwear_Cover = 0 ;False Auto ;0 ;False means Underwear can be seen, 1 ;True means Underwear cannot regardless of reason
/;

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
	
	Debug.Notification("A.N.D. Initialized")
EndEvent

Event OnUpdate()
	AND_LayerAnalyze()
EndEvent

Event OnUpdateGameTime()
	;Debug.Notification("AND Update Game Time")
	AND_DiceRoll()
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	;Debug.Notification("AND - Object Equipped.")
	If (akBaseObject == none || akBaseObject.GetName() == "")
		;Debug.Notification("AND - Equipped None Object")
		return
	EndIf
	
	RegisterForSingleUpdate(0.1)
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	;Debug.Notification("AND - Object Unequipped")
	If (akBaseObject == none || akBaseObject.GetName() == "")
		;Debug.Notification("AND - Unequipped None Object")
		return
	EndIf
	
	RegisterForSingleUpdate(0.1)
EndEvent

Function AND_DiceRoll()
	;Debug.Notification("AND Dice Roll")
	TopCurtainRoll.SetValue(Utility.RandomInt(1,100))
	PelvicCurtainRoll.SetValue(Utility.RandomInt(1,100))
	AssCurtainRoll.SetValue(Utility.RandomInt(1,100))
	CStringRoll.SetValue(Utility.RandomInt(1,100))
	TopTransparentRoll.SetValue(Utility.RandomInt(0,1))
	BottomTransparentRoll.SetValue(Utility.RandomInt(0,1))
	BraTransparentRoll.SetValue(Utility.RandomInt(0,1))
	UnderwearTransparentRoll.SetValue(Utility.RandomInt(0,1))
	HotpantsTransparentRoll.SetValue(Utility.RandomInt(0,1))
	ShowgirlTransparentRoll.SetValue(Utility.RandomInt(0,1))
	
	;Debug.Notification("AND Flash Script - Send Layer Analyze")
	AND_LayerAnalyze()
	
EndFunction

Bool Function TopCurtainCheck()
	If PlayerRef.WornHasKeyword(AND_ChestCurtain)
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskLow)
			If TopCurtainRoll.GetValue() <= 20
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRisk)
			If TopCurtainRoll.GetValue() <= 35
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskHigh)
			If TopCurtainRoll.GetValue() <= 50
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskExtreme)
			If TopCurtainRoll.GetValue() <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskUltra)
			If TopCurtainRoll.GetValue() <= 80
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_ChestCurtainT)
		If PlayerRef.WornHasKeyword(AND_ChestFlashRiskLow)
			If TopCurtainRoll.GetValue() <= 55
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRisk)
			If TopCurtainRoll.GetValue() <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskHigh)
			If TopCurtainRoll.GetValue() <= 75
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskExtreme)
			If TopCurtainRoll.GetValue() <= 85
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ChestFlashRiskUltra)
			If TopCurtainRoll.GetValue() <= 95
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Int Function TopTransparentArmorCheck()
	return TopTransparentRoll.GetValue() as Int
EndFunction

Int Function TransparentBraCheck()
	return BraTransparentRoll.GetValue() as Int
EndFunction

Bool Function PelvicCurtainCheck()
	If PlayerRef.WornHasKeyword(AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AND_Miniskirt)
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskLow)
			If PelvicCurtainRoll.GetValue() <= 20
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRisk)
			If PelvicCurtainRoll.GetValue() <= 35
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskHigh)
			If PelvicCurtainRoll.GetValue() <= 50
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskExtreme)
			If PelvicCurtainRoll.GetValue() <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskUltra)
			If PelvicCurtainRoll.GetValue() <= 80
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AND_PelvicFlashRiskLow)
			If PelvicCurtainRoll.GetValue() <= 55
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRisk)
			If PelvicCurtainRoll.GetValue() <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskHigh)
			If PelvicCurtainRoll.GetValue() <= 75
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskExtreme)
			If PelvicCurtainRoll.GetValue() <= 85
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_PelvicFlashRiskUltra)
			If PelvicCurtainRoll.GetValue() <= 95
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
	If PlayerRef.WornHasKeyword(AND_AssCurtain) || PlayerRef.WornHasKeyword(AND_Miniskirt)
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskLow)
			If AssCurtainRoll.GetValue() <= 20
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRisk)
			If AssCurtainRoll.GetValue() <= 35
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskHigh)
			If AssCurtainRoll.GetValue() <= 50
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskExtreme)
			If AssCurtainRoll.GetValue() <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskUltra)
			If AssCurtainRoll.GetValue() <= 80
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_AssCurtainT) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AND_AssFlashRiskLow)
			If AssCurtainRoll.GetValue() <= 55
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRisk)
			If AssCurtainRoll.GetValue() <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskHigh)
			If AssCurtainRoll.GetValue() <= 75
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskExtreme)
			If AssCurtainRoll.GetValue() <= 85
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_AssFlashRiskUltra)
			If AssCurtainRoll.GetValue() <= 95
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	EndIf
EndFunction

Int Function BottomTransparentArmorCheck()
	return BottomTransparentRoll.GetValue() as Int
EndFunction

Int Function TransparentHotpantsCheck()
	return HotpantsTransparentRoll.GetValue() as Int
EndFunction

Int Function TransparentShowgirlCheck()
	return ShowgirlTransparentRoll.GetValue() as Int
EndFunction

Int Function TransparentUnderwearCheck()
	return UnderwearTransparentRoll.GetValue() as Int
EndFunction

Bool Function CStringCheck()
	If PlayerRef.WornHasKeyword(AND_CString)
		If CStringRoll.GetValue() <= 75
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AND_CStringT)
		If CStringRoll.GetValue() <= 90
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction

Function AND_LayerAnalyze()
	;;Debug.Notification("AND - Layer Analyze")

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
		If PlayerRef.WornHasKeyword(AND_ArmorTop)
			BraLayer_Cover.SetValue(1) ;True
			Chest_Cover.SetValue(1) ;True
		ElseIf PlayerRef.WornHasKeyword(AND_ArmorTopT)
			Int TopCovering = TopTransparentArmorCheck()
			
			If TopCovering == 1 ;True
				BraLayer_Cover.SetValue(1) ;True
				Chest_Cover.SetValue(1) ;True
			Else
				;Bra Layer
				If PlayerRef.WornHasKeyword(AND_Bra)
					BraLayer_Cover.SetValue(0) ;False
					Chest_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_BraT)
					BraLayer_Cover.SetValue(0) ;False
					Chest_Cover.SetValue(TransparentBraCheck())
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
			If PlayerRef.WornHasKeyword(AND_Bra)
				BraLayer_Cover.SetValue(0) ;False
				Chest_Cover.SetValue(1) ;True
			ElseIf PlayerRef.WornHasKeyword(AND_BraT)
				BraLayer_Cover.SetValue(0) ;False
				Chest_Cover.SetValue(TransparentBraCheck())
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
		If PlayerRef.WornHasKeyword(AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
			PelvicCurtain_Cover.SetValue(PelvicCurtainCheck() as Int)
		Else
			PelvicCurtain_Cover.SetValue(0) ;False
		EndIf
		
		;Ass Curtain Layer
		If PlayerRef.WornHasKeyword(AND_AssCurtain) || PlayerRef.WornHasKeyword(AND_AssCurtainT) || PlayerRef.WornHasKeyword(AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
			AssCurtain_Cover.SetValue(AssCurtainCheck() as Int)
		Else
			AssCurtain_Cover.SetValue(0) ;False
		EndIf
			
		;Bottom Armor Layer
		If PlayerRef.WornHasKeyword(AND_ArmorBottom)
			BottomAss_Cover.SetValue(1) ;True
			BottomGenital_Cover.SetValue(1) ;True
			Underwear_Cover.SetValue(1) ;True
		ElseIf PlayerRef.WornHasKeyword(AND_ArmorBottomT)
			Underwear_Cover.SetValue(BottomTransparentArmorCheck())
			
			If Underwear_Cover.GetValue() == 1 ;True
				BottomGenital_Cover.SetValue(1) ;True
				BottomAss_Cover.SetValue(1) ;True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AND_ArmorBottom_NoCover)
			If PlayerRef.WornHasKeyword(AND_Underwear)
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(1) ;True
				BottomGenital_Cover.SetValue(1) ;True
			ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(TransparentUnderwearCheck())
				BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
			ElseIf PlayerRef.WornHasKeyword(AND_Thong)
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(0) ;False
				BottomGenital_Cover.SetValue(1) ;True
			ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
				Underwear_Cover.SetValue(0) ;False
				BottomAss_Cover.SetValue(0) ;False
				BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
			ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
			If PlayerRef.WornHasKeyword(AND_Hotpants) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirt)
				BottomAss_Cover.SetValue(1) ;True
				BottomGenital_Cover.SetValue(1) ;True
				Underwear_Cover.SetValue(1) ;True				
			ElseIf PlayerRef.WornHasKeyword(AND_Hotpants) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
				BottomGenital_Cover.SetValue(1) ;True
				
				If PlayerRef.WornHasKeyword(AND_Underwear)
					BottomAss_Cover.SetValue(1) ;True
					Underwear_Cover.SetValue(TransparentShowgirlCheck())
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
					Underwear_Cover.SetValue(TransparentShowgirlCheck())
					If Underwear_Cover.GetValue() == 1 ;True
						BottomAss_Cover.SetValue(1) ;True
					Else
						BottomAss_Cover.SetValue(TransparentUnderwearCheck())
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
					Underwear_Cover.SetValue(TransparentShowgirlCheck())
					If Underwear_Cover.GetValue() == 1 ;True
						BottomAss_Cover.SetValue(1) ;True
					Else
						BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Thong) || PlayerRef.WornHasKeyword(AND_ThongT) || PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
					Underwear_Cover.SetValue(1) ;True
					BottomAss_Cover.SetValue(TransparentShowgirlCheck())
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomAss_Cover.SetValue(TransparentShowgirlCheck())
				EndIf
				
			ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirt)
				BottomAss_Cover.SetValue(1) ;True
				If PlayerRef.WornHasKeyword(AND_Underwear) || PlayerRef.WornHasKeyword(AND_Thong)
					BottomGenital_Cover.SetValue(1) ;True
					Underwear_Cover.SetValue(TransparentHotpantsCheck())
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT) || PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
					Underwear_Cover.SetValue(TransparentHotpantsCheck())
					If Underwear_Cover.GetValue() == 1 ;True
						BottomGenital_Cover.SetValue(1) ;True
					Else
						If PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
							BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
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
					Underwear_Cover.SetValue(TransparentHotpantsCheck())
					If Underwear_Cover.GetValue() == 1 ;True
						BottomGenital_Cover.SetValue(1) ;True
					Else
						BottomGenital_Cover.SetValue(0) ;False
					EndIf
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomGenital_Cover.SetValue(TransparentHotpantsCheck())
				EndIf
					
			ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
				Bool Hotpants_Covering = TransparentHotpantsCheck() as Bool
				Bool Showgirl_Covering = TransparentShowgirlCheck() as Bool
				
				If Hotpants_Covering == True && Showgirl_Covering == True
					BottomAss_Cover.SetValue(1) ;True
					BottomGenital_Cover.SetValue(1) ;True
					Underwear_Cover.SetValue(1) ;True
				ElseIf Hotpants_Covering == True && Showgirl_Covering == False
					BottomGenital_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck())
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomAss_Cover.SetValue(0) ;False
					EndIf
				ElseIf Hotpants_Covering == False && Showgirl_Covering == True
					BottomAss_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck())
						BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
					ElseIf PlayerRef.WornHasKeyword(AND_Thong)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
			ElseIf PlayerRef.WornHasKeyword(AND_Hotpants)
				BottomGenital_Cover.SetValue(1) ;True
				If PlayerRef.WornHasKeyword(AND_Underwear)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(TransparentUnderwearCheck())
				ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(0) ;False
				Else
					Underwear_Cover.SetValue(1) ;True
					BottomAss_Cover.SetValue(0) ;False
				EndIf
			ElseIf PlayerRef.WornHasKeyword(AND_ShowgirlSkirt)
				BottomAss_Cover.SetValue(1) ;True
				If PlayerRef.WornHasKeyword(AND_Underwear)
					Underwear_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
					Underwear_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
				ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
				Bool Hotpants_Covering = TransparentHotpantsCheck() as Bool
				If Hotpants_Covering == True
					BottomGenital_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck())
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
					Else
						Underwear_Cover.SetValue(1) ;True
						BottomAss_Cover.SetValue(0) ;False
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck())
						BottomGenital_Cover = BottomAss_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Thong)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
				Bool Showgirl_Covering = TransparentShowgirlCheck() as Bool
				If Showgirl_Covering == True
					BottomAss_Cover.SetValue(1) ;True
					If PlayerRef.WornHasKeyword(AND_Underwear) || PlayerRef.WornHasKeyword(AND_Thong)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(1) ;True
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(TransparentUnderwearCheck())
						BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
					ElseIf PlayerRef.WornHasKeyword(AND_Thong)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(1) ;True
					ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover.SetValue(0) ;False
						BottomAss_Cover.SetValue(0) ;False
						BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
				If PlayerRef.WornHasKeyword(AND_Underwear)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(1) ;True
					BottomGenital_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(TransparentUnderwearCheck())
					BottomGenital_Cover.SetValue(BottomAss_Cover.GetValue())
				ElseIf PlayerRef.WornHasKeyword(AND_Thong)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(1) ;True
				ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
					Underwear_Cover.SetValue(0) ;False
					BottomAss_Cover.SetValue(0) ;False
					BottomGenital_Cover.SetValue(TransparentUnderwearCheck())
				ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
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
			
			If !AND_Slot32.HasKeyword(AND_Underwear) && !AND_Slot32.HasKeyword(AND_UnderwearT) && !AND_Slot32.HasKeyword (AND_Underwear_NoCover) && !AND_Slot32.HasKeyword(AND_Thong) && !AND_Slot32.HasKeyword(AND_ThongT) && !AND_Slot32.HasKeyword(AND_Thong_NoCover) && !AND_Slot32.HasKeyword(AND_CString) && !AND_Slot32.HasKeyword(AND_CStringT)
				UnderwearKeywords = False
			Else
				UnderwearKeywords = True
			EndIf
			
			If !AND_Slot32.HasKeyword(AND_NearlyNaked) && !AND_Slot32.HasKeyword(AND_NipplePasties) && !AND_Slot32.HasKeyword(AND_VaginaPasties)
				ExtraKeywords = False
			Else
				ExtraKeywords = True
			EndIf
			
			If CurtainKeywords == False && TopKeywords == False && BottomKeywords == False && BraKeywords == False && UnderwearKeywords == False && ExtraKeywords == False
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
				If PlayerRef.WornHasKeyword(AND_ArmorTopT) || PlayerRef.WornHasKeyword(AND_ArmorTop_NoCover) || PlayerRef.WornHasKeyword(AND_NipplePasties)
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
		If PelvicCurtain_Cover.GetValue() == 1 && AssCurtain_Cover.GetValue() == 1 ;True
			PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
		ElseIf PelvicCurtain_Cover.GetValue() == 1 && AssCurtain_Cover.GetValue() == 0 ;False
			PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			If Underwear_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 1 ;True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 1 ;True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomAss_Cover.GetValue() == 0 ;False
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
			ElseIf Underwear_Cover.GetValue() == 1 && BottomAss_Cover.GetValue() == 0 ;False
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
			EndIf
		ElseIf PelvicCurtain_Cover.GetValue() == 0 && AssCurtain_Cover.GetValue() == 1 ;True
			PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			If Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 1 ;True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 1 ;True
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
			ElseIf Underwear_Cover.GetValue() == 0 && BottomGenital_Cover.GetValue() == 0 ;False
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
			ElseIf Underwear_Cover.GetValue() == 1 && BottomGenital_Cover.GetValue() == 0 ;False
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
				If PlayerRef.WornHasKeyword(AND_HotpantsT) || PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(AND_Microskirt) || PlayerRef.WornHasKeyword(AND_VaginaPasties)
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
		If PlayerRef.GetFactionRank(AND_BottomlessFaction) == 1 && PlayerRef.GetFactionRank(AND_ToplessFaction) == 1 && !PlayerRef.WornHasKeyword(AND_NearlyNaked)
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

;Debug.Notification("AND - Update Finished.")

EndFunction