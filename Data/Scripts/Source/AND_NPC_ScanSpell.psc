ScriptName AND_NPC_ScanSpell extends ActiveMagicEffect

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_MaleArmorScan Property AND_MaleScan Auto
AND_FemaleArmorScan Property AND_FemaleScan Auto
AND_NPC_Modesty_Manager Property AND_NPCModesty Auto
AND_ModestyRandomizer Property ModestyRandomizer Auto

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
	If akTarget == None
		return
	EndIf
	
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
		
		If AND_Config.UseDynamicModesty == True
			If AND_NPCModesty.FemaleExists(akTarget) == False
				akTarget.AddToFaction(ModestyFaction)
				akTarget.AddToFaction(TopModestyFaction)
				akTarget.AddToFaction(BottomModestyFaction)
				
				If akTarget == AND_Main.Rosa && AND_Config.ShamelessRosa == True
					akTarget.SetFactionRank(ModestyFaction, 7)
					akTarget.SetFactionRank(TopModestyFaction, 4)
					akTarget.SetFactionRank(BottomModestyFaction, 4)
				Else
					Int Modesty = ModestyRandomizer.GetRandomizedModesty(akTarget, False)
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
					ElseIf Modesty >= 6
						Modesty = 6
						TopModesty = 3
						BottomModesty = 3
					EndIf
					
					akTarget.SetFactionRank(ModestyFaction, Modesty)
					akTarget.SetFactionRank(TopModestyFaction, TopModesty)
					akTarget.SetFactionRank(BottomModestyFaction, BottomModesty)
				EndIf
				
				AND_NPCModesty.RegisterFemale(akTarget)
			Else
				If akTarget.GetFactionRank(FollowerFaction) >= 0 && AND_Config.DynamicFollowers == True
					AND_NPCModesty.ProcessNPCModesty(akTarget, AND_Config.StrictModestyRules)
				EndIf
			EndIf
		Else
			If akTarget.IsInFaction(ModestyFaction)
				akTarget.RemoveFromFaction(ModestyFaction)
				akTarget.RemoveFromFaction(TopModestyFaction)
				akTarget.RemoveFromFaction(BottomModestyFaction)
			EndIf
			
			If AND_NPCModesty.FemaleExists(akTarget) == True
				AND_NPCModesty.RemoveFemale(akTarget)
			EndIf
		EndIf
	EndIf
EndEvent