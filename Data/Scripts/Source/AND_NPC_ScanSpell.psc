ScriptName AND_NPC_ScanSpell extends ActiveMagicEffect

AND_Core Property AND_Main Auto
AND_MCM Property AND_Config Auto
AND_MaleArmorScan Property AND_MaleScan Auto
AND_FemaleArmorScan Property AND_FemaleScan Auto

Faction[] Property AND_Factions Auto
Faction Property ModestyFaction Auto

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
	
	If TargetSex == 1 && !akTarget.IsInFaction(ModestyFaction)
		Int Confidence = akTarget.GetActorValue("Confidence") as Int
		
		akTarget.AddToFaction(ModestyFaction)
		
		If Confidence <= 1
			akTarget.SetFactionRank(ModestyFaction, 0) ;Modest
		ElseIf Confidence == 2
			akTarget.SetFactionRank(ModestyFaction, 2) ;Relaxed
		ElseIf Confidence == 3
			akTarget.SetFactionRank(ModestyFaction, 4) ;Tease
		ElseIf Confidence >= 4
			akTarget.SetFactionRank(ModestyFaction, 6) ;Shameless
		EndIf
	EndIf
EndEvent