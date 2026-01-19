ScriptName AND_Modesty_Manager extends Quest

AND_Core Property Core Auto
AND_MCM Property Config Auto
AND_Logger Property Logger Auto

Actor Property PlayerRef Auto

Bool Property RegisteredForUpdate Auto Hidden
Bool Property UpgradeBlocked Auto Hidden

Float Property LastTimeCheck Auto Hidden

Int[] Property ModestyTimer Auto

Int[] Property TopModestyTimer Auto ;0 = ShowingBra, 1 = ShowingChest, 2 = Topless, 3 = Permanent
Int[] Property BottomModestyTimer Auto ;0 = ShowingBra, 1 = ShowingChest, 2 = Topless, 3 = Permanent

String[] Property ModestyTitle Auto
String[] Property TopModestyTitle Auto
String[] Property BottomModestyTitle Auto

Event OnInit()
	RegisterForUpdateGameTime(1.0)
	RegisteredForUpdate = True
	LastTimeCheck = Utility.GetCurrentGameTime()
EndEvent

Event OnUpdateGameTime()
	If Core.DFFMA_Found == False && Core.EnableDynamicModesty == False
		UnregisterForUpdateGameTime()
		RegisteredForUpdate = False
		return
	EndIf
	
	If Config.UseDynamicModesty == False || UpgradeBlocked == True
		return
	EndIf
	
	Float CurrentGameTime = Utility.GetCurrentGameTime()
	Int Hours = ((CurrentGameTime - LastTimeCheck)/0.041666) as Int
	Int UpgradeTime = (Config.ImmodestyTimeNeeded * 24)
	Bool StrictRules = Config.StrictModestyRules
	Bool Corruption = Config.ModestyCorruption
	
	AND_Logger.FastLog("<Modesty Manager> [OnUpdateGameTime] Hours is: " + Hours)
	
	If Hours > 0
		LastTimeCheck = CurrentGameTime
		If StrictRules == True
			ModestyUpgrade(Hours, UpgradeTime, Corruption)
		Else
			TopModestyUpgrade(Hours, UpgradeTime, Corruption)
			BottomModestyUpgrade(Hours, UpgradeTime, Corruption)
		EndIf
	EndIf
EndEvent

Function TopModestyUpgrade(Int Hours, Int UpgradeTime, Bool Corruption)
	Int TopModestyRank = PlayerRef.GetFactionRank(Core.TopModestyFaction)
	
	If Config.MinimumTopModestyRank > TopModestyRank
		TopModestyRankChange(True, Config.MinimumTopModestyRank)
		return
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] Upgrade Time is: " + UpgradeTime)
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] Corruption Active: " + Corruption)
	
	Bool IsShowingBra = PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction) as Bool
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] IsShowingBra = " + PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction))
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] IsShowingBra = " + PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction) as Bool)
	
	Bool IsShowingChest = PlayerRef.GetFactionRank(Core.AND_ShowingChestFaction) as Bool
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] IsShowingChest = " + PlayerRef.GetFactionRank(Core.AND_ShowingChestFaction))
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] IsShowingChest = " + PlayerRef.GetFactionRank(Core.AND_ShowingChestFaction) as Bool)
	
	Bool IsTopless = PlayerRef.GetFactionRank(Core.AND_ToplessFaction) as Bool
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] IsTopless = " + PlayerRef.GetFactionRank(Core.AND_ToplessFaction))
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] IsTopless = " + PlayerRef.GetFactionRank(Core.AND_ToplessFaction) as Bool)
	
	If TopModestyRank <= 0 && (IsShowingBra == True && IsShowingChest == False)
		TopModestyTimer[0] = TopModestyTimer[0] + (TopModestyTimer[1]/2) + Hours
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyRank <= 0 && (IsShowingBra == True && IsShowingChest == False && IsTopless == False)")
	ElseIf TopModestyRank <= 1 && (IsShowingChest == True && IsTopless == False)
		TopModestyTimer[1] = TopModestyTimer[1] + (TopModestyTimer[2]/2) + Hours
		TopModestyTimer[0] = TopModestyTimer[0] + (TopModestyTimer[1]/2)
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyRank <= 1 && (IsShowingChest == True && IsTopless == False)")
	ElseIf TopModestyRank == 1 && (IsShowingBra == True && IsShowingChest == False)
		;Do Nothing
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyRank == 1 && (IsShowingBra == True && IsShowingChest == False)")
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] No Upgrade or Downgrade")
	ElseIf TopModestyRank <= 2 && IsTopless == True
		TopModestyTimer[2] = TopModestyTimer[2] + Hours
		TopModestyTimer[1] = TopModestyTimer[1] + (TopModestyTimer[2]/2)
		TopModestyTimer[0] = TopModestyTimer[0] + (TopModestyTimer[1]/2)
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyRank <= 2 && IsShowingChest == True")
	ElseIf TopModestyRank == 2 && (IsShowingChest == True && IsTopless == False)
		;Do Nothing
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyRank == 2 && (IsShowingChest == True && IsTopless == False)")
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] No Upgrade or Downgrade")
	ElseIf TopModestyRank == 3 && IsTopless == True
		AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyRank == 3 && IsTopless == True")
		TopModestyTimer[3] = TopModestyTimer[3] + Hours
		If TopModestyTimer[3] > 0 && Config.PermanentShameless == False
			TopModestyTimer[3] = 0
		EndIf
	Else
		If Corruption == True || (TopModestyRank > 3 && Config.PermanentShameless == True)
			AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] Corruption Active or Permanently Shameless. Cannot Downgrade.")
		Else
			TopModestyDowngrade(TopModestyRank, IsShowingBra, IsShowingChest, IsTopless, Hours)
			return
		EndIf
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyTimer[0] = " + TopModestyTimer[0])
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyTimer[1] = " + TopModestyTimer[1])
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyTimer[2] = " + TopModestyTimer[2])
	AND_Logger.FastLog("<Modesty Manager> [TopModestyUpgrade] TopModestyTimer[3] = " + TopModestyTimer[3])
	
	If TopModestyRank <= 0
		If TopModestyTimer[0] >= UpgradeTime
			TopModestyRankChange(True, 1)
		EndIf
	ElseIf TopModestyRank == 1
		If TopModestyTimer[1] >= UpgradeTime
			TopModestyRankChange(True, 2)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer[2] >= UpgradeTime
			TopModestyRankChange(True, 3)
		EndIf
	ElseIf TopModestyRank == 3 && Config.PermanentShameless == True
		If TopModestyTimer[3] >= (UpgradeTime *2) 
			TopModestyTimer[3] = (UpgradeTime * 2)
			TopModestyRankChange(True, 4)
		EndIf
	EndIf
EndFunction

Function TopModestyDowngrade(Int TopModestyRank, Bool IsShowingBra, Bool IsShowingChest, Bool IsTopless, Int Hours)
	Int DowngradeTime = (0 - (Config.ImmodestyTimeNeeded * 24))
	AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] Downgrade Time is: " + DowngradeTime)
	
	If TopModestyRank <= 0 && (IsShowingBra == False && IsShowingChest == False)
		AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyRank <= 0 && (IsShowingBra == False && IsShowingChest == False)")
		Int Index = 0
		While Index < 3
			TopModestyTimer[Index] = TopModestyTimer[Index] - Hours
			
			If TopModestyTimer[Index] < 0
				TopModestyTimer[Index] = 0
			EndIf
			Index += 1
		EndWhile
	ElseIf TopModestyRank == 1 && (IsShowingBra == False && IsShowingChest == False)
		AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyRank == 1 && (IsShowingBra == False && IsShowingChest == False)")
		TopModestyTimer[1] = TopModestyTimer[1] - Hours
		TopModestyTimer[2] = TopModestyTimer[2] - Hours
		If TopModestyTimer[2] < 0
			TopModestyTimer[2] = 0
		EndIf
	ElseIf TopModestyRank == 2 && IsShowingChest == False
		AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyRank == 2 && IsShowingChest == False")
		TopModestyTimer[2] = TopModestyTimer[2] - Hours
	ElseIf TopModestyRank == 3 && IsTopless == False
		AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyRank == 3 && IsTopless == False")
		TopModestyTimer[3] = TopModestyTimer[3] - Hours
	Else
		AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] Could not upgrade nor downgrade Top Modesty.")
		return
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyTimer[0] = " + TopModestyTimer[0])
	AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyTimer[1] = " + TopModestyTimer[1])
	AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyTimer[2] = " + TopModestyTimer[2])
	AND_Logger.FastLog("<Modesty Manager> [TopModestyDowngrade] TopModestyTimer[3] = " + TopModestyTimer[3])
	
	If TopModestyRank == 1
		If TopModestyTimer[1] <= DowngradeTime
			TopModestyRankChange(False, 0)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer[2] <= DowngradeTime
			TopModestyRankChange(False, 1)
		EndIf
	ElseIf TopModestyRank == 3
		If TopModestyTimer[3] <= DowngradeTime
			TopModestyRankChange(False, 2)
		EndIf
	EndIf
EndFunction

Function BottomModestyUpgrade(Int Hours, Int UpgradeTime, Bool Corruption)
	Int BottomModestyRank = PlayerRef.GetFactionRank(Core.BottomModestyFaction)
	
	If Config.MinimumBottomModestyRank > BottomModestyRank
		BottomModestyRankChange(True, Config.MinimumBottomModestyRank)
		return
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] Upgrade Time is: " + UpgradeTime)
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyUpgrade - Corruption Active: " + Corruption)
	
	Bool IsShowingUnderwear = PlayerRef.GetFactionRank(Core.AND_ShowingUnderwearFaction) as Bool
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] IsShowingUnderwear = " + PlayerRef.GetFactionRank(Core.AND_ShowingUnderwearFaction))
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] IsShowingUnderwear = " + PlayerRef.GetFactionRank(Core.AND_ShowingUnderwearFaction) as Bool)
	
	Bool IsShowingGenitals = PlayerRef.GetFactionRank(Core.AND_ShowingGenitalsFaction) as Bool
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] IsShowingGenitals = " + PlayerRef.GetFactionRank(Core.AND_ShowingGenitalsFaction))
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] IsShowingGenitals = " + PlayerRef.GetFactionRank(Core.AND_ShowingGenitalsFaction) as Bool)
	
	Bool IsBottomless = PlayerRef.GetFactionRank(Core.AND_BottomlessFaction) as Bool
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] IsBottomless = " + PlayerRef.GetFactionRank(Core.AND_BottomlessFaction))
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] IsBottomless = " + PlayerRef.GetFactionRank(Core.AND_BottomlessFaction) as Bool)
	
	If BottomModestyRank <= 0 && (IsShowingUnderwear == True && IsShowingGenitals == False && IsBottomless == False)
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyRank <= 0 && (IsShowingUnderwear == True && IsShowingGenitals == False && IsBottomless == False)")
		BottomModestyTimer[0] = BottomModestyTimer[0] + (BottomModestyTimer[1]/2) + Hours
	ElseIf BottomModestyRank <= 1 && (IsShowingGenitals == True && IsBottomless == False)
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyRank <= 1 && (IsShowingGenitals == True && IsBottomless == False)")
		BottomModestyTimer[1] = BottomModestyTimer[1] + (BottomModestyTimer[2]/2) + Hours
		BottomModestyTimer[0] = BottomModestyTimer[0] + (BottomModestyTimer[1]/2)
	ElseIf BottomModestyRank == 1 && (IsShowingUnderwear == True && IsShowingGenitals == False && IsBottomless == False)
		;Do Nothing
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyRank == 1 && (IsShowingUnderwear == True && IsShowingGenitals == False && IsBottomless == False)")
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] No Upgrade or Downgrade")
	ElseIf BottomModestyRank <= 2 && IsShowingGenitals == True
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyRank <= 2 && IsShowingGenitals == True")
		BottomModestyTimer[2] = BottomModestyTimer[2] + Hours
		BottomModestyTimer[1] = BottomModestyTimer[1] + (BottomModestyTimer[2]/2)
		BottomModestyTimer[0] = BottomModestyTimer[0] + (BottomModestyTimer[1]/2)
	ElseIf BottomModestyRank == 2 && (IsShowingGenitals == True && IsBottomless == False)
		;Do Nothing
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyRank == 2 && (IsShowingGenitals == True && IsBottomless == False)")
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] No Upgrade or Downgrade")
		
	ElseIf BottomModestyRank == 3 && IsBottomless == True
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyRank <= 3 && IsBottomless == True")
		BottomModestyTimer[3] = BottomModestyTimer[3] + Hours
		If BottomModestyTimer[3] > 0 && Config.PermanentShameless == False
			BottomModestyTimer[3] = 0
		EndIf
	Else
		If Corruption == True || (BottomModestyRank > 3 && Config.PermanentShameless == True)
			AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] Corruption Active. Cannot Downgrade.")
		Else
			BottomModestyDowngrade(BottomModestyRank, IsShowingUnderwear, IsShowingGenitals, IsBottomless, Hours)
			return
		EndIf
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyTimer[0] = " + BottomModestyTimer[0])
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyTimer[1] = " + BottomModestyTimer[1])
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyTimer[2] = " + BottomModestyTimer[2])
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyUpgrade] BottomModestyTimer[3] = " + BottomModestyTimer[3])
	
	If BottomModestyRank <= 0
		If BottomModestyTimer[0] >= UpgradeTime
			BottomModestyRankChange(True, 1)
		EndIf
	ElseIf BottomModestyRank == 1
		If BottomModestyTimer[1] >= UpgradeTime
			BottomModestyRankChange(True, 2)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer[2] >= UpgradeTime
			BottomModestyRankChange(True, 3)
		EndIf
	ElseIf BottomModestyRank == 3 && Config.PermanentShameless == True
		If BottomModestyTimer[3] >= (UpgradeTime * 2)
			BottomModestyTimer[3] = (UpgradeTime * 2)
			BottomModestyRankChange(True, 4)
		EndIf
	EndIf
EndFunction

Function BottomModestyDowngrade(Int BottomModestyRank, Bool IsShowingUnderwear, Bool IsShowingGenitals, Bool IsBottomless, Int Hours)
	Int DowngradeTime = (0 - (Config.ImmodestyTimeNeeded * 24))
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] Downgrade Time is: " + DowngradeTime)
	
	If BottomModestyRank <= 0 && (IsShowingUnderwear == False && IsShowingGenitals == False && IsBottomless == False)
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyRank <= 0 && (IsShowingUnderwear == False && IsShowingGenitals == False && IsBottomless == False)")
		Int Index = 0
		While Index < 3
			BottomModestyTimer[Index] = BottomModestyTimer[Index] - Hours
			
			If BottomModestyTimer[Index] < 0
				BottomModestyTimer[Index] = 0
			EndIf
			Index += 1
		EndWhile
	ElseIf BottomModestyRank == 1 && (IsShowingGenitals == False && IsBottomless == False)
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyRank == 1 && (IsShowingGenitals == False && IsBottomless == False)")
		BottomModestyTimer[1] = BottomModestyTimer[1] - Hours
		BottomModestyTimer[2] = BottomModestyTimer[2] - Hours
		If BottomModestyTimer[2] < 0
			BottomModestyTimer[2] = 0
		EndIf
	ElseIf BottomModestyRank == 2 && IsShowingGenitals == False
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyRank == 2 && IsShowingGenitals == False")
		BottomModestyTimer[2] = BottomModestyTimer[2] - Hours
	ElseIf BottomModestyRank == 3 && IsBottomless == False
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyRank == 3 && IsBottomless == False")
		BottomModestyTimer[3] = BottomModestyTimer[3] - Hours
	Else
		AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] Could not upgrade nor downgrade Bottom Modesty.")
		return
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyTimer[0] = " + BottomModestyTimer[0])
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyTimer[1] = " + BottomModestyTimer[1])
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyTimer[2] = " + BottomModestyTimer[2])
	AND_Logger.FastLog("<Modesty Manager> [BottomModestyDowngrade] BottomModestyTimer[3] = " + BottomModestyTimer[3])
	
	If BottomModestyRank == 1
		If BottomModestyTimer[1] <= DowngradeTime
			BottomModestyRankChange(False, 0)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer[2] <= DowngradeTime
			BottomModestyRankChange(False, 1)
		EndIf
	ElseIf BottomModestyRank == 3
		If BottomModestyTimer[3] <= DowngradeTime
			BottomModestyRankChange(False, 2)
		EndIf
	EndIf
EndFunction

Function ModestyUpgrade(Int Hours, Int UpgradeTime, Bool Corruption)
	Int ModestyRank = PlayerRef.GetFactionRank(Core.ModestyFaction)
	
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Upgrade Time is: " + UpgradeTime)
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active: " + Corruption)
	
	Bool IsShowingBra = PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction) as Bool
	Bool IsShowingChest = PlayerRef.GetFactionRank(Core.AND_ShowingChestFaction) as Bool
	Bool IsTopless = PlayerRef.GetFactionRank(Core.AND_ToplessFaction) as Bool
	
	Bool IsShowingUnderwear = PlayerRef.GetFactionRank(Core.AND_ShowingUnderwearFaction) as Bool
	Bool IsShowingGenitals = PlayerRef.GetFactionRank(Core.AND_ShowingGenitalsFaction) as Bool
	Bool IsBottomless = PlayerRef.GetFactionRank(Core.AND_BottomlessFaction) as Bool
	
	Bool IsNude = PlayerRef.GetFactionRank(Core.AND_NudeActorFaction) as Bool
	
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] IsShowingBra = " + PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction) as Bool)
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] IsShowingChest = " + PlayerRef.GetFactionRank(Core.AND_ShowingChestFaction) as Bool)
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] IsTopless = " + PlayerRef.GetFactionRank(Core.AND_ToplessFaction) as Bool)
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] IsShowingUnderwear = " + PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction) as Bool)
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] IsShowingGenitals = " + PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction) as Bool)
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] IsBottomless = " + PlayerRef.GetFactionRank(Core.AND_ShowingBraFaction) as Bool)
	
	If Config.MinimumModestyRank > ModestyRank
		RankJump(Config.MinimumModestyRank)
		return
	EndIf
	
	If ModestyRank <= 0
		AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Modesty Rank <= 0")
		If IsShowingBra == True && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If ModestyTimer[0] < UpgradeTime
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[0] Increase")
				ModestyTimer[0] = ModestyTimer[0] + Hours
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Rank Up")
				ModestyTimer[0] = UpgradeTime
				ModestyRankChange(True, 1)
			EndIf
		ElseIf IsShowingBra == False && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If Corruption == False
				If ModestyTimer[0] > 0
					AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[0] Decrease")
					ModestyTimer[0] = ModestyTimer[0] - Hours
					If ModestyTimer[0] < 0
						ModestyTimer[0] = 0
					EndIf
				EndIf
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active. Cannot Downgrade.")
			EndIf
		EndIf
		
	ElseIf ModestyRank == 1
		AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Modesty Rank == 1")
		If IsShowingUnderwear == True && IsShowingGenitals == False && IsShowingChest == False
			AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[1] Increase")
			If ModestyTimer[1] < UpgradeTime
				ModestyTimer[1] = ModestyTimer[1] + Hours
			Else
				ModestyTimer[1] = UpgradeTime
				ModestyRankChange(True, 2)
			EndIf
		ElseIf IsShowingBra == False && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If Corruption == False
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[1] Decrease")
				ModestyDowngrade(1, Hours)
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active. Cannot Downgrade.")
			EndIf
		EndIf
	
	ElseIf ModestyRank == 2
		AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Modesty Rank == 2")
		If IsShowingChest == True && IsTopless == False && IsShowingGenitals == False
			AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[2] Increase")
			If ModestyTimer[2] < UpgradeTime
				ModestyTimer[2] = ModestyTimer[2] + Hours
			Else
				ModestyTimer[2] = UpgradeTime
				ModestyRankChange(True, 3)
			EndIf
		ElseIf IsShowingUnderwear == False && IsShowingGenitals == False && IsShowingChest == False
			If Corruption == False
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[2] Decrease")
				ModestyDowngrade(2, Hours)
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active. Cannot Downgrade.")
			EndIf
		EndIf
		
	ElseIf ModestyRank == 3
		AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Modesty Rank == 3")
		If IsShowingGenitals == True && IsBottomless == False && IsTopless == False
			AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[3] Increase")
			If ModestyTimer[3] < UpgradeTime
				ModestyTimer[3] = ModestyTimer[3] + Hours
			Else
				ModestyTimer[3] = UpgradeTime
				ModestyRankChange(True, 4)
			EndIf
		ElseIf IsShowingChest == False && IsShowingGenitals == False
			If Corruption == False
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[3] Decrease")
				ModestyDowngrade(3, Hours)
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active. Cannot Downgrade.")
			EndIf
		EndIf
		
	ElseIf ModestyRank == 4
		AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Modesty Rank == 4")
		If IsTopless == True && IsBottomless == False
			AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[4] Increase")
			If ModestyTimer[4] < UpgradeTime
				ModestyTimer[4] = ModestyTimer[4] + Hours
			Else
				ModestyTimer[4] = UpgradeTime
				ModestyRankChange(True, 5)
			EndIf
		ElseIf IsShowingChest == False && IsShowingGenitals == False
			If Corruption == False
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[4] Decrease")
				ModestyDowngrade(4, Hours)
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active. Cannot Downgrade.")
			EndIf
		EndIf
		
	ElseIf ModestyRank == 5
		AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Modesty Rank == 5")
		If IsBottomless == True
			AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[5] Increase")
			If ModestyTimer[5] < UpgradeTime
				ModestyTimer[5] = ModestyTimer[5] + Hours
			Else
				ModestyTimer[5] = UpgradeTime
				ModestyRankChange(True, 6)
			EndIf
		ElseIf IsShowingChest == False || IsShowingGenitals == False
			If Corruption == False
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[5] Decrease")
				ModestyDowngrade(5, Hours)
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active. Cannot Downgrade.")
			EndIf
		EndIf
		
	ElseIf ModestyRank == 6
		AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Modesty Rank == 6")
		If IsTopless == False && IsBottomless == False
			If Corruption == False
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[6] Decrease")
				ModestyDowngrade(6, Hours)
			Else
				AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Corruption Active. Cannot Downgrade.")
			EndIf
		ElseIf IsNude == True
			AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] Timer[6] Recover")
			ModestyTimer[6] = ModestyTimer[6] + Hours
			If ModestyTimer[6] > 0 && Config.PermanentShameless == False
				ModestyTimer[6] = 0
			ElseIf ModestyTimer[6] >= (UpgradeTime * 2)
				ModestyTimer[6] = (UpgradeTime * 2)
				ModestyRankChange(True, 7)
			EndIf
		EndIf
	ElseIf ModestyRank > 6
		If Config.PermanentShameless == True
			AND_Logger.FastLog("<Modesty Manager> [Modesty Upgrade] Modesty Rank == 7 | Permanently Shameless")
		Else
			PlayerRef.SetFactionRank(Core.ModestyFaction, 6)
		EndIf
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] ModestyTimer[0] = " + ModestyTimer[0])
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] ModestyTimer[1] = " + ModestyTimer[1])
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] ModestyTimer[2] = " + ModestyTimer[2])
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] ModestyTimer[3] = " + ModestyTimer[3])
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] ModestyTimer[4] = " + ModestyTimer[4])
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] ModestyTimer[5] = " + ModestyTimer[5])
	AND_Logger.FastLog("<Modesty Manager> [ModestyUpgrade] ModestyTimer[6] = " + ModestyTimer[6])
EndFunction

Function ModestyDowngrade(Int FactionRank, Int Hours)
	Int DowngradeTime = (0 - (Config.ImmodestyTimeNeeded * 24))
	Int FactionRankDown = FactionRank - 1
	
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] Downgrade Time is: " + DowngradeTime)
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] FactionRankDown is: " + FactionRankDown)
	
	If Config.MinimumModestyRank < FactionRank
		AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] Minimum Rank (" + Config.MinimumModestyRank + ") is lower than current rank: " + FactionRank)
		ModestyTimer[FactionRank] = ModestyTimer[FactionRank] - Hours
		
		If ModestyTimer[FactionRank] <= DowngradeTime
			ModestyTimer[FactionRank] = DowngradeTime
			ModestyRankChange(False, FactionRankDown)
		EndIf
	EndIf
	
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] ModestyTimer[0] = " + ModestyTimer[0])
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] ModestyTimer[1] = " + ModestyTimer[1])
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] ModestyTimer[2] = " + ModestyTimer[2])
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] ModestyTimer[3] = " + ModestyTimer[3])
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] ModestyTimer[4] = " + ModestyTimer[4])
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] ModestyTimer[5] = " + ModestyTimer[5])
	AND_Logger.FastLog("<Modesty Manager> [ModestyDowngrade] ModestyTimer[6] = " + ModestyTimer[6])
EndFunction

Function TopModestyRankChange(Bool IsRankUpgrade, Int Rank)
	PlayerRef.SetFactionRank(Core.TopModestyFaction, Rank)
	
	TopModestyTimer[0] = 0
	TopModestyTimer[1] = 0
	TopModestyTimer[2] = 0
	TopModestyTimer[3] = 0
	
	If IsRankUpgrade == True
		If Rank == 1
			ModestyAlert("Top Immodesty Upgrade: Rank 1 (Comfortable)")
		ElseIf Rank == 2
			ModestyAlert("Top Immodesty Upgrade: Rank 2 (Bold)")
		ElseIf Rank == 3
			ModestyAlert("Top Immodesty Upgrade: Rank 3 (Shameless)")
		ElseIf Rank == 4
			ModestyAlert("Top Immodesty Upgrade: Rank 4 (Permanently Shameless)")
		EndIf
	Else
		If Rank == 0
			ModestyAlert("Top Immodesty Downgrade: Rank 0 (Modest)")
		ElseIf Rank == 1
			ModestyAlert("Top Immodesty Downgrade: Rank 1 (Comfortable)")
		ElseIf Rank == 2
			ModestyAlert("Top Immodesty Downgrade: Rank 2 (Bold)")
		EndIf
	EndIf
	
	If Config.ModestyMonologue == True
		ModestyInnerMonologue(IsRankUpgrade, Rank, 2)
	EndIf
EndFunction

Function BottomModestyRankChange(Bool IsRankUpgrade, Int Rank)
	PlayerRef.SetFactionRank(Core.BottomModestyFaction, Rank)
	
	BottomModestyTimer[0] = 0
	BottomModestyTimer[1] = 0
	BottomModestyTimer[2] = 0
	BottomModestyTimer[3] = 0
	
	If IsRankUpgrade == True
		If Rank == 1
			ModestyAlert("Bottom Immodesty Upgrade: Rank 1 (Comfortable)")
		ElseIf Rank == 2
			ModestyAlert("Bottom Immodesty Upgrade: Rank 2 (Bold)")
		ElseIf Rank == 3
			ModestyAlert("Bottom Immodesty Upgrade: Rank 3 (Shameless)")
		ElseIf Rank == 4
			ModestyAlert("Bottom Immodesty Upgrade: Rank 4 (Permanently Shameless)")
		EndIf
	Else
		If Rank == 0
			ModestyAlert("Bottom Immodesty Downgrade: Rank 0 (Modest)")
		ElseIf Rank == 1
			ModestyAlert("Bottom Immodesty Downgrade: Rank 1 (Comfortable)")
		ElseIf Rank == 2
			ModestyAlert("Bottom Immodesty Downgrade: Rank 2 (Bold)")
		EndIf
	EndIf
	
	If Config.ModestyMonologue == True
		ModestyInnerMonologue(IsRankUpgrade, Rank, 3)
	EndIf
EndFunction

Function ModestyRankChange(Bool IsRankUpgrade, Int Rank)
	PlayerRef.SetFactionRank(Core.ModestyFaction, Rank)
	
	Int Index = 0
	While Index < Rank 
		ModestyTimer[Index] = Config.ImmodestyTimeNeeded
		Index += 1
	EndWhile
	While Index < 7
		ModestyTimer[Index] = 0
		Index += 1
	EndWhile
	
	If IsRankUpgrade == True
		If Rank == 1
			ModestyAlert("Immodesty Upgrade: Rank 1 (Reasonable)")
		ElseIf Rank == 2
			ModestyAlert("Immodesty Upgrade: Rank 2 (Relaxed)")
		ElseIf Rank == 3
			ModestyAlert("Immodesty Upgrade: Rank 3 (Comfortable)")
		ElseIf Rank == 4
			ModestyAlert("Immodesty Upgrade: Rank 4 (Tease)")
		ElseIf Rank == 5
			ModestyAlert("Immodesty Upgrade: Rank 5 (Brazen)")
		ElseIf Rank == 6
			ModestyAlert("Immodesty Upgrade: Rank 6 (Shameless)")
		ElseIf Rank == 7
			ModestyAlert("Immodesty Upgrade: Permanently Shameless")
		EndIf
	Else
		If Rank == 0
			ModestyAlert("Immodesty Downgrade: Rank 0 (Modest)")
		ElseIf Rank == 1
			ModestyAlert("Immodesty Downgrade: Rank 1 (Reasonable)")
		ElseIf Rank == 2
			ModestyAlert("Immodesty Downgrade: Rank 2 (Relaxed)")
		ElseIf Rank == 3
			ModestyAlert("Immodesty Downgrade: Rank 3 (Comfortable)")
		ElseIf Rank == 4
			ModestyAlert("Immodesty Downgrade: Rank 4 (Tease)")
		ElseIf Rank == 5
			ModestyAlert("Immodesty Downgrade: Rank 5 (Brazen)")
		EndIf
	EndIf
	
	If Config.ModestyMonologue == True
		ModestyInnerMonologue(IsRankUpgrade, Rank, 1)
	EndIf
EndFunction

Function ModestyAlert(String MessageText)
	If Config.ModestyMessagebox == True
		Debug.MessageBox(MessageText)
	Else
		Debug.Notification(MessageText)
	EndIf
EndFunction

Function ModestyInnerMonologue(Bool IsRankUpgrade, Int Rank, Int Type = 0) ; Type (1) = Strict, (2) = Top, (3) = Bottom, 0 = Null
	If IsRankUpgrade == True
		If Type == 1
			If Rank == 1
				Debug.MessageBox("I guess showing a little skin couldn't hurt... It's not like I'm flashing people.")
			ElseIf Rank == 2
				Debug.MessageBox("Showing some leg isn't that big of a deal. I probably go swimming in less clothes.")
			ElseIf Rank == 3
				Debug.MessageBox("Yes, I have boobs. Yes, I'm showing a lot of cleavage. Who cares?")
			ElseIf Rank == 4
				Debug.MessageBox("It's kind of fun to see if anyone can catch a glimpse of my pussy through my skimpy clothes! I can tell who saw because they turn red, so cute!")
			ElseIf Rank == 5
				Debug.MessageBox("I wonder how many stares I'll get if I walk through town with my tits out?")
			ElseIf Rank == 6
				Debug.MessageBox("Modesty is annoying. I've shown off so much of my body that covering it seems pointless, and I just don't care anymore. Plus, running around naked just sounds FUN!")
			ElseIf Rank == 7
				Debug.MessageBox("I reject the concept of modesty entirely. How much of my body you can see doesn't matter, and I will never care about it again.")
			EndIf
		ElseIf Type == 2
			If Rank == 1
				Debug.MessageBox("Plenty of women show their cleavage. Why would anyone care that I do too?")
			ElseIf Rank == 2
				Debug.MessageBox("I mean, I'm not going to just walk around completely topless, but I don't mind if anyone gets a peek at my boobs.")
			ElseIf Rank == 3
				Debug.MessageBox("Go ahead, look at my tits! If I wanted to cover them, I wouldn't be topless.")
			ElseIf Rank == 4
				Debug.MessageBox("Chest, Breast, Pectoral. They're all the same. It doesn't matter if you stare or squeeze, I couldn't care less.")
			EndIf
		ElseIf Type == 3
			If Rank == 1
				Debug.MessageBox("Showing a little leg never hurt anybody.")
			ElseIf Rank == 2
				Debug.MessageBox("It's nice to let my pussy breathe. If someone catches a glimpse, then oh well.")
			ElseIf Rank == 3
				Debug.MessageBox("Being bottomless isn't just convenient, it's fun!")
			ElseIf Rank == 4
				Debug.MessageBox("Ugh... Yes, I have a vagina. If you don't want to see it, don't look.")
			EndIf
		Else
			AND_Logger.FastLog("<Modesty Manager> [ModestyInnerMonologue] - Type is invalid. Type is: " + Type, Logger.ERROR)
		EndIf
	Else
		If Type == 1
			If Rank == 0
				Debug.MessageBox("I should really wear normal, proper clothes. I don't want to turn into one of those slutty adventurer girls!")
			ElseIf Rank == 1
				Debug.MessageBox("Swimsuits are for swimming, not for walking around in public all day!")
			ElseIf Rank == 2
				Debug.MessageBox("I probably shouldn't keep shaking my near-naked tits in everyone's face. Plus not wearing a proper bra kind of hurts.")
			ElseIf Rank == 3
				Debug.MessageBox("How did I let myself get excited from teasing peeks at my vagina? That has to stop. It won't lead to anything good.")
			ElseIf Rank == 4
				Debug.MessageBox("Ok, I guess letting myself walk around Topless isn't smart.")
			ElseIf Rank == 5
				Debug.MessageBox("Hmm, maybe a little modesty is necessary... I'm not as comfortable as I used to be.")
			EndIf
		ElseIf Type == 2
			If Rank == 0
				Debug.MessageBox("Swimsuits are for swimming, not for walking around in public all day!")
			ElseIf Rank == 1
				Debug.MessageBox("I probably shouldn't keep shaking my near-naked tits in everyone's face. Plus not wearing a proper bra kind of hurts.")
			ElseIf Rank == 2
				Debug.MessageBox("Hmm. Maybe SOME modesty would be good... Some men are barely able to resist the urge to grope me...")
			EndIf
		ElseIf Type == 3
			If Rank == 0
				Debug.MessageBox("Swimsuits are for swimming, not for walking around in public all day!")
			ElseIf Rank == 1
				Debug.MessageBox("I guess I should probably go back to keeping my vagina covered.")
			ElseIf Rank == 2
				Debug.MessageBox("Ok, maybe this isn't as fun as I thought... I should cover myself a bit.")
			EndIf
		Else
			AND_Logger.FastLog("<Modesty Manager> [ModestyInnerMonologue] - Type is invalid. Type is: " + Type, Logger.ERROR)
		EndIf
	EndIf
EndFunction

;/
Modesty Faction Ranks (Strict Mode)

0 = Modest (Bra & Underwear will be covered)
1 = Reasonable (Bra not covered)
2 = Relaxed (Bra & Underwear not covered)
3 = Comfortable (Breasts not covered if not Topless)
4 = Tease (Genitals not covered if not Bottomless)
5 = Brazen (Breasts not covered)
6 = Shameless (No covering)
/;

Function RankJump(Int Rank)
	PlayerRef.SetFactionRank(Core.ModestyFaction, Rank)
	
	Int Index = 0
	While Index < Rank
		ModestyTimer[Index] = Config.ImmodestyTimeNeeded
		Index += 1
	EndWhile
	While Index < 7
		ModestyTimer[Index] = 0
		Index += 1
	EndWhile
EndFunction

Function TimerUpdate(Int NewTimeNeeded)
	Int CurrentRank = PlayerRef.GetFactionRank(Core.ModestyFaction)
	
	Int Index = 0
	While Index < CurrentRank
		ModestyTimer[Index] = NewTimeNeeded
		Index += 1
	EndWhile
EndFunction

Function TopRankJump(Int Rank)
	PlayerRef.SetFactionRank(Core.TopModestyFaction, Rank)
	TopModestyTimer[0] = 0
	TopModestyTimer[1] = 0
	TopModestyTimer[2] = 0
	TopModestyTimer[3] = 0
EndFunction

Function BottomRankJump(Int Rank)
	PlayerRef.SetFactionRank(Core.BottomModestyFaction, Rank)
	BottomModestyTimer[0] = 0
	BottomModestyTimer[1] = 0
	BottomModestyTimer[2] = 0
	BottomModestyTimer[3] = 0
EndFunction