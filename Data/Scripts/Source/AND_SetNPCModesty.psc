ScriptName AND_SetNPCModesty extends ActiveMagicEffect

Faction Property ModestyFaction Auto

Int Property ModestyLevel Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Int TargetSex = akTarget.GetActorBase().GetSex() ;0 = Male | 1 = Female
	
	If TargetSex == 1
		If !akTarget.IsInFaction(ModestyFaction)
			akTarget.AddToFaction(ModestyFaction)
		EndIf
		
		akTarget.SetFactionRank(ModestyFaction, ModestyLevel)
	EndIf
EndEvent