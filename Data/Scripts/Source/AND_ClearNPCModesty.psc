ScriptName AND_ClearNPCModesty extends ActiveMagicEffect

AND_Core Property Core Auto
AND_MCM Property Config Auto
AND_NPC_Modesty_Manager Property NPCModesty Auto

Faction Property ModestyFaction Auto
Faction Property TopModestyFaction Auto
Faction Property BottomModestyFaction Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Int TargetSex = akTarget.GetActorBase().GetSex() ;0 = Male | 1 = Female
	
	If TargetSex != 1
		return
	ElseIf Core.RosaExists == True && akTarget == Core.Rosa && Config.DynamicRosa == False
		return
	EndIf
	
	akTarget.RemoveFromFaction(ModestyFaction)
	akTarget.RemoveFromFaction(TopModestyFaction)
	akTarget.RemoveFromFaction(BottomModestyFaction)
	
	NPCModesty.RemoveFemale(akTarget)
EndEvent