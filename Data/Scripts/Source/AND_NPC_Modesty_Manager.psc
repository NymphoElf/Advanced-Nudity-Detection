ScriptName AND_NPC_Modesty_Manager extends Quest

Import JsonUtil

AND_Core Property AND_Main Auto
AND_MCM Property Config Auto

Faction Property ModestyFaction Auto
Faction Property TopModestyFaction Auto
Faction Property BottomModestyFaction Auto

Int Property TrackedFemales = 0 Auto Hidden

String Property JsonFileName = "Advanced Nudity Detection/NPC Modesty Data" AutoReadOnly

Function RegisterFemale(Actor femaleActor)
	String npcName = femaleActor.GetName()
	
	Debug.Trace("[A.N.D.] Registering Female: " + femaleActor + " (" + npcName + ")")
	
	SetFormValue(JsonFileName, TrackedFemales, femaleActor)
	SetIntValue(JsonFileName, femaleActor, TrackedFemales)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " ModestyTimer[0]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " ModestyTimer[1]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " ModestyTimer[2]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " ModestyTimer[3]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " ModestyTimer[4]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " ModestyTimer[5]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " ModestyTimer[6]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " TopModestyTimer[0]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " TopModestyTimer[1]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " TopModestyTimer[2]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " TopModestyTimer[3]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " BottomModestyTimer[0]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " BottomModestyTimer[1]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " BottomModestyTimer[2]", 0)
	SetIntValue(JsonFileName, "Female " + TrackedFemales + " BottomModestyTimer[3]", 0)
	
	TrackedFemales += 1
	Debug.Trace("Number of Registered Females: " + TrackedFemales)
EndFunction

Function RemoveFemale(Actor femaleActor = None, Int FemaleID = -1)
	If femaleActor == None && FemaleID < 0
		Debug.Trace("[A.N.D.] RemoveFemale ERROR - Both femaleActor and FemaleID are invalid!")
		return
	EndIf
	
	If femaleActor != None
		FemaleID = GetIntValue(JsonFileName, femaleActor)
	ElseIf FemaleID >= 0
		femaleActor = GetFormValue(JsonFileName, FemaleID) as Actor
	EndIf
	
	UnsetIntValue(JsonFileName, femaleActor)
	Int nextFemaleID = FemaleID + 1
	While nextFemaleID < TrackedFemales
		Actor nextFemaleActor = GetFormValue(JsonFileName, nextFemaleID) as Actor
	
		SetFormValue(JsonFileName, FemaleID, nextFemaleActor)
		SetIntValue(JsonFileName, nextFemaleActor, FemaleID)
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[0]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " ModestyTimer[0]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[1]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " ModestyTimer[1]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[2]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " ModestyTimer[2]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[3]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " ModestyTimer[3]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[4]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " ModestyTimer[4]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[5]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " ModestyTimer[5]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[6]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " ModestyTimer[6]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[0]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " TopModestyTimer[0]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[1]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " TopModestyTimer[1]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[2]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " TopModestyTimer[2]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[3]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " TopModestyTimer[3]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[0]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " BottomModestyTimer[0]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[1]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " BottomModestyTimer[1]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[2]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " BottomModestyTimer[2]"))
		SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[3]", GetIntValue(JsonFileName, "Female " + nextFemaleID + " BottomModestyTimer[3]"))
		
		FemaleID += 1
		nextFemaleID += 1
	EndWhile
	
	UnsetFormValue(JsonFileName, FemaleID)
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[0]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[1]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[2]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[3]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[4]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[5]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[6]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[0]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[1]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[2]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[3]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[0]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[1]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[2]")
	UnsetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[3]")
	
	TrackedFemales -= 1
	Debug.Trace("Number of Registered Females: " + TrackedFemales)
EndFunction

Function ResetFemale(Actor femaleActor = None, Int FemaleID = -1)
	If femaleActor == None && FemaleID < 0
		Debug.Trace("[A.N.D.] ResetFemale ERROR - Both femaleActor and FemaleID are invalid!")
		return
	EndIf
	
	If femaleActor != None
		FemaleID = GetIntValue(JsonFileName, femaleActor)
	ElseIf FemaleID >= 0
		femaleActor = GetFormValue(JsonFileName, FemaleID) as Actor
	EndIf
	
	SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[0]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[1]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[2]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[3]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[4]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[5]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[6]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[0]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[1]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[2]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[3]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[0]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[1]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[2]", 0)
	SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[3]", 0)
EndFunction

Function ProcessNPCModesty(Actor target, Bool Strict)
	Int FemaleID = GetIntValue(JsonFileName, target)
	Int UpgradeTime = Config.ImmodestyTimeNeeded
	
	If Strict == True
		StrictNPCModesty(target, FemaleID, UpgradeTime)
	Else
		TopNPCModesty(target, FemaleID, UpgradeTime)
		BottomNPCModesty(target, FemaleID, UpgradeTime)
	EndIf
EndFunction

Function StrictNPCModesty(Actor target, Int FemaleID, Int UpgradeTime)
	Int ModestyRank = target.GetFactionRank(ModestyFaction)
	Int MinimumModesty = Config.MinimumModestyRank
	Int ShamelessTime = UpgradeTime * 2
	Int[] ModestyTimer = new Int[7]
	
	Bool IsShowingBra = target.GetFactionRank(AND_Main.AND_ShowingBraFaction) as Bool
	Bool IsShowingChest = target.GetFactionRank(AND_Main.AND_ShowingChestFaction) as Bool
	Bool IsTopless = target.GetFactionRank(AND_Main.AND_ToplessFaction) as Bool
	
	Bool IsShowingUnderwear = target.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) as Bool
	Bool IsShowingGenitals = target.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) as Bool
	Bool IsBottomless = target.GetFactionRank(AND_Main.AND_BottomlessFaction) as Bool
	
	Bool IsNude = target.GetFactionRank(AND_Main.AND_NudeActorFaction) as Bool
	
	Int Index = 0
	While Index < 7
		ModestyTimer[Index] = GetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[" + Index + "]")
		Index += 1
	EndWhile
	
	If MinimumModesty > ModestyRank
		NPCModestyRankChange(target, MinimumModesty)
	EndIf
	
	If ModestyRank <= 0
		If IsShowingBra == True && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If ModestyTimer[0] < UpgradeTime
				ModestyTimer[0] = ModestyTimer[0] + 1
			Else
				target.SetFactionRank(ModestyFaction, 1)
				NPCModestyRankChange(target, 1)
			EndIf
		ElseIf ModestyTimer[0] > 0
			ModestyTimer[0] = ModestyTimer[0] - 1
		EndIf
		
	ElseIf ModestyRank == 1
		If IsShowingUnderwear == True && IsShowingGenitals == False && IsShowingChest == False
			If ModestyTimer[1] < UpgradeTime
				ModestyTimer[1] = ModestyTimer[1] + 1
			Else
				target.SetFactionRank(ModestyFaction, 2)
				NPCModestyRankChange(target, 2)
			EndIf
		ElseIf IsShowingBra == False && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			NPCModestyDowngrade(target, FemaleID, 1, UpgradeTime, MinimumModesty, ModestyTimer)
		EndIf
	
	ElseIf ModestyRank == 2
		If IsShowingChest == True && IsTopless == False && IsShowingGenitals == False
			If ModestyTimer[2] < UpgradeTime
				ModestyTimer[2] = ModestyTimer[2] + 1
			Else
				target.SetFactionRank(ModestyFaction, 3)
				NPCModestyRankChange(target, 3)
			EndIf
		ElseIf IsShowingUnderwear == False && IsShowingGenitals == False && IsShowingChest == False
			NPCModestyDowngrade(target, FemaleID, 2, UpgradeTime, MinimumModesty, ModestyTimer)
		EndIf
		
	ElseIf ModestyRank == 3
		If IsShowingGenitals == True && IsBottomless == False && IsTopless == False
			If ModestyTimer[3] < UpgradeTime
				ModestyTimer[3] = ModestyTimer[3] + 1
			Else
				target.SetFactionRank(ModestyFaction, 4)
				NPCModestyRankChange(target, 4)
			EndIf
		ElseIf IsShowingChest == False && IsShowingGenitals == False
			NPCModestyDowngrade(target, FemaleID, 3, UpgradeTime, MinimumModesty, ModestyTimer)
		EndIf
		
	ElseIf ModestyRank == 4
		If IsTopless == True && IsBottomless == False
			If ModestyTimer[4] < UpgradeTime
				ModestyTimer[4] = ModestyTimer[4] + 1
			Else
				target.SetFactionRank(ModestyFaction, 5)
				NPCModestyRankChange(target, 5)
			EndIf
		ElseIf IsShowingGenitals == False && IsTopless == False
			NPCModestyDowngrade(target, FemaleID, 4, UpgradeTime, MinimumModesty, ModestyTimer)
		EndIf
		
	ElseIf ModestyRank == 5
		If IsBottomless == True
			If ModestyTimer[5] < UpgradeTime
				ModestyTimer[5] = ModestyTimer[5] + 1
			Else
				target.SetFactionRank(ModestyFaction, 6)
				NPCModestyRankChange(target, 6)
			EndIf
		ElseIf IsTopless == False
			NPCModestyDowngrade(target, FemaleID, 5, UpgradeTime, MinimumModesty, ModestyTimer)
		EndIf
		
	ElseIf ModestyRank == 6
		If IsNude == False
			NPCModestyDowngrade(target, FemaleID, 6, UpgradeTime, MinimumModesty, ModestyTimer)
		ElseIf ModestyTimer[6] < ShamelessTime
			ModestyTimer[6] = ModestyTimer[6] + 1
		ElseIf ModestyTimer[6] >= ShamelessTime && Config.ShamelessCanBePermanent == True
			;PermanentShameless = True
			NPCModestyRankChange(target, 7)
		EndIf
	ElseIf ModestyRank >= 7
		If ModestyTimer[6] > ShamelessTime
			ModestyTimer[6] = ShamelessTime
		EndIf
	EndIf
	
	Index = 0
	While Index < 7
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[" + Index + "]", ModestyTimer[Index])
		Index += 1
	EndWhile
EndFunction

Function NPCModestyDowngrade(Actor target, Int FemaleID, Int Rank, Int UpgradeTime, Int MinimumRank, Int[] ModestyTimer)
	Int DowngradeTime = (0 - UpgradeTime)
	Int RankDown = Rank - 1

	If target.GetFactionRank(ModestyFaction) == 7 ;PermanentShameless == True && target.GetFactionRank(ModestyFaction) == 7
		return
	EndIf
	
	If target.GetFactionRank(AND_Main.AND_ShowingBraFaction) == 0 && target.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) == 0\ 
	&& target.GetFactionRank(AND_Main.AND_ShowingChestFaction) == 0 && target.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) == 0
		
		If MinimumRank < Rank
			If ModestyTimer[Rank] > 0
				ModestyTimer[Rank] = ModestyTimer[Rank] - 1
			Else
				ModestyTimer[RankDown] = ModestyTimer[RankDown] - 1
				
				If ModestyTimer[RankDown] <= (UpgradeTime / 2)
					target.SetFactionRank(ModestyFaction, RankDown)
					NPCModestyRankChange(target, RankDown)
				EndIf
			EndIf
		EndIf
	EndIf
	
	Int Index = 0
	While Index < 7
		SetIntValue(JsonFileName, "Female " + FemaleID + " ModestyTimer[" + Index + "]", ModestyTimer[Index])
		Index += 1
	EndWhile
EndFunction

Function TopNPCModesty(Actor target, Int FemaleID, Int UpgradeTime)
	Int TopModestyRank = target.GetFactionRank(TopModestyFaction)
	
	Int[] TopModestyTimer = new Int[4]
	
	Int Index = 0
	While Index < 4
		TopModestyTimer[Index] = GetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[" + Index + "]")
		Index += 1
	EndWhile
	
	Bool IsShowingBra = target.GetFactionRank(AND_Main.AND_ShowingBraFaction) as Bool
	Bool IsShowingChest = target.GetFactionRank(AND_Main.AND_ShowingChestFaction) as Bool
	Bool IsTopless = target.GetFactionRank(AND_Main.AND_ToplessFaction) as Bool
	
	If TopModestyRank >= 4
		return
	Else
		If TopModestyRank <= 0 && (IsShowingBra == True && IsShowingChest == False && IsTopless == False)
			TopModestyTimer[0] = TopModestyTimer[0] + 1
		ElseIf TopModestyRank <= 1 && (IsShowingChest == True && IsTopless == False)
			TopModestyTimer[1] = TopModestyTimer[1] + 1
		ElseIf TopModestyRank <= 2 && IsShowingChest == True
			TopModestyTimer[2] = TopModestyTimer[2] + 1
		ElseIf TopModestyRank <= 3 && IsTopless == True
			TopModestyTimer[3] = TopModestyTimer[3] + 1
		ElseIf TopModestyRank < 4
			NPCTopModestyDowngrade(target, FemaleID, UpgradeTime, TopModestyTimer, TopModestyRank, IsShowingBra, IsShowingChest, IsTopless)
			return
		EndIf
	EndIf
	
	If TopModestyRank <= 0
		If TopModestyTimer[0] >= UpgradeTime
			target.SetFactionRank(TopModestyFaction, 1)
			NPCTopModestyRankChange(target, 1)
		ElseIf TopModestyTimer[1] >= (UpgradeTime * 2)
			target.SetFactionRank(TopModestyFaction, 1)
			NPCTopModestyRankChange(target, 1)
		ElseIf TopModestyTimer[2] >= (UpgradeTime * 4)
			target.SetFactionRank(TopModestyFaction, 1)
			NPCTopModestyRankChange(target, 1)
		ElseIf TopModestyTimer[3] >= (UpgradeTime * 8)
			target.SetFactionRank(TopModestyFaction, 1)
			NPCTopModestyRankChange(target, 1)
		EndIf
	ElseIf TopModestyRank == 1
		If TopModestyTimer[1] >= UpgradeTime
			target.SetFactionRank(TopModestyFaction, 2)
			NPCTopModestyRankChange(target, 2)
		ElseIf TopModestyTimer[2] >= (UpgradeTime * 2)
			target.SetFactionRank(TopModestyFaction, 2)
			NPCTopModestyRankChange(target, 2)
		ElseIf TopModestyTimer[3] >= (UpgradeTime * 4)
			target.SetFactionRank(TopModestyFaction, 2)
			NPCTopModestyRankChange(target, 2)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer[2] >= UpgradeTime
			target.SetFactionRank(TopModestyFaction, 3)
			NPCTopModestyRankChange(target, 3)
		ElseIf TopModestyTimer[3] >= (UpgradeTime * 2)
			target.SetFactionRank(TopModestyFaction, 3)
			NPCTopModestyRankChange(target, 3)
		EndIf
	ElseIf TopModestyRank == 3 
		If TopModestyTimer[3] >= UpgradeTime && Config.ShamelessCanBePermanent == True
			target.SetFactionRank(TopModestyFaction, 4)
			NPCTopModestyRankChange(target, 4)
		ElseIf TopModestyTimer[3] > UpgradeTime
			TopModestyTimer[3] = UpgradeTime
		EndIf
	EndIf
	
	Index = 0
	While Index < 4
		SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[" + Index + "]", TopModestyTimer[Index])
		Index += 1
	EndWhile
EndFunction

Function BottomNPCModesty(Actor target, Int FemaleID, Int UpgradeTime)
	Int BottomModestyRank = target.GetFactionRank(BottomModestyFaction)
	
	Int[] BottomModestyTimer = new Int[4]
	
	Int Index = 0
	While Index < 4
		BottomModestyTimer[Index] = GetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[" + Index + "]")
		Index += 1
	EndWhile
	
	Bool IsShowingUnderwear = target.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) as Bool
	Bool IsShowingGenitals = target.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) as Bool
	Bool IsBottomless = target.GetFactionRank(AND_Main.AND_BottomlessFaction) as Bool
	
	If BottomModestyRank >= 4
		return
	Else
		If BottomModestyRank <= 0 && (IsShowingUnderwear == True && IsShowingGenitals == False && IsBottomless == False)
			BottomModestyTimer[0] = BottomModestyTimer[0] + 1
		ElseIf BottomModestyRank <= 1 && (IsShowingGenitals == True && IsBottomless == False)
			BottomModestyTimer[1] = BottomModestyTimer[1] + 1
		ElseIf BottomModestyRank <= 2 && IsShowingGenitals == True
			BottomModestyTimer[2] = BottomModestyTimer[2] + 1
		ElseIf BottomModestyRank <= 3 && IsBottomless == True
			BottomModestyTimer[3] = BottomModestyTimer[3] + 1
		Else
			NPCBottomModestyDowngrade(target, FemaleID, UpgradeTime, BottomModestyTimer, BottomModestyRank, IsShowingUnderwear, IsShowingGenitals, IsBottomless)
			return
		EndIf
	EndIf
	
	If BottomModestyRank <= 0
		If BottomModestyTimer[0] >= UpgradeTime
			target.SetFactionRank(BottomModestyFaction, 1)
			NPCBottomModestyRankChange(target, 1)
		ElseIf BottomModestyTimer[1] >= (UpgradeTime * 2)
			target.SetFactionRank(BottomModestyFaction, 1)
			NPCBottomModestyRankChange(target, 1)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 4)
			target.SetFactionRank(BottomModestyFaction, 1)
			NPCBottomModestyRankChange(target, 1)
		ElseIf BottomModestyTimer[3] >= (UpgradeTime * 8)
			target.SetFactionRank(BottomModestyFaction, 1)
			NPCBottomModestyRankChange(target, 1)
		EndIf
	ElseIf BottomModestyRank == 1
		If BottomModestyTimer[1] >= UpgradeTime
			target.SetFactionRank(BottomModestyFaction, 2)
			NPCBottomModestyRankChange(target, 2)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 2)
			target.SetFactionRank(BottomModestyFaction, 2)
			NPCBottomModestyRankChange(target, 2)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 4)
			target.SetFactionRank(BottomModestyFaction, 2)
			NPCBottomModestyRankChange(target, 2)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer[2] >= UpgradeTime
			target.SetFactionRank(BottomModestyFaction, 3)
			NPCBottomModestyRankChange(target, 3)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 2)
			target.SetFactionRank(BottomModestyFaction, 3)
			NPCBottomModestyRankChange(target, 3)
		EndIf
	ElseIf BottomModestyRank == 3 && Config.ShamelessCanBePermanent == True
		If BottomModestyTimer[3] >= UpgradeTime
			target.SetFactionRank(BottomModestyFaction, 4)
			NPCBottomModestyRankChange(target, 4)
		EndIf
	EndIf
	
	Index = 0
	While Index < 4
		SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[" + Index + "]", BottomModestyTimer[Index])
		Index += 1
	EndWhile
EndFunction

Function NPCTopModestyDowngrade(Actor target, Int FemaleID, Int UpgradeTime, Int[] TopModestyTimer, Int TopModestyRank, Bool IsShowingBra, Bool IsShowingChest, Bool IsTopless)
	Int DowngradeTime = (0 - UpgradeTime)
	
	If TopModestyRank <= 0 && (IsShowingBra == False && IsShowingChest == False)
		Int Index = 0
		While Index < 4
			TopModestyTimer[Index] = TopModestyTimer[Index] - 1
			
			If TopModestyTimer[Index] < 0
				TopModestyTimer[Index] = 0
			EndIf
			Index += 1
		EndWhile
	ElseIf TopModestyRank == 1 && (IsShowingBra == False && IsShowingChest == False)
		TopModestyTimer[1] = TopModestyTimer[1] - 1
		TopModestyTimer[2] = TopModestyTimer[2] - 1
		TopModestyTimer[3] = TopModestyTimer[3] - 1
	ElseIf TopModestyRank == 2 && IsShowingChest == False
		TopModestyTimer[2] = TopModestyTimer[2] - 1
		TopModestyTimer[3] = TopModestyTimer[3] - 1
	ElseIf TopModestyRank == 3 && IsTopless == False
		TopModestyTimer[3] = TopModestyTimer[3] - 1
	Else
		Debug.Trace("Advanced Nudity Detection: Could not upgrade nor downgrade NPC Top Modesty.")
		return
	EndIf
	
	If TopModestyRank == 1
		If TopModestyTimer[1] <= DowngradeTime
			target.SetFactionRank(TopModestyFaction, 0)
			NPCTopModestyRankChange(target, 0)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer[2] <= DowngradeTime
			target.SetFactionRank(TopModestyFaction, 1)
			NPCTopModestyRankChange(target, 1)
		EndIf
	ElseIf TopModestyRank == 3
		If TopModestyTimer[3] <= DowngradeTime
			target.SetFactionRank(TopModestyFaction, 2)
			NPCTopModestyRankChange(target, 2)
		EndIf
	EndIf
	
	Int Index = 0
	While Index < 4
		SetIntValue(JsonFileName, "Female " + FemaleID + " TopModestyTimer[" + Index + "]", TopModestyTimer[Index])
		Index += 1
	EndWhile
EndFunction

Function NPCBottomModestyDowngrade(Actor target, Int FemaleID, Int UpgradeTime, Int[] BottomModestyTimer, Int BottomModestyRank, Bool IsShowingUnderwear, Bool IsShowingGenitals, Bool IsBottomless)
	Int DowngradeTime = (0 - UpgradeTime)
	
	If BottomModestyRank <= 0 && (IsShowingUnderwear == False && IsShowingGenitals == False && IsBottomless == False)
		Int Index = 0
		While Index < 4
			BottomModestyTimer[Index] = BottomModestyTimer[Index] - 1
			
			If BottomModestyTimer[Index] < 0
				BottomModestyTimer[Index] = 0
			EndIf
			Index += 1
		EndWhile
	ElseIf BottomModestyRank == 1 && (IsShowingGenitals == False && IsBottomless == False)
		BottomModestyTimer[1] = BottomModestyTimer[1] - 1
	ElseIf BottomModestyRank == 2 && IsShowingGenitals == False
		BottomModestyTimer[2] = BottomModestyTimer[2] - 1
	ElseIf BottomModestyRank == 3 && IsBottomless == False
		BottomModestyTimer[3] = BottomModestyTimer[3] - 1
	Else
		Debug.Trace("Advanced Nudity Detection: Could not upgrade nor downgrade NPC Bottom Modesty.")
		return
	EndIf
	
	If BottomModestyRank == 1
		If BottomModestyTimer[1] <= DowngradeTime
			target.SetFactionRank(BottomModestyFaction, 0)
			NPCBottomModestyRankChange(target, 0)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer[2] <= DowngradeTime
			target.SetFactionRank(BottomModestyFaction, 1)
			NPCBottomModestyRankChange(target, 1)
		EndIf
	ElseIf BottomModestyRank == 3
		If BottomModestyTimer[3] <= DowngradeTime
			target.SetFactionRank(BottomModestyFaction, 2)
			NPCBottomModestyRankChange(target, 2)
		EndIf
	EndIf
	
	Int Index = 0
	While Index < 4
		SetIntValue(JsonFileName, "Female " + FemaleID + " BottomModestyTimer[" + Index + "]", BottomModestyTimer[Index])
		Index += 1
	EndWhile
EndFunction

Function NPCModestyRankChange(Actor target, Int Rank)
	String npcName = target.GetName()
	
	If Rank == 0
		Debug.Notification(npcName + "'s Modesty has become Modest")
	ElseIf Rank == 1
		Debug.Notification(npcName + "'s Modesty has become Reasonable")
	ElseIf Rank == 2
		Debug.Notification(npcName + "'s Modesty has become Relaxed")
	ElseIf Rank == 3
		Debug.Notification(npcName + "'s Modesty has become Comfortable")
	ElseIf Rank == 4
		Debug.Notification(npcName + "'s Modesty has become Tease")
	ElseIf Rank == 5
		Debug.Notification(npcName + "'s Modesty has become Brazen")
	ElseIf Rank == 6
		Debug.Notification(npcName + "'s Modesty has become Shameless")
	ElseIf Rank == 7
		Debug.Notification(npcName + "'s Modesty has become Permanently Shameless")
	EndIf
EndFunction

Function NPCTopModestyRankChange(Actor target, Int Rank)
	String npcName = target.GetName()
	
	If Rank == 0
		Debug.Notification(npcName + "'s Top Modesty has become Shy")
	ElseIf Rank == 1
		Debug.Notification(npcName + "'s Top Modesty has become Comfortable")
	ElseIf Rank == 2
		Debug.Notification(npcName + "'s Top Modesty has become Bold")
	ElseIf Rank == 3
		Debug.Notification(npcName + "'s Top Modesty has become Shameless")
	ElseIf Rank == 4
		Debug.Notification(npcName + "'s Top Modesty has become Permanently Shameless")
	EndIf
EndFunction

Function NPCBottomModestyRankChange(Actor target, Int Rank)
	String npcName = target.GetName()
	
	If Rank == 0
		Debug.Notification(npcName + "'s Bottom Modesty has become Shy")
	ElseIf Rank == 1
		Debug.Notification(npcName + "'s Bottom Modesty has become Comfortable")
	ElseIf Rank == 2
		Debug.Notification(npcName + "'s Bottom Modesty has become Bold")
	ElseIf Rank == 3
		Debug.Notification(npcName + "'s Bottom Modesty has become Shameless")
	ElseIf Rank == 4
		Debug.Notification(npcName + "'s Bottom Modesty has become Permanently Shameless")
	EndIf
EndFunction