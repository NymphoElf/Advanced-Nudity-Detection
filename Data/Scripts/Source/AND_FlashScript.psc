Scriptname AND_FlashScript extends Quest

Actor Property PlayerRef Auto

Advanced_Nudity_Detection Property AdvancedNudityScanner Auto

Int Property TopCurtainRoll = 0 Auto
Int Property PelvicCurtainRoll = 0 Auto
Int Property AssCurtainRoll = 0 Auto
Int Property CStringRoll = 0 Auto
Int Property TopTransparentRoll = 0 Auto
Int Property BottomTransparentRoll = 0 Auto
Int Property BraTransparentRoll = 0 Auto
Int Property UnderwearTransparentRoll = 0 Auto
Int Property HotpantsTransparentRoll = 0 Auto
Int Property ShowgirlTransparentRoll = 0 Auto

Event OnInit()
	RegisterForUpdateGameTime(0.5)
EndEvent

Event OnUpdate()
	AND_DiceRoll()
EndEvent

Function AND_DiceRoll()

	TopCurtainRoll = Utility.RandomInt(1,100)
	PelvicCurtainRoll = Utility.RandomInt(1,100)
	AssCurtainRoll = Utility.RandomInt(1,100)
	CStringRoll = Utility.RandomInt(1,100)
	TopTransparentRoll = Utility.RandomInt(1,2)
	BottomTransparentRoll = Utility.RandomInt(1,2)
	BraTransparentRoll = Utility.RandomInt(1,2)
	UnderwearTransparentRoll = Utility.RandomInt(1,2)
	HotpantsTransparentRoll = Utility.RandomInt(1,2)
	ShowgirlTransparentRoll = Utility.RandomInt(1,2)
	
EndFunction

Bool Function TopCurtainCheck()
	If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtain)
		If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskLow)
			If TopCurtainRoll <= 20
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRisk)
			If TopCurtainRoll <= 35
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskHigh)
			If TopCurtainRoll <= 50
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskExtreme)
			If TopCurtainRoll <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskUltra)
			If TopCurtainRoll <= 80
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestCurtainT)
		If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskLow)
			If TopCurtainRoll <= 55
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRisk)
			If TopCurtainRoll <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskHigh)
			If TopCurtainRoll <= 75
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskExtreme)
			If TopCurtainRoll <= 85
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_ChestFlashRiskUltra)
			If TopCurtainRoll <= 95
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
	If TopTransparentRoll == 1
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentBraCheck()
	If BraTransparentRoll == 1
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function PelvicCurtainCheck()
	If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtain) || PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Miniskirt)
		If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskLow)
			If PelvicCurtainRoll <= 20
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRisk)
			If PelvicCurtainRoll <= 35
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskHigh)
			If PelvicCurtainRoll <= 50
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskExtreme)
			If PelvicCurtainRoll <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskUltra)
			If PelvicCurtainRoll <= 80
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicCurtainT) || PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskLow)
			If PelvicCurtainRoll <= 55
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRisk)
			If PelvicCurtainRoll <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskHigh)
			If PelvicCurtainRoll <= 75
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskExtreme)
			If PelvicCurtainRoll <= 85
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_PelvicFlashRiskUltra)
			If PelvicCurtainRoll <= 95
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
	If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtain) || PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_Miniskirt)
		If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskLow)
			If AssCurtainRoll <= 20
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRisk)
			If AssCurtainRoll <= 35
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskHigh)
			If AssCurtainRoll <= 50
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskExtreme)
			If AssCurtainRoll <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskUltra)
			If AssCurtainRoll <= 80
				return False
			Else
				return True
			EndIf
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssCurtainT) || PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_MiniskirtT)
		If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskLow)
			If AssCurtainRoll <= 55
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRisk)
			If AssCurtainRoll <= 65
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskHigh)
			If AssCurtainRoll <= 75
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskExtreme)
			If AssCurtainRoll <= 85
				return False
			Else
				return True
			EndIf
		ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_AssFlashRiskUltra)
			If AssCurtainRoll <= 95
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
	If BottomTransparentRoll == 1
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentHotpantsCheck()
	If HotpantsTransparentRoll == 1
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentShowgirlCheck()
	If ShowgirlTransparentRoll == 1
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function TransparentUnderwearCheck()
	If UnderwearTransparentRoll == 1
		return False
	Else
		return True
	EndIf
EndFunction

Bool Function CStringCheck()
	If PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_CString)
		If CStringRoll <= 75
			return False
		Else
			return True
		EndIf
	ElseIf PlayerRef.WornHasKeyword(AdvancedNudityScanner.AND_CStringT)
		If CStringRoll <= 90
			return False
		Else
			return True
		EndIf
	EndIf
EndFunction