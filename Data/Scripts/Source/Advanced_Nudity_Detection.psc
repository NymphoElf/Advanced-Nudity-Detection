ScriptName Advanced_Nudity_Detection extends Quest

AND_FlashScript Property FlashScript Auto

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
Keyword Property AND_VaginaLeggings Auto ;See "Aradia Snake Rogue" armor mod for what this keyword means (Use CString instead?)
Keyword Property AND_VaginaLeggingsT Auto

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

Bool Property TopCurtainLayer_Cover = False Auto ;True means Curtain is covering everything underneath, False means it is not
Bool Property BraLayer_Cover = False Auto ;True means Bra cannot be see regardless of reason, False means bra can be seen
Bool Property Chest_Cover = False Auto ;True means Chest cannot be seen, False means chest can be seen

Bool Property PelvicCurtain_Cover = False Auto ;True means Curtain is covering everything underneath, False means it is not
Bool Property AssCurtain_Cover = False Auto ;True means Curtain is covering everything underneath, False means it is not
Bool Property BottomGenital_Cover = False Auto ;False means Genitals are not Covered
Bool Property BottomAss_Cover = False Auto ;False means Ass is not Covered
Bool Property Underwear_Cover = False Auto ;False means Underwear can be seen, True means Underwear cannot regardless of reason

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
	
	;Remove when finished - Not needed when properly integrated - SexyAdventures will fire function on update scan
	RegisterForSingleUpdate(10.0) ;When initialized, register the OnUpdate event to fire in 10 seconds
	RegisterForUpdateGameTime(0.25) ;When initialized, register the OnUpdateGameTime event to fire every 15 in-game minutes. This separate event is required for updating using Game Time instead of Real Time
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	If (akBaseObject == none || akBaseObject.GetName() == "")
		return
	EndIf
	
	RegisterForSingleUpdate(0.1)
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	If (akBaseObject == none || akBaseObject.GetName() == "")
		return
	EndIf
	
	RegisterForSingleUpdate(0.1)
EndEvent

Event OnUpdate()
	AND_LayerAnalyze()
EndEvent

Event OnUpdateGameTime()
	AND_LayerAnalyze()
EndEvent

Function AND_LayerAnalyze()

	Armor AND_Slot32 = PlayerRef.GetEquippedArmorInSlot(32)
	
	If !PlayerRef.WornHasKeyword(AND_CoversAll)
	
		;/--------------/;
		;/---TOP SCAN---/;
		;/--------------/;
		
		;Curtain Layer
		If PlayerRef.WornHasKeyword(AND_ChestCurtain) || PlayerRef.WornHasKeyword(AND_ChestCurtainT)
			TopCurtainLayer_Cover = FlashScript.TopCurtainCheck()
		Else
			TopCurtainLayer_Cover = False
		EndIf
		
		;Check for Vanilla armor
		If AND_Slot32 != None
		
			;Check Armor Layer
			If AND_Slot32.HasKeyword(AND_ArmorTop)
				BraLayer_Cover = True
				Chest_Cover = True
			ElseIf AND_Slot32.HasKeyword(AND_ArmorTopT)
				Bool Top_Covering = FlashScript.TopTransparentArmorCheck()
				
				If Top_Covering == True
					BraLayer_Cover = True
					Chest_Cover = True
				Else
					If PlayerRef.WornHasKeyword(AND_Bra)
						BraLayer_Cover = False
						Chest_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_BraT)
						BraLayer_Cover = False
						Chest_Cover = FlashScript.TransparentBraCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Bra_NoCover)
						BraLayer_Cover = False
						Chest_Cover = False
					Else
						BraLayer_Cover = True
						Chest_Cover = False
					EndIf
				EndIf
			ElseIf AND_Slot32.HasKeyword(AND_ArmorTop_NoCover)
				
				If PlayerRef.WornHasKeyword(AND_Bra)
					BraLayer_Cover = False
					Chest_Cover = True
				ElseIf PlayerRef.WornHasKeyword(AND_BraT)
					BraLayer_Cover = False
					Chest_Cover = FlashScript.TransparentBraCheck()
				ElseIf PlayerRef.WornHasKeyword(AND_Bra_NoCover)
					BraLayer_Cover = False
					Chest_Cover = False
				Else
					BraLayer_Cover = True
					Chest_Cover = False
				EndIf
				
			;Check Bra Layer
			ElseIf AND_Slot32.HasKeyword(AND_Bra)
				BraLayer_Cover = False
				Chest_Cover = True
			ElseIf AND_Slot32.HasKeyword(AND_BraT)
				BraLayer_Cover = False
				Chest_Cover = FlashScript.TransparentBraCheck()
			ElseIf AND_Slot32.HasKeyword(AND_Bra_NoCover)
				BraLayer_Cover = False
				Chest_Cover = False
			Else
				;Slot 32 is not empty, yet no above keyword is found. Assume Vanilla Armor
				BraLayer_Cover = True
				Chest_Cover = True
			EndIf
		Else
			;Perform Full Scan
			
			;Armor Layer
			If PlayerRef.WornHasKeyword(AND_ArmorTop)
				BraLayer_Cover = True
				Chest_Cover = True
			ElseIf PlayerRef.WornHasKeyword(AND_ArmorTopT)
				BraLayer_Cover = FlashScript.TopTransparentArmorCheck()
			Else
				BraLayer_Cover = False
			EndIf
			
			;Bra Layer
			If PlayerRef.WornHasKeyword(AND_Bra)
				Chest_Cover = True
			ElseIf PlayerRef.WornHasKeyword(AND_BraT)
				Chest_Cover = FlashScript.TransparentBraCheck()
			Else
				Chest_Cover = False
			EndIf
		EndIf
		
		;/-----------------/;
		;/---Bottom SCAN---/;
		;/-----------------/;
		
		;Pelvic Curtain Layer
		If PlayerRef.WornHasKeyword(AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
			PelvicCurtain_Cover = FlashScript.PelvicCurtainCheck()
		Else
			PelvicCurtain_Cover = False
		EndIf
		
		;Ass Curtain Layer
		If PlayerRef.WornHasKeyword(AND_AssCurtain) || PlayerRef.WornHasKeyword(AND_AssCurtainT) || PlayerRef.WornHasKeyword(AND_Miniskirt) || PlayerRef.WornHasKeyword(AND_MiniskirtT)
			AssCurtain_Cover = FlashScript.AssCurtainCheck()
		Else
			AssCurtain_Cover = False
		EndIf
		
		;Check for Vanilla armor
		If AND_Slot32 != None
			If AND_Slot32.HasKeyword(AND_ArmorBottom)
				BottomGenital_Cover = True
				BottomAss_Cover = True
				Underwear_Cover = True
			ElseIf AND_Slot32.HasKeyword(AND_ArmorBottomT)
				Bool Bottom_Covering = FlashScript.BottomTransparentArmorCheck()
				
				If Bottom_Covering == True
					BottomGenital_Cover = True
					BottomAss_Cover = True
					Underwear_Cover = True
				Else
					If PlayerRef.WornHasKeyword(AND_Underwear)
					
					Else
						Underwear_Cover = True
						BottomAss_Cover = False
						BottomGenital_Cover = False
					EndIf
				EndIf
			ElseIf AND_Slot32.HasKeyword(AND_ArmorBottom_NoCover)
			
			;Check Underwear/Thong
			ElseIf AND_Slot32.HasKeyword(AND_Underwear)
				BottomAss_Cover = True
				BottomGenital_Cover = True
				Underwear_Cover = False
			ElseIf AND_Slot32.HasKeyword(AND_UnderwearT)
				Bool Slot32_TransparentUnderwearCheck = FlashScript.TransparentUnderwearCheck()
				
				Underwear_Cover = False
				BottomAss_Cover = Slot32_TransparentUnderwearCheck
				BottomGenital_Cover = Slot32_TransparentUnderwearCheck
			ElseIf AND_Slot32.HasKeyword(AND_Thong)
				Underwear_Cover = False
				BottomAss_Cover = False
				BottomGenital_Cover = True
			ElseIf AND_Slot32.HasKeyword(AND_ThongT)
				Underwear_Cover = False
				BottomAss_Cover = False
				BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
			
			Else
				;Slot 32 is not empty, yet no above keyword is found. Assume Vanilla Armor
				BottomGenital_Cover = True
				BottomAss_Cover = True
				Underwear_Cover = True
			EndIf
		Else
			;Perform Full scan
			
			;Bottom Armor Layer
			If PlayerRef.WornHasKeyword(AND_ArmorBottom)
				BottomAss_Cover = True
				BottomGenital_Cover = True
				Underwear_Cover = True
			ElseIf PlayerRef.WornHasKeyword(AND_ArmorBottomT)
				Underwear_Cover = FlashScript.BottomTransparentArmorCheck()
				
				If Underwear_Cover == True
					BottomGenital_Cover = True
					BottomAss_Cover = True
				EndIf
			Else
				If PlayerRef.WornHasKeyword(AND_Hotpants) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirt)
					BottomAss_Cover = True
					BottomGenital_Cover = True
					Underwear_Cover = True				
				ElseIf PlayerRef.WornHasKeyword(AND_Hotpants) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
					BottomGenital_Cover = True
					
					If PlayerRef.WornHasKeyword(AND_Underwear)
						BottomAss_Cover = True
						Underwear_Cover = FlashScript.TransparentShowgirlCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover = FlashScript.TransparentShowgirlCheck()
						If Underwear_Cover == True
							BottomAss_Cover = True
						Else
							BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
						Underwear_Cover = FlashScript.TransparentShowgirlCheck()
						If Underwear_Cover == True
							BottomAss_Cover = True
						Else
							BottomAss_Cover = False
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Thong) || PlayerRef.WornHasKeyword(AND_ThongT) || PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover = True
						BottomAss_Cover = FlashScript.TransparentShowgirlCheck()
					Else
						Underwear_Cover = True
						BottomAss_Cover = FlashScript.TransparentShowgirlCheck()
					EndIf
					
				ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirt)
					BottomAss_Cover = True
					If PlayerRef.WornHasKeyword(AND_Underwear) || PlayerRef.WornHasKeyword(AND_Thong)
						BottomGenital_Cover = True
						Underwear_Cover = FlashScript.TransparentHotpantsCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT) || PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
						Underwear_Cover = FlashScript.TransparentHotpantsCheck()
						If Underwear_Cover == True
							BottomGenital_Cover = True
						Else
							If PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
								BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
							Else
								BottomGenital_Cover = FlashScript.CStringCheck()
								Underwear_Cover = !BottomGenital_Cover
							EndIf
						EndIf
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover = FlashScript.TransparentHotpantsCheck()
						If Underwear_Cover == True
							BottomGenital_Cover = True
						Else
							BottomGenital_Cover = False
						EndIf
					Else
						Underwear_Cover = True
						BottomGenital_Cover = FlashScript.TransparentHotpantsCheck()
					EndIf
						
				ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT) && PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
					Bool Hotpants_Covering = FlashScript.TransparentHotpantsCheck()
					Bool Showgirl_Covering = FlashScript.TransparentShowgirlCheck()
					
					If Hotpants_Covering == True && Showgirl_Covering == True
						BottomAss_Cover = True
						BottomGenital_Cover = True
						Underwear_Cover = True
					ElseIf Hotpants_Covering == True && Showgirl_Covering == False
						BottomGenital_Cover = True
						If PlayerRef.WornHasKeyword(AND_Underwear)
							Underwear_Cover = False
							BottomAss_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
							Underwear_Cover = False
							BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
						ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
							Underwear_Cover = False
							BottomAss_Cover = False
						Else
							Underwear_Cover = True
							BottomAss_Cover = False
						EndIf
					ElseIf Hotpants_Covering == False && Showgirl_Covering == True
						BottomAss_Cover = True
						If PlayerRef.WornHasKeyword(AND_Underwear)
							Underwear_Cover = False
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
							Underwear_Cover = False
							BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
						ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
							BottomGenital_Cover = FlashScript.CStringCheck()
							Underwear_Cover = !BottomGenital_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
							Underwear_Cover = False
							BottomGenital_Cover = False
						Else
							Underwear_Cover = True
							BottomGenital_Cover = False
						EndIf
					Else
						If PlayerRef.WornHasKeyword(AND_Underwear)
							Underwear_Cover = False
							BottomAss_Cover = True
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
							Underwear_Cover = False
							BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
							BottomGenital_Cover = BottomAss_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Thong)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
						ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
							BottomAss_Cover = False
							BottomGenital_Cover = FlashScript.CStringCheck()
							Underwear_Cover = !BottomGenital_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = False
						Else
							Underwear_Cover = True
							BottomAss_Cover = False
							BottomGenital_Cover = False
						EndIf
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_Hotpants)
					BottomGenital_Cover = True
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover = False
						BottomAss_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover = False
						BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
						Underwear_Cover = False
						BottomAss_Cover = False
					Else
						Underwear_Cover = True
						BottomAss_Cover = False
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_ShowgirlSkirt)
					BottomAss_Cover = True
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover = False
						BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover = False
						BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
						BottomGenital_Cover = FlashScript.CStringCheck()
						Underwear_Cover = !BottomGenital_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover = False
						BottomGenital_Cover = False
					Else
						Underwear_Cover = True
						BottomGenital_Cover = False
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_HotpantsT)
					Bool Hotpants_Covering = FlashScript.TransparentHotpantsCheck()
					If Hotpants_Covering == True
						BottomGenital_Cover = True
						If PlayerRef.WornHasKeyword(AND_Underwear)
							Underwear_Cover = False
							BottomAss_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
							Underwear_Cover = False
							BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
						ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover)
							Underwear_Cover = False
							BottomAss_Cover = False
						Else
							Underwear_Cover = True
							BottomAss_Cover = False
						EndIf
					Else
						If PlayerRef.WornHasKeyword(AND_Underwear)
							Underwear_Cover = False
							BottomAss_Cover = True
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
							Underwear_Cover = False
							BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
							BottomGenital_Cover = BottomAss_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Thong)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
						ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
							BottomAss_Cover = False
							BottomGenital_Cover = FlashScript.CStringCheck()
							Underwear_Cover = !BottomGenital_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = False
						Else
							Underwear_Cover = True
							BottomAss_Cover = False
							BottomGenital_Cover = False
						EndIf
					EndIf
				ElseIf PlayerRef.WornHasKeyword(AND_ShowgirlSkirtT)
					Bool Showgirl_Covering = FlashScript.TransparentShowgirlCheck()
					If Showgirl_Covering == True
						BottomAss_Cover = True
						If PlayerRef.WornHasKeyword(AND_Underwear) || PlayerRef.WornHasKeyword(AND_Thong)
							Underwear_Cover = False
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT) || PlayerRef.WornHasKeyword(AND_ThongT)
							Underwear_Cover = False
							BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
						ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
							BottomGenital_Cover = FlashScript.CStringCheck()
							Underwear_Cover = !BottomGenital_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
							Underwear_Cover = False
							BottomGenital_Cover = False
						EndIf
					Else
						If PlayerRef.WornHasKeyword(AND_Underwear)
							Underwear_Cover = False
							BottomAss_Cover = True
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
							Underwear_Cover = False
							BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
							BottomGenital_Cover = BottomAss_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Thong)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = True
						ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
						ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
							BottomAss_Cover = False
							BottomGenital_Cover = FlashScript.CStringCheck()
							Underwear_Cover = !BottomGenital_Cover
						ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
							Underwear_Cover = False
							BottomAss_Cover = False
							BottomGenital_Cover = False
						Else
							Underwear_Cover = True
							BottomAss_Cover = False
							BottomGenital_Cover = False
						EndIf
					EndIf
				Else
					If PlayerRef.WornHasKeyword(AND_Underwear)
						Underwear_Cover = False
						BottomAss_Cover = True
						BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_UnderwearT)
						Underwear_Cover = False
						BottomAss_Cover = FlashScript.TransparentUnderwearCheck()
						BottomGenital_Cover = BottomAss_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Thong)
						Underwear_Cover = False
						BottomAss_Cover = False
						BottomGenital_Cover = True
					ElseIf PlayerRef.WornHasKeyword(AND_ThongT)
						Underwear_Cover = False
						BottomAss_Cover = False
						BottomGenital_Cover = FlashScript.TransparentUnderwearCheck()
					ElseIf PlayerRef.WornHasKeyword(AND_CString) || PlayerRef.WornHasKeyword(AND_CStringT)
						BottomAss_Cover = False
						BottomGenital_Cover = FlashScript.CStringCheck()
						Underwear_Cover = !BottomGenital_Cover
					ElseIf PlayerRef.WornHasKeyword(AND_Underwear_NoCover) || PlayerRef.WornHasKeyword(AND_Thong_NoCover)
						Underwear_Cover = False
						BottomAss_Cover = False
						BottomGenital_Cover = False
					Else
						Underwear_Cover = True
						BottomAss_Cover = False
						BottomGenital_Cover = False
					EndIf
				EndIf
			EndIf
			
			;/------------------------/;
			;/-----LAYER ANALYZE------/;
			;/------------------------/;
			
			;Top conditions
			If TopCurtainLayer_Cover == True
				PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingBraFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingChestFaction, 0)
			Else
				If BraLayer_Cover == True && Chest_Cover == True
					PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingBraFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingChestFaction, 0)
				ElseIf BraLayer_Cover == False && Chest_Cover == True
					PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingBraFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingChestFaction, 0)
				ElseIf BraLayer_Cover == False && Chest_Cover == False
					PlayerRef.SetFactionRank(AND_ToplessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingBraFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingChestFaction, 1)
				ElseIf BraLayer_Cover == True && Chest_Cover == False
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
			If PelvicCurtain_Cover == True && AssCurtain_Cover == True
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
			ElseIf PelvicCurtain_Cover == True && AssCurtain_Cover == False
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				If Underwear_Cover == True && BottomAss_Cover == True
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
				ElseIf Underwear_Cover == False && BottomAss_Cover == True
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
				ElseIf Underwear_Cover == False && BottomAss_Cover == False
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
				ElseIf Underwear_Cover == True && BottomAss_Cover == False
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
				EndIf
			ElseIf PelvicCurtain_Cover == False && AssCurtain_Cover == True
				PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
				PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
				If Underwear_Cover == True && BottomGenital_Cover == True
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				ElseIf Underwear_Cover == False && BottomGenital_Cover == True
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
				ElseIf Underwear_Cover == False && BottomGenital_Cover == False
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
				ElseIf Underwear_Cover == True && BottomGenital_Cover == False
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
				EndIf
			Else
				If Underwear_Cover == True && BottomGenital_Cover == True && BottomAss_Cover == True
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
				ElseIf Underwear_Cover == False && BottomGenital_Cover == True && BottomAss_Cover == True
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
				ElseIf Underwear_Cover == False && BottomGenital_Cover == False && BottomAss_Cover == True
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
				ElseIf Underwear_Cover == False && BottomGenital_Cover == True && BottomAss_Cover == False
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
				ElseIf Underwear_Cover == False && BottomGenital_Cover == False && BottomAss_Cover == False
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
				ElseIf Underwear_Cover == True && BottomGenital_Cover == False && BottomAss_Cover == True
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 0)
				ElseIf Underwear_Cover == True && BottomGenital_Cover == True && BottomAss_Cover == False
					PlayerRef.SetFactionRank(AND_BottomlessFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingGenitalsFaction, 0)
					PlayerRef.SetFactionRank(AND_ShowingAssFaction, 1)
				ElseIf Underwear_Cover == True && BottomGenital_Cover == False && BottomAss_Cover == False
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

EndFunction