ScriptName AND_ModestyRandomizer extends Quest

AND_MCM Property Config Auto

Race[] Property ActorRace Auto

Int Function GetRandomizedModesty(Actor targetActor, Bool IsPlayer)
	Int ModestyRoll = Utility.RandomInt(1,100)
	Int Confidence = 2
	
	If IsPlayer == False
		Confidence = targetActor.GetActorValue("Confidence") as Int
	Else
		If Config.PlayerConfidence == "Random"
			Confidence = Utility.RandomInt(0,4)
			
			If Confidence == 0
				Config.PlayerConfidence = "Cowardly"
			ElseIf Confidence == 1
				Config.PlayerConfidence = "Cautious"
			ElseIf Confidence == 2
				Config.PlayerConfidence = "Average"
			ElseIf Confidence == 3
				Config.PlayerConfidence = "Brave"
			ElseIf Confidence == 4
				Config.PlayerConfidence = "Foolhardy"
			EndIf
		ElseIf Config.PlayerConfidence == "Cowardly"
			Confidence = 0
		ElseIf Config.PlayerConfidence == "Cautious"
			Confidence = 1
		ElseIf Config.PlayerConfidence == "Average"
			Confidence = 2
		ElseIf Config.PlayerConfidence == "Brave"
			Confidence = 3
		ElseIf Config.PlayerConfidence == "Foolhardy"
			Confidence = 4
		EndIf
	EndIf
	Int BaseModesty = 0
	Int FinalModesty = 0
	Race targetRace = targetActor.GetRace()
	
	If targetRace == ActorRace[0] || targetRace == ActorRace[1] ;Altmer
		If ModestyRoll <= 35
			BaseModesty = 0
		ElseIf ModestyRoll <= 80
			BaseModesty = 1
		ElseIf ModestyRoll <= 95
			BaseModesty = 2
		Else
			BaseModesty = 3
		EndIf
	ElseIf targetRace == ActorRace[2] || targetRace == ActorRace[3] ;Argonian
		If ModestyRoll <= 10
			BaseModesty = 0
		ElseIf ModestyRoll <= 40
			BaseModesty = 1
		ElseIf ModestyRoll <= 80
			BaseModesty = 2
		ElseIf ModestyRoll <= 95
			BaseModesty = 3
		Else
			BaseModesty = 4
		EndIf
	ElseIf targetRace == ActorRace[4] || targetRace == ActorRace[5] ;Breton
		If ModestyRoll <= 5
			BaseModesty = 1
		ElseIf ModestyRoll <= 15
			BaseModesty = 2
		ElseIf ModestyRoll <= 55
			BaseModesty = 3
		ElseIf ModestyRoll <= 85
			BaseModesty = 4
		Else
			BaseModesty = 5
		EndIf
	ElseIf targetRace == ActorRace[6] || targetRace == ActorRace[7] ;Bosmer
		If ModestyRoll <= 35
			BaseModesty = 3
		ElseIf ModestyRoll <= 80
			BaseModesty = 4
		Else
			BaseModesty = 5
		EndIf
	ElseIf targetRace == ActorRace[8] || targetRace == ActorRace[9] ;Dunmer
		If ModestyRoll <= 30
			BaseModesty = 0
		ElseIf ModestyRoll <= 75
			BaseModesty = 1
		ElseIf ModestyRoll <= 90
			BaseModesty = 2
		Else
			BaseModesty = 3
		EndIf
	ElseIf targetRace == ActorRace[10] || targetRace == ActorRace[11] ;Imperial
		If ModestyRoll <= 25
			BaseModesty = 0
		ElseIf ModestyRoll <= 65
			BaseModesty = 1
		ElseIf ModestyRoll <= 90
			BaseModesty = 2
		Else
			BaseModesty = 3
		EndIf
	ElseIf targetRace == ActorRace[12] || targetRace == ActorRace[13] ;Khajiit
		If ModestyRoll <= 5
			BaseModesty = 0
		ElseIf ModestyRoll <= 20
			BaseModesty = 1
		ElseIf ModestyRoll <= 60
			BaseModesty = 2
		ElseIf ModestyRoll <= 90
			BaseModesty = 3
		Else
			BaseModesty = 4
		EndIf
	ElseIf targetRace == ActorRace[14] || targetRace == ActorRace[15] ;Nord
		If ModestyRoll <= 45
			BaseModesty = 0
		ElseIf ModestyRoll <= 80
			BaseModesty = 1
		ElseIf ModestyRoll <= 95
			BaseModesty = 2
		Else
			BaseModesty = 3
		EndIf
	ElseIf targetRace == ActorRace[16] || targetRace == ActorRace[17] ;Orsimer
		If ModestyRoll <= 10
			BaseModesty = 0
		ElseIf ModestyRoll <= 35
			BaseModesty = 1
		ElseIf ModestyRoll <= 65
			BaseModesty = 2
		ElseIf ModestyRoll <= 90
			BaseModesty = 3
		Else
			BaseModesty = 4
		EndIf
	ElseIf targetRace == ActorRace[18] || targetRace == ActorRace[19] ;Redguard
		If ModestyRoll <= 5
			BaseModesty = 1
		ElseIf ModestyRoll <= 15
			BaseModesty = 2
		ElseIf ModestyRoll <= 65
			BaseModesty = 3
		ElseIf ModestyRoll <= 90
			BaseModesty = 4
		Else
			BaseModesty = 5
		EndIf
	Else ;Custom Race
		return 0
	EndIf
	
	If Confidence == 0
		FinalModesty = BaseModesty - 2
		return FinalModesty
	ElseIf Confidence == 1
		FinalModesty = BaseModesty - 1
		return FinalModesty
	ElseIf Confidence == 2
		return BaseModesty
	ElseIf Confidence == 3
		FinalModesty = BaseModesty + 1
		return FinalModesty
	ElseIf Confidence >= 4
		FinalModesty = BaseModesty + 2
		return FinalModesty
	EndIf
EndFunction