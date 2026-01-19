ScriptName AND_NPC_ScanSpell extends ActiveMagicEffect

AND_Core Property Core Auto
AND_MCM Property Config Auto
AND_NPCMaleArmorScan Property NPCMaleScan Auto
AND_NPCFemaleArmorScan Property NPCFemaleScan Auto
AND_NPC_Modesty_Manager Property NPCModesty Auto
AND_ModestyRandomizer Property ModestyRandomizer Auto

Faction[] Property AND_Factions Auto
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

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akTarget == None
		return
	EndIf
	
	Int Index = 0
	While Index < AND_Factions.Length
		If akTarget.IsInFaction(AND_Factions[Index]) == False
			akTarget.AddToFaction(AND_Factions[Index])
		EndIf
		Index += 1
	EndWhile
	
	ActorBase TargetBase = akTarget.GetActorBase()
	
	Int TargetSex = TargetBase.GetSex() ;0 = Male | 1 = Female
	String TargetName = TargetBase.GetName()
	
	If TargetSex == 0
		AND_Logger.FastLog("<NPC Scan> [OnUpdateGameTime]Start Male (NPC) Scan for " + akTarget + " " + TargetName)
		NPCMaleScan.FullAnalyze(akTarget, TargetName)
	Else
		AND_Logger.FastLog("<NPC Scan> Start Female (NPC) Scan for " + akTarget + " " + TargetName)
		NPCFemaleScan.FullAnalyze(akTarget, TargetName)
		
		If Config.UseDynamicModesty == True
			AND_Logger.FastLog("<NPC Scan> UseDynamicModesty is True")
			If NPCModesty.FemaleExists(akTarget, False) == False && NPCModesty.FemaleExists(akTarget, True) == False
				AND_Logger.FastLog("<NPC Scan> Female " + akTarget + " " + TargetName + " doesn't exist")
				akTarget.AddToFaction(Core.ModestyFaction)
				akTarget.AddToFaction(Core.TopModestyFaction)
				akTarget.AddToFaction(Core.BottomModestyFaction)
				
				akTarget.AddToFaction(Core.ShyWithMale)
				akTarget.AddToFaction(Core.ShyWithFemale)
				
				Int ShyMode = 0
				
				If akTarget == Core.Rosa
					AND_Logger.FastLog("<NPC Scan> Female " + akTarget + " " + TargetName + " is Shameless")
					akTarget.SetFactionRank(Core.ModestyFaction, 6)
					akTarget.SetFactionRank(Core.TopModestyFaction, 3)
					akTarget.SetFactionRank(Core.BottomModestyFaction, 3)
					
					akTarget.SetFactionRank(Core.ShyWithMale, 1)
					akTarget.SetFactionRank(Core.ShyWithFemale, 0)
					
					NPCModesty.RegisterRosa(akTarget)
				Else
					AND_Logger.FastLog("<NPC Scan> Female " + akTarget + " " + TargetName + " is either not Rosa or Rosa isn't Shameless")
					NPCModesty.RegisterFemale(akTarget, False)
				EndIf
			ElseIf NPCModesty.FemaleExists(akTarget, True) == True
				AND_Logger.FastLog("<NPC Scan> Female " + akTarget + " " + TargetName + " exists on the Permanent List, but not the Save-Specific list")
				
				NPCModesty.RegisterFemale(akTarget, True)
			Else
				AND_Logger.FastLog("<NPC Scan> Female " + akTarget + " " + TargetName + " exists!")
				If akTarget.GetFactionRank(FollowerFaction) >= 0 && Config.DynamicFollowers == True
					AND_Logger.FastLog("<NPC Scan> Female " + akTarget + " " + TargetName + " is a follower and Dynamic Followers is True!")
					NPCModesty.ProcessNPCModesty(akTarget)
				EndIf
			EndIf
		Else
			AND_Logger.FastLog("<NPC Scan> UseDynamicModesty is False")
			akTarget.RemoveFromFaction(Core.ModestyFaction)
			akTarget.RemoveFromFaction(Core.TopModestyFaction)
			akTarget.RemoveFromFaction(Core.BottomModestyFaction)
			akTarget.RemoveFromFaction(Core.ShyWithMale)
			akTarget.RemoveFromFaction(Core.ShyWithFemale)
			
			If NPCModesty.FemaleExists(akTarget) == True
				NPCModesty.RemoveFemale(akTarget)
			EndIf
		EndIf
	EndIf
EndEvent