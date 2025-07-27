ScriptName AND_NPC_ScanSpell extends ActiveMagicEffect

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_MaleArmorScan Property AND_MaleScan Auto
AND_FemaleArmorScan Property AND_FemaleScan Auto
AND_NPC_Modesty_Manager Property AND_NPCModesty Auto

Faction[] Property AND_Factions Auto
Faction Property ModestyFaction Auto
Faction Property TopModestyFaction Auto ;0 = Shy, 1 = Comfortable, 2 = Bold, 3 = Shameless, 4 = Permanent
Faction Property BottomModestyFaction Auto ;0 = Shy, 1 = Comfortable, 2 = Bold, 3 = Shameless, 4 = Permanent
Faction Property FollowerFaction Auto

Race[] Property ActorRace Auto

;/
 0/1  - Altmer
 2/3  - Argonian
 4/5  - Breton
 6/7  - Bosmer
 8/9  - Dunmer
10/11 - Imperial
12/13 - Khajiit
14/15 - Nord
16/17 - Orsimer
18/19 - Redguard
/;

GlobalVariable Property AND_DebugMode Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.AddToFaction(AND_Factions[0])
	akTarget.AddToFaction(AND_Factions[1])
	akTarget.AddToFaction(AND_Factions[2])
	akTarget.AddToFaction(AND_Factions[3])
	akTarget.AddToFaction(AND_Factions[4])
	akTarget.AddToFaction(AND_Factions[5])
	akTarget.AddToFaction(AND_Factions[6])
	akTarget.AddToFaction(AND_Factions[7])
	
	Int TargetSex = akTarget.GetActorBase().GetSex() ;0 = Male | 1 = Female
	If TargetSex == 0
		If AND_DebugMode.GetValue() == 1
			Debug.Trace("AND - Start Male (NPC) Scan")
		EndIf
		AND_MaleScan.AND_LayerAnalyze(akTarget)
	Else
		If AND_DebugMode.GetValue() == 1
			Debug.Trace("AND - Start Female (NPC) Scan")
		EndIf
		AND_FemaleScan.AND_LayerAnalyze(akTarget)
	EndIf
	
	If AND_Config.UseDynamicModesty == True
		If TargetSex == 1 && !akTarget.IsInFaction(ModestyFaction)
			AND_NPCModesty.RegisterFemale(akTarget)
			akTarget.AddToFaction(ModestyFaction)
			akTarget.AddToFaction(TopModestyFaction)
			akTarget.AddToFaction(BottomModestyFaction)
			
			If akTarget == AND_Main.Rosa
				akTarget.SetFactionRank(ModestyFaction, 7)
				akTarget.SetFactionRank(TopModestyFaction, 4)
				akTarget.SetFactionRank(BottomModestyFaction, 4)
				return
			EndIf
			
			Int Modesty = GetRandomizedModesty(akTarget)
			Int TopModesty = 0
			Int BottomModesty = 0
			
			If Modesty < 0
				Modesty = 0
			ElseIf Modesty == 1
				TopModesty = 1
			ElseIf Modesty == 2
				TopModesty = 1
				BottomModesty = 1
			ElseIf Modesty == 3
				TopModesty = 2
				BottomModesty = 1
			ElseIf Modesty == 4
				TopModesty = 2
				BottomModesty = 2
			ElseIf Modesty == 5
				TopModesty = 3
				BottomModesty = 2
			ElseIf Modesty == 6
				TopModesty = 3
				BottomModesty = 3
			EndIf
			
			akTarget.SetFactionRank(ModestyFaction, Modesty)
			akTarget.SetFactionRank(TopModestyFaction, TopModesty)
			akTarget.SetFactionRank(BottomModestyFaction, BottomModesty)
		EndIf
		
		If akTarget.GetFactionRank(FollowerFaction) >= 0 && TargetSex == 1
			AND_NPCModesty.ProcessNPCModesty(akTarget, AND_Config.StrictModestyRules)
		EndIf
	Else
		If TargetSex == 1 && akTarget.IsInFaction(ModestyFaction)
			akTarget.RemoveFromFaction(ModestyFaction)
			akTarget.RemoveFromFaction(TopModestyFaction)
			akTarget.RemoveFromFaction(BottomModestyFaction)
		EndIf
	EndIf
EndEvent

Int Function GetRandomizedModesty(Actor targetActor)
	Int ModestyRoll = Utility.RandomInt(1,100)
	Int Confidence = targetActor.GetActorValue("Confidence") as Int
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
		ElseIf ModestyRoll <= 65
			BaseModesty = 3
		Else
			BaseModesty = 4
		EndIf
	ElseIf targetRace == ActorRace[6] || targetRace == ActorRace[7] ;Bosmer
		If ModestyRoll <= 15
			BaseModesty = 2
		ElseIf ModestyRoll <= 50
			BaseModesty = 3
		Else
			BaseModesty = 4
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
		If ModestyRoll <= 50
			BaseModesty = 0
		ElseIf ModestyRoll <= 85
			BaseModesty = 1
		Else
			BaseModesty = 2
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
		ElseIf ModestyRoll <= 75
			BaseModesty = 3
		Else
			BaseModesty = 4
		EndIf
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