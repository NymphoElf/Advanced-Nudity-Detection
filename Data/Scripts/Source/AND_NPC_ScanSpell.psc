ScriptName AND_NPC_ScanSpell extends ActiveMagicEffect

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_MaleArmorScan Property AND_MaleScan Auto
AND_FemaleArmorScan Property AND_FemaleScan Auto

Faction[] Property AND_Factions Auto

GlobalVariable Property AND_DebugMode Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If !akTarget.IsInFaction(AND_Factions[0]) || !akTarget.IsInFaction(AND_Factions[1]) || !akTarget.IsInFaction(AND_Factions[2]) || !akTarget.IsInFaction(AND_Factions[3]) || !akTarget.IsInFaction(AND_Factions[4]) || !akTarget.IsInFaction(AND_Factions[5]) || !akTarget.IsInFaction(AND_Factions[6]) || !akTarget.IsInFaction(AND_Factions[7])
		akTarget.AddToFaction(AND_Factions[0])
		akTarget.AddToFaction(AND_Factions[1])
		akTarget.AddToFaction(AND_Factions[2])
		akTarget.AddToFaction(AND_Factions[3])
		akTarget.AddToFaction(AND_Factions[4])
		akTarget.AddToFaction(AND_Factions[5])
		akTarget.AddToFaction(AND_Factions[6])
		akTarget.AddToFaction(AND_Factions[7])
	EndIf
	
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
EndEvent