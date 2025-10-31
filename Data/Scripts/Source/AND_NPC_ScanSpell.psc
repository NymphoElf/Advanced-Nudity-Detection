ScriptName AND_NPC_ScanSpell extends ActiveMagicEffect

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_NPCMaleArmorScan Property AND_NPCMaleScan Auto
AND_NPCFemaleArmorScan Property AND_NPCFemaleScan Auto
AND_NPC_Modesty_Manager Property AND_NPCModesty Auto
AND_ModestyRandomizer Property ModestyRandomizer Auto
AND_Logger Property Logger Auto

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
	
	akTarget.AddToFaction(AND_Factions[0])
	akTarget.AddToFaction(AND_Factions[1])
	akTarget.AddToFaction(AND_Factions[2])
	akTarget.AddToFaction(AND_Factions[3])
	akTarget.AddToFaction(AND_Factions[4])
	akTarget.AddToFaction(AND_Factions[5])
	akTarget.AddToFaction(AND_Factions[6])
	akTarget.AddToFaction(AND_Factions[7])
	
	ActorBase TargetBase = akTarget.GetActorBase()
	
	Int TargetSex = TargetBase.GetSex() ;0 = Male | 1 = Female
	String TargetName = TargetBase.GetName()
	
	If TargetSex == 0
		Logger.Log("<NPC Scan> [OnUpdateGameTime]Start Male (NPC) Scan for " + akTarget + " " + TargetName)
		AND_NPCMaleScan.AND_LayerAnalyze(akTarget, TargetName)
	Else
		Logger.Log("<NPC Scan> Start Female (NPC) Scan for " + akTarget + " " + TargetName)
		AND_NPCFemaleScan.AND_LayerAnalyze(akTarget, TargetName)
		
		If AND_Config.UseDynamicModesty == True
			Logger.Log("<NPC Scan> UseDynamicModesty is True")
			If AND_NPCModesty.FemaleExists(akTarget, False) == False && AND_NPCModesty.FemaleExists(akTarget, True) == False
				Logger.Log("<NPC Scan> Female " + akTarget + " " + TargetName + " doesn't exist")
				akTarget.AddToFaction(AND_Main.ModestyFaction)
				akTarget.AddToFaction(AND_Main.TopModestyFaction)
				akTarget.AddToFaction(AND_Main.BottomModestyFaction)
				
				akTarget.AddToFaction(AND_Main.ShyWithMale)
				akTarget.AddToFaction(AND_Main.ShyWithFemale)
				
				Int ShyMode = 0
				
				If akTarget == AND_Main.Rosa && AND_Config.ShamelessRosa == True
					Logger.Log("<NPC Scan> Female " + akTarget + " " + TargetName + " is Shameless")
					akTarget.SetFactionRank(AND_Main.ModestyFaction, 6)
					akTarget.SetFactionRank(AND_Main.TopModestyFaction, 3)
					akTarget.SetFactionRank(AND_Main.BottomModestyFaction, 3)
					
					akTarget.SetFactionRank(AND_Main.ShyWithMale, 1)
					akTarget.SetFactionRank(AND_Main.ShyWithFemale, 0)
					
					AND_NPCModesty.RegisterRosa(akTarget)
				Else
					Logger.Log("<NPC Scan> Female " + akTarget + " " + TargetName + " is either not Rosa or Rosa isn't Shameless")
					AND_NPCModesty.RegisterFemale(akTarget, False)
				EndIf
			ElseIf AND_NPCModesty.FemaleExists(akTarget, True) == True
				Logger.Log("<NPC Scan> Female " + akTarget + " " + TargetName + " exists on the Permanent List, but not the Save-Specific list")
				
				AND_NPCModesty.RegisterFemale(akTarget, True)
			Else
				Logger.Log("<NPC Scan> Female " + akTarget + " " + TargetName + " exists!")
				If akTarget.GetFactionRank(FollowerFaction) >= 0 && AND_Config.DynamicFollowers == True
					Logger.Log("<NPC Scan> Female " + akTarget + " " + TargetName + " is a follower and Dynamic Followers is True!")
					AND_NPCModesty.ProcessNPCModesty(akTarget, AND_Config.StrictModestyRules)
				EndIf
			EndIf
		Else
			Logger.Log("<NPC Scan> UseDynamicModesty is False")
			akTarget.RemoveFromFaction(AND_Main.ModestyFaction)
			akTarget.RemoveFromFaction(AND_Main.TopModestyFaction)
			akTarget.RemoveFromFaction(AND_Main.BottomModestyFaction)
			akTarget.RemoveFromFaction(AND_Main.ShyWithMale)
			akTarget.RemoveFromFaction(AND_Main.ShyWithFemale)
			
			If AND_NPCModesty.FemaleExists(akTarget) == True
				AND_NPCModesty.RemoveFemale(akTarget)
			EndIf
		EndIf
	EndIf
EndEvent