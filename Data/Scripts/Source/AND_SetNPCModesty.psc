ScriptName AND_SetNPCModesty extends ActiveMagicEffect

AND_Core Property Core Auto
AND_MCM Property Config Auto
AND_NPC_Modesty_Manager Property NPCModesty Auto

Faction Property ModestyFaction Auto
Faction Property TopModestyFaction Auto
Faction Property BottomModestyFaction Auto

Int Property ModestyLevel Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Int TargetSex = akTarget.GetActorBase().GetSex() ;0 = Male | 1 = Female
	
	If TargetSex != 1
		return
	ElseIf Core.RosaExists == True && akTarget == Core.Rosa && Config.DynamicRosa == False
		return
	EndIf
	
	Int TopModesty = 0
	Int BottomModesty = 0
	
	akTarget.AddToFaction(ModestyFaction)
	akTarget.AddToFaction(TopModestyFaction)
	akTarget.AddToFaction(BottomModestyFaction)
	
	If ModestyLevel == 1
		TopModesty = 1
	ElseIf ModestyLevel == 2
		TopModesty = 1
		BottomModesty = 2
	ElseIf ModestyLevel == 3
		TopModesty = 2
		BottomModesty = 1
	ElseIf ModestyLevel == 4
		TopModesty = 2
		BottomModesty = 2
	ElseIf ModestyLevel == 5
		TopModesty = 3
		BottomModesty = 2
	ElseIf ModestyLevel >= 6
		TopModesty = 3
		BottomModesty = 3
	EndIf
	
	akTarget.SetFactionRank(ModestyFaction, ModestyLevel)
	akTarget.SetFactionRank(TopModestyFaction, TopModesty)
	akTarget.SetFactionRank(BottomModestyFaction, BottomModesty)
	
	NPCModesty.ResetFemale(akTarget)
EndEvent