ScriptName Sexy_AdvancedNudity extends Quest

Actor Property PlayerRef Auto

Faction Property Sexy_ShowingAssFaction Auto
Faction Property Sexy_ShowingChestFaction Auto
Faction Property Sexy_ShowingGenitalsFaction Auto 
Faction Property Sexy_ShowingBraFaction Auto
Faction Property Sexy_ShowingUnderwearFaction Auto
Faction Property Sexy_ToplessFaction Auto
Faction Property Sexy_BottomlessFaction Auto
Faction Property Sexy_NudeActorFaction Auto

Keyword Property Sexy_ArmorTop Auto
Keyword Property Sexy_ArmorTopT Auto
Keyword Property Sexy_ArmorBottom Auto
Keyword Property Sexy_ArmorBottomT Auto
Keyword Property Sexy_Bra Auto
Keyword Property Sexy_BraT Auto
Keyword Property Sexy_CString Auto
Keyword Property Sexy_CStringT Auto
Keyword Property Sexy_Hotpants Auto
Keyword Property Sexy_HotpantsT Auto
Keyword Property Sexy_Microskirt Auto
Keyword Property Sexy_Miniskirt Auto
Keyword Property Sexy_MiniskirtT Auto
Keyword Property Sexy_ShowgirlSkirt Auto
Keyword Property Sexy_ShowgirlSkirtT Auto
Keyword Property Sexy_Thong Auto
Keyword Property Sexy_ThongT Auto
Keyword Property Sexy_Underwear Auto
Keyword Property Sexy_UnderwearT Auto
Keyword Property Sexy_VaginaLeggings Auto ;See "Aradia Snake Rogue" armor mod for what this keyword means
Keyword Property Sexy_VaginaLeggingsT Auto

Keyword Property Sexy_NearlyNaked Auto
Keyword Property Sexy_NipplePasties Auto
Keyword Property Sexy_VaginaPasties Auto

Keyword Property Sexy_AssCurtain Auto
Keyword Property Sexy_AssCurtainT Auto
Keyword Property Sexy_ChestCurtain Auto
Keyword Property Sexy_ChestCurtainT Auto
Keyword Property Sexy_PelvicCurtain Auto
Keyword Property Sexy_PelvicCurtainT Auto

Keyword Property Sexy_CoversAll Auto

Keyword Property Sexy_ChestFlashRiskLow Auto
Keyword Property Sexy_ChestFlashRisk Auto
Keyword Property Sexy_ChestFlashRiskHigh Auto
Keyword Property Sexy_ChestFlashRiskExtreme Auto
Keyword Property Sexy_ChestFlashRiskUltra Auto
Keyword Property Sexy_GenitalFlashRiskLow Auto
Keyword Property Sexy_GenitalFlashRisk Auto
Keyword Property Sexy_GenitalFlashRiskHigh Auto
Keyword Property Sexy_GenitalFlashRiskExtreme Auto
Keyword Property Sexy_GenitalFlashRiskUltra Auto
Keyword Property Sexy_AssFlashRiskLow Auto
Keyword Property Sexy_AssFlashRisk Auto
Keyword Property Sexy_AssFlashRiskHigh Auto
Keyword Property Sexy_AssFlashRiskExtreme Auto
Keyword Property Sexy_AssFlashRiskUltra Auto

Int Property Player_ChestFlashRisk = 0 Auto
Int Property Player_GenitalFlashRisk = 0 Auto
Int Property Player_AssFlashRisk = 0 Auto

Int Property Player_Top_CurtainLayer_State = 0 			Auto ;0 = None | 1 = Transparent | 2 = Normal | -1 = Irrelevant
Int Property Player_Top_ArmorLayer_State = 0 			Auto ;0 = None | 1 = Transparent | 2 = Normal
Int Property Player_Top_BraLayer_State = 0 				Auto ;0 = None | 1 = Transparent | 2 = Normal | -1 = Covered

Int Property Player_Bottom_FrontCurtainLayer_State = 0 	Auto ;0 = None | 1 = Transparent        | 2 = Normal | -1 = Irrelevant
Int Property Player_Bottom_AssCurtainLayer_State = 0 	Auto ;0 = None | 1 = Transparent        | 2 = Normal | -1 = Irrelevant
Int Property Player_Bottom_ArmorLayer_State = 0 		Auto ;0 = None | 1 = Transparent 	    | 2 = V Leggings 			| 3 = Showgirl Skirt | 4 = Hotpants | 5 = V Leggings + Showgirl	| 6 = Normal/Hotpants+Showgirl
Int Property Player_Bottom_UnderwearLayer_State = 0 	Auto ;0 = None | 1 = Transparent Thong  | 2 = Transparent Underwear | 3 =  CString 		 | 4 = Thong	| 5 = Normal Underwear 		| -1 = Covered
;The -1 values exist merely as a helpful debugging tool to verify working coverage

Int Property ChestFlashRoll = 0 Auto
Int Property GenitalFlashRoll = 0 Auto
Int Property AssFlashRoll = 0 Auto
Int Property CStringFlashRoll = 0 Auto

Bool Property Player_IsFlashingChest = False Auto
Bool Property Player_IsFlashingGenitals = False Auto
Bool Property Player_IsFlashingAss = False Auto
Bool Property Player_CStringRisk = False Auto
Bool Property Player_CStringNotSeen = False Auto

Event OnInit()
	If !PlayerRef.IsInFaction(Sexy_ShowingAssFaction)
		PlayerRef.AddToFaction(Sexy_ShowingAssFaction)
	EndIf
	If !PlayerRef.IsInFaction(Sexy_ShowingChestFaction)
		PlayerRef.AddToFaction(Sexy_ShowingChestFaction)
	EndIf
	If !PlayerRef.IsInFaction(Sexy_ShowingGenitalsFaction)
		PlayerRef.AddToFaction(Sexy_ShowingGenitalsFaction)
	EndIf
	If !PlayerRef.IsInFaction(Sexy_ShowingBraFaction)
		PlayerRef.AddToFaction(Sexy_ShowingBraFaction)
	EndIf
	If !PlayerRef.IsInFaction(Sexy_ShowingUnderwearFaction)
		PlayerRef.AddToFaction(Sexy_ShowingUnderwearFaction)
	EndIf
	If !PlayerRef.IsInFaction(Sexy_ToplessFaction)
		PlayerRef.AddToFaction(Sexy_ToplessFaction)
	EndIf
	If !PlayerRef.IsInFaction(Sexy_BottomlessFaction)
		PlayerRef.AddToFaction(Sexy_BottomlessFaction)
	EndIf
	If !PlayerRef.IsInFaction(Sexy_NudeActorFaction)
		PlayerRef.AddToFaction(Sexy_NudeActorFaction)
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
	Sexy_LayerAnalyze()
	Sexy_FlashRiskCheck()
EndEvent

Event OnUpdateGameTime()
	Sexy_LayerAnalyze()
	Sexy_FlashRiskCheck()
EndEvent

Function Sexy_LayerAnalyze()

	Armor Sexy_Slot32 = PlayerRef.GetEquippedArmorInSlot(32)

	;/------------------------/;
	;/---TOP LAYER SCAN---/;
	;/------------------------/;
	
	If !PlayerRef.WornHasKeyword(Sexy_CoversAll) ;This keyword make any checks here pointless
		
		;Check Slot 32 for vanilla armor, but not after checking for other keywords first.
		If Sexy_Slot32 != None
		
			;Check Armor Layer
			If Sexy_Slot32.HasKeyword(Sexy_ArmorTop)
				Player_Top_ArmorLayer_State = 2
				Player_Top_BraLayer_State = -1
			ElseIf Sexy_Slot32.HasKeyword(Sexy_ArmorTopT)
				Player_Top_ArmorLayer_State = 1
				
			;Check Bra Layer
			ElseIf Sexy_Slot32.HasKeyword(Sexy_Bra)
				Player_Top_ArmorLayer_State = 0 ;Bra is found, therefore cannot be vanilla armor
				Player_Top_BraLayer_State = 2
			ElseIf Sexy_Slot32.HasKeyword(Sexy_BraT)
				Player_Top_ArmorLayer_State = 0 ;Bra is found, therefore cannot be vanilla armor
				Player_Top_BraLayer_State = 1
			Else
				;Slot 32 is not empty, yet no above keyword is found. Assume Vanilla Armor
				Player_Top_ArmorLayer_State = 2
				Player_Top_BraLayer_State = -1
			EndIf
		Else
			;If Slot 32 is empty, set Layer state to 0 to allow next checks to properly function
			Player_Top_ArmorLayer_State = 0
		EndIf
		
		If Player_Top_ArmorLayer_State < 2
			;If Top Layer state is 2, none of these checks matter.
			If PlayerRef.WornHasKeyword(Sexy_ArmorTop)
				Player_Top_ArmorLayer_State = 2
				Player_Top_BraLayer_State = -1
			ElseIf PlayerRef.WornHasKeyword(Sexy_ArmorTopT)
				Player_Top_ArmorLayer_State = 1
			Else
				Player_Top_ArmorLayer_State = 0
			EndIf
			
			If Player_Top_ArmorLayer_State < 2 ;If Armor layer is STILL less than 2, move on to Bra Layer
				If PlayerRef.WornHasKeyword(Sexy_Bra)
					Player_Top_BraLayer_State = 2
				ElseIf PlayerRef.WornHasKeyword(Sexy_BraT)
					Player_Top_BraLayer_State = 1
				Else
					Player_Top_BraLayer_State = 0
				EndIf
			EndIf
		EndIf
		
		If Player_Top_ArmorLayer_State < 2
			;Check Curtain Layer
			If PlayerRef.WornHasKeyword(Sexy_ChestCurtain)
				Player_Top_CurtainLayer_State = 2
			ElseIf PlayerRef.WornHasKeyword(Sexy_ChestCurtainT)
				Player_Top_CurtainLayer_State = 1
			Else
				Player_Top_CurtainLayer_State = 0
			EndIf
		Else
			Player_Top_CurtainLayer_State = -1
		EndIf
	Else
		Player_Top_CurtainLayer_State = -1
		Player_Top_ArmorLayer_State = 2
		Player_Top_BraLayer_State = -1
	EndIf
	
	;/------------------------/;
	;/---BOTTOM LAYER SCAN---/;
	;/------------------------/;
	
	If !PlayerRef.WornHasKeyword(Sexy_CoversAll)
		If Sexy_Slot32 != None
		
			;Check Slot32 Armor Layer
			If Sexy_Slot32.HasKeyword(Sexy_ArmorBottom) || (Sexy_Slot32.HasKeyword(Sexy_Hotpants) && Sexy_Slot32.HasKeyword(Sexy_ShowgirlSkirt))
				Player_Bottom_ArmorLayer_State = 6
				Player_Bottom_UnderwearLayer_State = -1
			ElseIf Sexy_Slot32.HasKeyword(Sexy_VaginaLeggings) && Sexy_Slot32.HasKeyword(Sexy_ShowgirlSkirt)
				Player_Bottom_ArmorLayer_State = 5
			ElseIf Sexy_Slot32.HasKeyword(Sexy_Hotpants)
				Player_Bottom_ArmorLayer_State = 4
			ElseIf Sexy_Slot32.HasKeyword(Sexy_ShowgirlSkirt)
				Player_Bottom_ArmorLayer_State = 3
			ElseIf Sexy_Slot32.HasKeyword(Sexy_VaginaLeggings)
				Player_Bottom_ArmorLayer_State = 2
			ElseIf Sexy_Slot32.HasKeyword(Sexy_ArmorBottomT) || Sexy_Slot32.HasKeyword(Sexy_HotpantsT) || Sexy_Slot32.HasKeyword(Sexy_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(Sexy_VaginaLeggingsT)
				Player_Bottom_ArmorLayer_State = 1
				
			;Check Slot32 Underwear Layer
			ElseIf Sexy_Slot32.HasKeyword(Sexy_Underwear)
				Player_Bottom_ArmorLayer_State = 0
				Player_Bottom_UnderwearLayer_State = 5
			ElseIf Sexy_Slot32.HasKeyword(Sexy_Thong)
				Player_Bottom_ArmorLayer_State = 0
				Player_Bottom_UnderwearLayer_State = 4
			ElseIf Sexy_Slot32.HasKeyword(Sexy_CString)
				Player_Bottom_ArmorLayer_State = 0
				Player_Bottom_UnderwearLayer_State = 3
			ElseIf Sexy_Slot32.HasKeyword(Sexy_UnderwearT)
				Player_Bottom_ArmorLayer_State = 0
				Player_Bottom_UnderwearLayer_State = 2
			ElseIf Sexy_Slot32.HasKeyword(Sexy_ThongT) || Sexy_Slot32.HasKeyword(Sexy_CStringT)
				Player_Bottom_ArmorLayer_State = 0
				Player_Bottom_UnderwearLayer_State = 1
			Else ;Slot32 is not empty, yet none of the above keywords are found. Assume Vanilla armor
				Player_Bottom_ArmorLayer_State = 4
				Player_Bottom_UnderwearLayer_State = -1
			EndIf
		Else ;If Slot 32 is empty, set Layer state to 0 to allow next checks to properly function
			Player_Bottom_ArmorLayer_State = 0
		EndIf
		
		;Check General Armor Layer
		If Player_Bottom_ArmorLayer_State < 6
			If PlayerRef.WornHasKeyword(Sexy_ArmorBottom) || ( PlayerRef.WornHasKeyword(Sexy_Hotpants) && PlayerRef.WornHasKeyword(Sexy_ShowgirlSkirt) )
				Player_Bottom_ArmorLayer_State = 6
				Player_Bottom_UnderwearLayer_State = -1
			ElseIf PlayerRef.WornHasKeyword(Sexy_VaginaLeggings) && PlayerRef.WornHasKeyword(Sexy_ShowgirlSkirt)
				Player_Bottom_ArmorLayer_State = 5
			ElseIf PlayerRef.WornHasKeyword(Sexy_Hotpants)
				Player_Bottom_ArmorLayer_State = 4
			ElseIf PlayerRef.WornHasKeyword(Sexy_ShowgirlSkirt)
				Player_Bottom_ArmorLayer_State = 3
			ElseIf PlayerRef.WornHasKeyword(Sexy_VaginaLeggings)
				Player_Bottom_ArmorLayer_State = 2
			ElseIf PlayerRef.WornHasKeyword(Sexy_ArmorBottomT) || PlayerRef.WornHasKeyword(Sexy_HotpantsT) || PlayerRef.WornHasKeyword(Sexy_ShowgirlSkirtT) || PlayerRef.WornHasKeyword(Sexy_VaginaLeggingsT)
				Player_Bottom_ArmorLayer_State = 1
			Else
				Player_Bottom_ArmorLayer_State = 0
			EndIf
			
			;Check General Underwear Layer
			If Player_Bottom_ArmorLayer_State < 6
				If PlayerRef.WornHasKeyword(Sexy_Underwear)
					Player_Bottom_UnderwearLayer_State = 4
				ElseIf PlayerRef.WornHasKeyword(Sexy_Thong)
					Player_Bottom_UnderwearLayer_State = 4
				ElseIf PlayerRef.WornHasKeyword(Sexy_CString)
					Player_Bottom_UnderwearLayer_State = 3
				ElseIf PlayerRef.WornHasKeyword(Sexy_UnderwearT)
					Player_Bottom_UnderwearLayer_State = 2
				ElseIf PlayerRef.WornHasKeyword(Sexy_ThongT) || PlayerRef.WornHasKeyword(Sexy_CStringT)
					Player_Bottom_UnderwearLayer_State = 1
				Else
					Player_Bottom_UnderwearLayer_State = 0
				EndIf
			EndIf
		EndIf
		
		;Check Curtains
		If Player_Bottom_ArmorLayer_State < 6
			;Pelvic Curtain
			If PlayerRef.WornHasKeyword(Sexy_PelvicCurtain) || PlayerRef.WornHasKeyword(Sexy_Miniskirt)
				Player_Bottom_FrontCurtainLayer_State = 2
			ElseIf PlayerRef.WornHasKeyword(Sexy_PelvicCurtainT) || PlayerRef.WornHasKeyword(Sexy_MiniskirtT)
				Player_Bottom_FrontCurtainLayer_State = 1
			Else
				Player_Bottom_FrontCurtainLayer_State = 0
			EndIf
			
			;Ass Curtain
			If PlayerRef.WornHasKeyword(Sexy_AssCurtain) || PlayerRef.WornHasKeyword(Sexy_Miniskirt)
				Player_Bottom_AssCurtainLayer_State = 2
			ElseIf PlayerRef.WornHasKeyword(Sexy_AssCurtainT) || PlayerRef.WornHasKeyword(Sexy_MiniskirtT)
				Player_Bottom_AssCurtainLayer_State = 1
			Else
				Player_Bottom_AssCurtainLayer_State = 0
			EndIf
		Else
			Player_Bottom_FrontCurtainLayer_State = -1
			Player_Bottom_AssCurtainLayer_State = -1
		EndIf
	Else
		Player_Bottom_FrontCurtainLayer_State = -1
		Player_Bottom_AssCurtainLayer_State = -1
		Player_Bottom_ArmorLayer_State = 4
		Player_Bottom_UnderwearLayer_State = -1
	EndIf
	
	;/------------------------/;
	;/-----LAYER ANALYZE------/;
	;/------------------------/;
	
	;Analyze Layer States for appropriate nudity conditions
	
	;Analyze Top States
	If Player_Top_ArmorLayer_State < 2 && Player_Top_CurtainLayer_State < 2
		;If both shirt and curtain are transparent or missing
		
		;Check for Toplessness immediately
		If Player_Top_ArmorLayer_State > 0 || Player_Top_CurtainLayer_State > 0 || Player_Top_BraLayer_State > 0
			PlayerRef.SetFactionRank(Sexy_ToplessFaction, 0)
			
			If Player_Top_BraLayer_State == 2
				PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 0)
				PlayerRef.SetFactionRank(Sexy_ShowingBraFaction, 1)
			ElseIf Player_Top_BraLayer_State == 1
				PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 1)
				PlayerRef.SetFactionRank(Sexy_ShowingBraFaction, 1)
			Else
				PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 1)
				PlayerRef.SetFactionRank(Sexy_ShowingBraFaction, 0)
			EndIf
		Else
			PlayerRef.SetFactionRank(Sexy_ToplessFaction, 1)
			PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 1)
			PlayerRef.SetFactionRank(Sexy_ShowingBraFaction, 0)
		EndIf
	Else
		;If there's a non-transparent curtain or non-transparent shirt: not topless, chest is covered, and bra is hidden
		PlayerRef.SetFactionRank(Sexy_ShowingBraFaction, 0)
		PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 0)
		PlayerRef.SetFactionRank(Sexy_ToplessFaction, 0)
	EndIf
	
	;Analyze Bottom States
	If Player_Bottom_ArmorLayer_State == 6 || (Player_Bottom_FrontCurtainLayer_State == 2 && Player_Bottom_AssCurtainLayer_State == 2)
		PlayerRef.SetFactionRank(Sexy_BottomlessFaction, 0)
		PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
		PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
		PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
	
	ElseIf Player_Bottom_ArmorLayer_State > 0 || Player_Bottom_UnderwearLayer_State > 0 || Player_Bottom_FrontCurtainLayer_State > 0 || Player_Bottom_AssCurtainLayer_State > 0
		;If neither wearing Pants nor have Both Curtains covering front and back, and not wearing nothing
		
		If Player_Bottom_FrontCurtainLayer_State < 2 && Player_Bottom_AssCurtainLayer_State == 2
			;Pelvic Curtain see-through/missing | Ass Curtain covers
			
			PlayerRef.SetFactionRank(Sexy_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
			
			If Player_Bottom_ArmorLayer_State == 4 ;Hotpants
				PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
			ElseIf Player_Bottom_ArmorLayer_State == 2 || Player_Bottom_ArmorLayer_State == 5 ;VaginaLeggings (+ Showgirl)
				PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
				If Player_Bottom_UnderwearLayer_State > 0
					;If wearing ANY underwear, it's showing.
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				Else
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
				EndIf
			Else ;Showgirl, Transparent, or None
				If Player_Bottom_UnderwearLayer_State >= 3 ;Normal Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				ElseIf Player_Bottom_UnderwearLayer_State > 0 ;Transparent Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				Else ;No Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
				EndIf
			EndIf
			
		ElseIf Player_Bottom_FrontCurtainLayer_State == 2 && Player_Bottom_AssCurtainLayer_State < 2
			;Pelvic Curtain covers | Ass Curtain see-through/missing
			
			PlayerRef.SetFactionRank(Sexy_BottomlessFaction, 0)
			PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
			
			If Player_Bottom_ArmorLayer_State == 4 ;Hotpants
				If Player_Bottom_UnderwearLayer_State == 5 ;Normal Underwear
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
				ElseIf Player_Bottom_UnderwearLayer_State != 2 && Player_Bottom_UnderwearLayer_State != 5 ;Thong, Transparent Thong, or None
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
				Else ;Transparent Underwear
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
				EndIf
			ElseIf Player_Bottom_ArmorLayer_State == 3 ;ShowgirlSkirt
				PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
				PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
			Else
				;Transparent or none - Bottom Armor State is less than 3 or is 5
				If Player_Bottom_UnderwearLayer_State > 0
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				Else
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
				EndIf
				
				If Player_Bottom_UnderwearLayer_State == 5 ;Normal Underwear
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
				Else
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
				EndIf
			EndIf

		Else ;Both Curtains are see-through or missing. Cannot reach 'bottomless' state in this expression because we checked if at least one layer was in a non-zero state and was found to be true
			
			PlayerRef.SetFactionRank(Sexy_BottomlessFaction, 0)
			
			If Player_Bottom_ArmorLayer_State == 5 ;VaginaLeggings + ShowgirlSkirt
				
				PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
				PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
				
				If Player_Bottom_UnderwearLayer_State > 0
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				Else
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
				EndIf
				
			ElseIf Player_Bottom_ArmorLayer_State == 4 ;Hotpants
			
				PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
				
				If Player_Bottom_UnderwearLayer_State == 5 ;Normal Underwear
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
				ElseIf Player_Bottom_UnderwearLayer_State != 5 && Player_Bottom_UnderwearLayer_State != 2 ;Thong, Transparent Thong, or None
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
				Else ;Transparent Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
				EndIf
				
			ElseIf Player_Bottom_ArmorLayer_State == 3 ;ShowgirlSkirt
				PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
				
				If Player_Bottom_UnderwearLayer_State >= 3 ;Normal Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				ElseIf Player_Bottom_UnderwearLayer_State > 0 ;Transparent Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				Else ;No Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
				EndIf
			
			ElseIf Player_Bottom_ArmorLayer_State == 2 ;VaginaLeggings
			
				PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
				
				If Player_Bottom_UnderwearLayer_State > 0
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					If Player_Bottom_UnderwearLayer_State == 5 ;Normal Underwear
						PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
					Else
						PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
					EndIf
				Else
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
				EndIf
				
			Else ;Transparent or none - Bottom Armor State is less than 2
			
				If Player_Bottom_UnderwearLayer_State == 5 ;Underwear
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 0)
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
				ElseIf Player_Bottom_UnderwearLayer_State == 4 || Player_Bottom_UnderwearLayer_State == 3 ;Thong
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 0)
				ElseIf Player_Bottom_UnderwearLayer_State == 0 ;No Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
				Else ;Transparent Underwear or Thong
					PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
				EndIf
				
			EndIf

		EndIf
	Else
		PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 0)
		PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
		PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
		PlayerRef.SetFactionRank(Sexy_BottomlessFaction, 1)
	EndIf

	;Microskirt & Crotch Pasties Bottomless Exception
	If PlayerRef.WornHasKeyword(Sexy_Microskirt) || PlayerRef.WornHasKeyword(Sexy_VaginaPasties)
		PlayerRef.SetFactionRank(Sexy_BottomlessFaction, 0)
	EndIf
	
	;Nipple Pasties Topless Exception
	If PlayerRef.WornHasKeyword(Sexy_NipplePasties)
		PlayerRef.SetFactionRank(Sexy_ToplessFaction, 0)
	EndIf
	
	;Check for full nudity
	If PlayerRef.GetFactionRank(Sexy_ToplessFaction) == 1 && PlayerRef.GetFactionRank(Sexy_BottomlessFaction) == 1 && !PlayerRef.WornHasKeyword(Sexy_NearlyNaked)
		;We exclude HalfNaked from allowing the player top be 'fully nude' but still allow them to be topless and/or bottomless. Odd distinction but could prove a valid niche. Plus it give the keyword unique functionality.
		PlayerRef.SetFactionRank(Sexy_NudeActorFaction, 1)
	Else
		PlayerRef.SetFactionRank(Sexy_NudeActorFaction, 0)
	EndIf
EndFunction

Function Sexy_FlashRiskCheck()
	If !PlayerRef.WornHasKeyword(Sexy_CoversAll) ;If this keyword exists, this check is pointless
		;Check Chest Flash Risk
		If Player_Top_ArmorLayer_State < 2 && Player_Top_CurtainLayer_State == 2
			;With this Layer State combination, modesty or lack thereof is uncertain
			If PlayerRef.WornHasKeyword(Sexy_ChestFlashRiskLow)
				Player_ChestFlashRisk = 10
			ElseIf PlayerRef.WornHasKeyword(Sexy_ChestFlashRisk)
				Player_ChestFlashRisk = 25
			ElseIf PlayerRef.WornHasKeyword(Sexy_ChestFlashRiskHigh)
				Player_ChestFlashRisk = 50
			ElseIf PlayerRef.WornHasKeyword(Sexy_ChestFlashRiskExtreme)
				Player_ChestFlashRisk = 75
			ElseIf PlayerRef.WornHasKeyword(Sexy_ChestFlashRiskUltra)
				Player_ChestFlashRisk = 95
			Else
				Player_ChestFlashRisk = 0 ;Default to 0 if no keyword found
				Player_IsFlashingChest = False
			EndIf
		Else
			Player_ChestFlashRisk = 0
			Player_IsFlashingChest = False
		EndIf
		
		;Check Genital Flash Risk
		If ( Player_Bottom_ArmorLayer_State < 4 || Player_Bottom_ArmorLayer_State == 5) && Player_Bottom_FrontCurtainLayer_State == 2
			;With this Layer State combination, modesty or lack thereof is uncertain. Pants and Hotpants have the same effect here, therefore we check if Bottom Armor State is less than 2 instead of 3
			If PlayerRef.WornHasKeyword(Sexy_GenitalFlashRiskLow)
				Player_GenitalFlashRisk = 10
			ElseIf PlayerRef.WornHasKeyword(Sexy_GenitalFlashRisk)
				Player_GenitalFlashRisk = 25
			ElseIf PlayerRef.WornHasKeyword(Sexy_GenitalFlashRiskHigh)
				Player_GenitalFlashRisk = 50
			ElseIf PlayerRef.WornHasKeyword(Sexy_GenitalFlashRiskExtreme)
				Player_GenitalFlashRisk = 75
			ElseIf PlayerRef.WornHasKeyword(Sexy_GenitalFlashRiskUltra)
				Player_GenitalFlashRisk = 95
			Else
				Player_GenitalFlashRisk = 0 ;Default to 0 if no keyword found
				Player_IsFlashingGenitals = False
			EndIf
		Else
			Player_GenitalFlashRisk = 0
			Player_IsFlashingGenitals = False
		EndIf
		
		;Check Ass Flash Risk
		If (Player_Bottom_ArmorLayer_State < 3 || Player_Bottom_ArmorLayer_State == 4) && Player_Bottom_AssCurtainLayer_State == 2
			;With this Layer State combination, modesty or lack thereof is uncertain.
			If PlayerRef.WornHasKeyword(Sexy_AssFlashRiskLow)
				Player_AssFlashRisk = 10
			ElseIf PlayerRef.WornHasKeyword(Sexy_AssFlashRisk)
				Player_AssFlashRisk = 25
			ElseIf PlayerRef.WornHasKeyword(Sexy_AssFlashRiskHigh)
				Player_AssFlashRisk = 50
			ElseIf PlayerRef.WornHasKeyword(Sexy_AssFlashRiskExtreme)
				Player_AssFlashRisk = 75
			ElseIf PlayerRef.WornHasKeyword(Sexy_AssFlashRiskUltra)
				Player_AssFlashRisk = 95
			Else
				Player_AssFlashRisk = 0 ;Default to 0 if no keyword found
				Player_IsFlashingAss = False
			EndIf
		Else
			Player_AssFlashRisk = 0
			Player_IsFlashingAss = False
		EndIf
		
		;CString Risk
		If Player_Bottom_ArmorLayer_State != 4 && Player_Bottom_ArmorLayer_State != 6
			Player_CStringRisk = True
		Else
			Player_CStringRisk = False
		EndIf
		
		If ( Player_AssFlashRisk > 0 || Player_ChestFlashRisk > 0 || Player_GenitalFlashRisk > 0 || Player_CStringRisk == True )
			Sexy_FlashRiskDiceRoll()
		EndIf
	Else
		;if Covers All keyword is found, set all Flashing states to False
		Player_IsFlashingAss = False
		Player_IsFlashingChest = False
		Player_IsFlashingGenitals = False
		Player_CStringRisk = False
	EndIf
	Sexy_FlashStateAnalyze()
EndFunction

Function Sexy_FlashRiskDiceRoll()

	If ( Player_ChestFlashRisk > 0 )
	ChestFlashRoll = Utility.RandomInt(1,100)
	
		If ( ChestFlashRoll <= Player_ChestFlashRisk )
			;Flash Check Succeeded - Player is Flashing Chest (or Bra)
			Player_IsFlashingChest = True
		Else
			;Flash Check Failed - Player is not Flashing Chest (or Bra)
			Player_IsFlashingChest = False
		EndIf
	EndIf
	
	If ( Player_GenitalFlashRisk > 0 )
	GenitalFlashRoll = Utility.RandomInt(1,100)
	
		If ( GenitalFlashRoll <= Player_GenitalFlashRisk )
			;Flash Check Succeeded - Player is Flashing Genitals (or Underwear)
			Player_IsFlashingGenitals = True
		Else
			;Flash Check Failed - Player is not Flashing Genitals (or Underwear)
			Player_IsFlashingGenitals = False
		EndIf
	EndIf
	
	If ( Player_AssFlashRisk > 0 )
		AssFlashRoll = Utility.RandomInt(1,100)
		
		If ( AssFlashRoll <= Player_AssFlashRisk )
			;Flash Check Succeeded - Player is Flashing Ass (or Underwear)
			Player_IsFlashingAss = True
		Else
			;Flash Check Failed - Player is not Flashing Ass (or Underwear)
			Player_IsFlashingAss = False
		EndIf
	EndIf
	
	If Player_CStringRisk == True
		CStringFlashRoll = Utility.RandomInt(1,100)
		
		If CStringFlashRoll <= 75
			Player_CStringNotSeen = True
		Else
			Player_CStringNotSeen = False
		EndIf
	EndIf
	
	If ( Player_ChestFlashRisk == 0 && Player_AssFlashRisk == 0 && Player_GenitalFlashRisk == 0 && Player_CStringRisk == False )
		Debug.MessageBox("Sexy Adventures Advanced - ERROR - Bad Flash Risk Call. All Flash Risks are 0. ")
	EndIf

EndFunction

Function Sexy_FlashStateAnalyze()
	;Chest Flash
	If Player_IsFlashingChest == True
		;We know that a regular shirt isn't worn because flashing SOMETHING had to be possible for this to be true
		If Player_Top_BraLayer_State > 0
			PlayerRef.SetFactionRank(Sexy_ShowingBraFaction, 1)
			If Player_Top_BraLayer_State == 1 ;Transparent Bra
				PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 1)
			Else
				PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 0)
			EndIf
		Else
			PlayerRef.SetFactionRank(Sexy_ShowingChestFaction, 1)
			PlayerRef.SetFactionRank(Sexy_ShowingBraFaction, 0)
		EndIf
	EndIf
	
	;Genital Flash
	If Player_IsFlashingGenitals == True
		;We know that regular pants & Hotpants aren't worn because we excluded those from allowing Flashing Genitals to be possible
		
		If Player_Bottom_ArmorLayer_State == 5 || Player_Bottom_ArmorLayer_State == 2
		
			If Player_Bottom_UnderwearLayer_State > 0
				PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
			EndIf
		
		ElseIf Player_Bottom_ArmorLayer_State == 3 || Player_Bottom_ArmorLayer_State <= 1
			
			If Player_Bottom_UnderwearLayer_State > 0
				PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				If Player_Bottom_UnderwearLayer_State == 3
					If Player_CStringNotSeen == true
						PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
					EndIf
				ElseIf Player_Bottom_UnderwearLayer_State < 3
					PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
				EndIf
			Else
				PlayerRef.SetFactionRank(Sexy_ShowingGenitalsFaction, 1)
			EndIf
			
		EndIf
		
	EndIf
	
	;Ass Flash
	If Player_IsFlashingAss == True
		;We know that regular pants aren't worn because we excluded those from allowing Flashing Ass to be possible
		;HOWEVER Hotpants need to be checked because it will still hide Thongs and therefore prevent 'underwear' from being shown in this case
		
		If Player_Bottom_ArmorLayer_State == 4 ;Hotpants
			If Player_Bottom_UnderwearLayer_State == 5 ; Underwear
				PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
			ElseIf Player_Bottom_UnderwearLayer_State == 2 ;Transparent Underwear
				PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
				PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
			Else
				PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
			EndIf
		Else
			If Player_Bottom_UnderwearLayer_State > 0
				PlayerRef.SetFactionRank(Sexy_ShowingUnderwearFaction, 1)
			EndIf
			
			If Player_Bottom_UnderwearLayer_State < 5
				PlayerRef.SetFactionRank(Sexy_ShowingAssFaction, 1)
			EndIf
		EndIf
	EndIf
EndFunction