ScriptName AND_Modesty_Manager extends Quest

AND_Core Property AND_Main Auto
AND_MCM Property Config Auto

Actor Property PlayerRef Auto

Bool Property PlayerIsInFaction Auto Hidden
Bool Property PermanentShameless Auto Hidden
Bool Property RegisteredForUpdate Auto Hidden

Faction Property ModestyFaction Auto

Faction Property TopModestyFaction Auto ;0 = Shy, 1 = Comfortable, 2 = Bold, 3 = Shameless, 4 = Permanent
Faction Property BottomModestyFaction Auto ;0 = Shy, 1 = Comfortable, 2 = Bold, 3 = Shameless, 4 = Permanent

Int[] Property ModestyTimer Auto

Int[] Property TopModestyTimer Auto ; 0 = ShowingBra, 1 = ShowingChest, 2 = Topless, 3 = Permanent
Int[] Property BottomModestyTimer Auto ; 0 = ShowingBra, 1 = ShowingChest, 2 = Topless, 3 = Permanent

String[] Property ModestyTitle Auto
String[] Property TopModestyTitle Auto
String[] Property BottomModestyTitle Auto

Event OnInit()
	RegisterForUpdateGameTime(1.0)
	RegisteredForUpdate = True
	Debug.Trace("AND - Modesty Manager Initialized")
EndEvent

Event OnUpdateGameTime()
	If AND_Main.DFFMA_Found == False && AND_Main.BARE_Found == False
		UnregisterForUpdateGameTime()
		RegisteredForUpdate = False
		return
	EndIf
	
	If Config.UseDynamicModesty == False
		return
	EndIf
	
	;If PermanentShameless == True && Config.ShamelessCanBePermanent == False
	;	PermanentShameless = False
	;EndIf
	
	If Config.ShamelessCanBePermanent == False
		If PlayerRef.GetFactionRank(TopModestyFaction) > 3
			PlayerRef.SetFactionRank(TopModestyFaction, 3)
		EndIf
		
		If PlayerRef.GetFactionRank(BottomModestyFaction) > 3
			PlayerRef.SetFactionRank(BottomModestyFaction, 3)
		EndIf
		
		If PlayerRef.GetFactionRank(ModestyFaction) > 6
			PlayerRef.SetFactionRank(ModestyFaction, 6)
		EndIf
	EndIf
	
	If Config.StrictModestyRules == True
		ModestyUpgrade()
	Else
		TopModestyUpgrade()
		BottomModestyUpgrade()
	EndIf
EndEvent

Function TopModestyUpgrade()
	Int TopModestyRank = PlayerRef.GetFactionRank(TopModestyFaction)
	
	Int UpgradeTime = Config.ImmodestyTimeNeeded
	
	Bool IsShowingBra = PlayerRef.GetFactionRank(AND_Main.AND_ShowingBraFaction) as Bool
	Bool IsShowingChest = PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) as Bool
	Bool IsTopless = PlayerRef.GetFactionRank(AND_Main.AND_ToplessFaction) as Bool
	
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
		Else
			TopModestyDowngrade(TopModestyRank, IsShowingBra, IsShowingChest, IsTopless)
			return
		EndIf
	EndIf
	
	If TopModestyRank <= 0
		If TopModestyTimer[0] >= UpgradeTime
			PlayerRef.SetFactionRank(TopModestyFaction, 1)
			TopModestyRankChange(True, 1)
		ElseIf TopModestyTimer[1] >= (UpgradeTime * 2)
			PlayerRef.SetFactionRank(TopModestyFaction, 1)
			TopModestyRankChange(True, 1)
		ElseIf TopModestyTimer[2] >= (UpgradeTime * 4)
			PlayerRef.SetFactionRank(TopModestyFaction, 1)
			TopModestyRankChange(True, 1)
		ElseIf TopModestyTimer[3] >= (UpgradeTime * 8)
			PlayerRef.SetFactionRank(TopModestyFaction, 1)
			TopModestyRankChange(True, 1)
		EndIf
	ElseIf TopModestyRank == 1
		If TopModestyTimer[1] >= UpgradeTime
			PlayerRef.SetFactionRank(TopModestyFaction, 2)
			TopModestyRankChange(True, 2)
		ElseIf TopModestyTimer[2] >= (UpgradeTime * 2)
			PlayerRef.SetFactionRank(TopModestyFaction, 2)
			TopModestyRankChange(True, 2)
		ElseIf TopModestyTimer[3] >= (UpgradeTime * 4)
			PlayerRef.SetFactionRank(TopModestyFaction, 2)
			TopModestyRankChange(True, 2)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer[2] >= UpgradeTime
			PlayerRef.SetFactionRank(TopModestyFaction, 3)
			TopModestyRankChange(True, 3)
		ElseIf TopModestyTimer[3] >= (UpgradeTime * 2)
			PlayerRef.SetFactionRank(TopModestyFaction, 3)
			TopModestyRankChange(True, 3)
		EndIf
	ElseIf TopModestyRank == 3 
		If TopModestyTimer[3] >= UpgradeTime && Config.ShamelessCanBePermanent == True
			PlayerRef.SetFactionRank(TopModestyFaction, 4)
			TopModestyRankChange(True, 4)
		ElseIf TopModestyTimer[3] > UpgradeTime
			TopModestyTimer[3] = UpgradeTime
		EndIf
	EndIf
EndFunction

Function TopModestyDowngrade(Int TopModestyRank, Bool IsShowingBra, Bool IsShowingChest, Bool IsTopless)
	Int DowngradeTime = (0 - Config.ImmodestyTimeNeeded)
	
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
		Debug.Trace("Advanced Nudity Detection: Could not upgrade nor downgrade Top Modesty.")
		return
	EndIf
	
	If TopModestyRank == 1
		If TopModestyTimer[1] <= DowngradeTime
			PlayerRef.SetFactionRank(TopModestyFaction, 0)
			TopModestyRankChange(False, 0)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer[2] <= DowngradeTime
			PlayerRef.SetFactionRank(TopModestyFaction, 1)
			TopModestyRankChange(False, 1)
		EndIf
	ElseIf TopModestyRank == 3
		If TopModestyTimer[3] <= DowngradeTime
			PlayerRef.SetFactionRank(TopModestyFaction, 2)
			TopModestyRankChange(False, 2)
		EndIf
	EndIf
EndFunction

Function BottomModestyUpgrade()
	Int BottomModestyRank = PlayerRef.GetFactionRank(BottomModestyFaction)
	
	Int UpgradeTime = Config.ImmodestyTimeNeeded
	
	Bool IsShowingUnderwear = PlayerRef.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) as Bool
	Bool IsShowingGenitals = PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) as Bool
	Bool IsBottomless = PlayerRef.GetFactionRank(AND_Main.AND_BottomlessFaction) as Bool
	
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
			BottomModestyDowngrade(BottomModestyRank, IsShowingUnderwear, IsShowingGenitals, IsBottomless)
			return
		EndIf
	EndIf
	
	If BottomModestyRank <= 0
		If BottomModestyTimer[0] >= UpgradeTime
			PlayerRef.SetFactionRank(BottomModestyFaction, 1)
			BottomModestyRankChange(True, 1)
		ElseIf BottomModestyTimer[1] >= (UpgradeTime * 2)
			PlayerRef.SetFactionRank(BottomModestyFaction, 1)
			BottomModestyRankChange(True, 1)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 4)
			PlayerRef.SetFactionRank(BottomModestyFaction, 1)
			BottomModestyRankChange(True, 1)
		ElseIf BottomModestyTimer[3] >= (UpgradeTime * 8)
			PlayerRef.SetFactionRank(BottomModestyFaction, 1)
			BottomModestyRankChange(True, 1)
		EndIf
	ElseIf BottomModestyRank == 1
		If BottomModestyTimer[1] >= UpgradeTime
			PlayerRef.SetFactionRank(BottomModestyFaction, 2)
			BottomModestyRankChange(True, 2)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 2)
			PlayerRef.SetFactionRank(BottomModestyFaction, 2)
			BottomModestyRankChange(True, 2)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 4)
			PlayerRef.SetFactionRank(BottomModestyFaction, 2)
			BottomModestyRankChange(True, 2)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer[2] >= UpgradeTime
			PlayerRef.SetFactionRank(BottomModestyFaction, 3)
			BottomModestyRankChange(True, 3)
		ElseIf BottomModestyTimer[2] >= (UpgradeTime * 2)
			PlayerRef.SetFactionRank(BottomModestyFaction, 3)
			BottomModestyRankChange(True, 3)
		EndIf
	ElseIf BottomModestyRank == 3 && Config.ShamelessCanBePermanent == True
		If BottomModestyTimer[3] >= UpgradeTime
			PlayerRef.SetFactionRank(BottomModestyFaction, 4)
			BottomModestyRankChange(True, 4)
		EndIf
	EndIf
EndFunction

Function BottomModestyDowngrade(Int BottomModestyRank, Bool IsShowingUnderwear, Bool IsShowingGenitals, Bool IsBottomless)
	Int DowngradeTime = (0 - Config.ImmodestyTimeNeeded)
	
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
		Debug.Trace("Advanced Nudity Detection: Could not upgrade nor downgrade Bottom Modesty.")
		return
	EndIf
	
	If BottomModestyRank == 1
		If BottomModestyTimer[1] <= DowngradeTime
			PlayerRef.SetFactionRank(BottomModestyFaction, 0)
			BottomModestyRankChange(False, 0)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer[2] <= DowngradeTime
			PlayerRef.SetFactionRank(BottomModestyFaction, 1)
			BottomModestyRankChange(False, 1)
		EndIf
	ElseIf BottomModestyRank == 3
		If BottomModestyTimer[3] <= DowngradeTime
			PlayerRef.SetFactionRank(BottomModestyFaction, 2)
			BottomModestyRankChange(False, 2)
		EndIf
	EndIf
EndFunction

Function ModestyUpgrade()
	Int ModestyRank = PlayerRef.GetFactionRank(ModestyFaction)
	
	Int UpgradeTime = Config.ImmodestyTimeNeeded
	Int ShamelessTime = UpgradeTime * 2
	
	Bool IsShowingBra = PlayerRef.GetFactionRank(AND_Main.AND_ShowingBraFaction) as Bool
	Bool IsShowingChest = PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) as Bool
	Bool IsTopless = PlayerRef.GetFactionRank(AND_Main.AND_ToplessFaction) as Bool
	
	Bool IsShowingUnderwear = PlayerRef.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) as Bool
	Bool IsShowingGenitals = PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) as Bool
	Bool IsBottomless = PlayerRef.GetFactionRank(AND_Main.AND_BottomlessFaction) as Bool
	
	Bool IsNude = PlayerRef.GetFactionRank(AND_Main.AND_NudeActorFaction) as Bool
	
	If Config.MinimumModestyRank > ModestyRank
		RankJump(Config.MinimumModestyRank)
	EndIf
	
	If ModestyRank <= 0
		If IsShowingBra == True && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If ModestyTimer[0] < UpgradeTime
				ModestyTimer[0] = ModestyTimer[0] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 1)
				ModestyRankChange(True, 1)
			EndIf
		ElseIf ModestyTimer[0] > 0
			ModestyTimer[0] = ModestyTimer[0] - 1
		EndIf
		
	ElseIf ModestyRank == 1
		If IsShowingUnderwear == True && IsShowingGenitals == False && IsShowingChest == False
			If ModestyTimer[1] < UpgradeTime
				ModestyTimer[1] = ModestyTimer[1] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 2)
				ModestyRankChange(True, 2)
			EndIf
		ElseIf IsShowingBra == False && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			ModestyDowngrade(1)
		EndIf
	
	ElseIf ModestyRank == 2
		If IsShowingChest == True && IsTopless == False && IsShowingGenitals == False
			If ModestyTimer[2] < UpgradeTime
				ModestyTimer[2] = ModestyTimer[2] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 3)
				ModestyRankChange(True, 3)
			EndIf
		ElseIf IsShowingUnderwear == False && IsShowingGenitals == False && IsShowingChest == False
			ModestyDowngrade(2)
		EndIf
		
	ElseIf ModestyRank == 3
		If IsShowingGenitals == True && IsBottomless == False && IsTopless == False
			If ModestyTimer[3] < UpgradeTime
				ModestyTimer[3] = ModestyTimer[3] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 4)
				ModestyRankChange(True, 4)
			EndIf
		ElseIf IsShowingChest == False && IsShowingGenitals == False
			ModestyDowngrade(3)
		EndIf
		
	ElseIf ModestyRank == 4
		If IsTopless == True && IsBottomless == False
			If ModestyTimer[4] < UpgradeTime
				ModestyTimer[4] = ModestyTimer[4] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 5)
				ModestyRankChange(True, 5)
			EndIf
		ElseIf IsShowingGenitals == False && IsTopless == False
			ModestyDowngrade(4)
		EndIf
		
	ElseIf ModestyRank == 5
		If IsBottomless == True
			If ModestyTimer[5] < UpgradeTime
				ModestyTimer[5] = ModestyTimer[5] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 6)
				ModestyRankChange(True, 6)
			EndIf
		ElseIf IsTopless == False
			ModestyDowngrade(5)
		EndIf
		
	ElseIf ModestyRank == 6
		If IsNude == False
			ModestyDowngrade(6)
		ElseIf ModestyTimer[6] < ShamelessTime
			ModestyTimer[6] = ModestyTimer[6] + 1
		ElseIf ModestyTimer[6] >= ShamelessTime && Config.ShamelessCanBePermanent == True
			;PermanentShameless = True
			ModestyRankChange(True, 7)
		EndIf
	ElseIf ModestyRank >= 7
		If ModestyTimer[6] > ShamelessTime
			ModestyTimer[6] = ShamelessTime
		EndIf
	EndIf
EndFunction

Function ModestyDowngrade(Int FactionRank)
	Int DowngradeTime = (0 - Config.ImmodestyTimeNeeded)
	Int FactionRankDown = FactionRank - 1

	If PlayerRef.GetFactionRank(ModestyFaction) == 7 ;PermanentShameless == True && PlayerRef.GetFactionRank(ModestyFaction) == 7
		return
	EndIf
	
	If PlayerRef.GetFactionRank(AND_Main.AND_ShowingBraFaction) == 0 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) == 0\ 
	&& PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) == 0 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) == 0
		
		If Config.MinimumModestyRank < FactionRank
			If ModestyTimer[FactionRank] > 0
				ModestyTimer[FactionRank] = ModestyTimer[FactionRank] - 1
			Else
				ModestyTimer[FactionRankDown] = ModestyTimer[FactionRankDown] - 1
				
				If ModestyTimer[FactionRankDown] <= (Config.ImmodestyTimeNeeded / 2)
					PlayerRef.SetFactionRank(ModestyFaction, FactionRankDown)
					ModestyRankChange(False, FactionRankDown)
				EndIf
			EndIf
		EndIf
	EndIf
EndFunction

Function TopModestyRankChange(Bool IsRankUpgrade, Int Rank)
	TopModestyTimer[0] = 0
	TopModestyTimer[1] = 0
	TopModestyTimer[2] = 0
	TopModestyTimer[3] = 0
	
	If IsRankUpgrade == True
		If Rank == 1
			Debug.MessageBox("AND - Top Immodesty Upgrade: Rank 1 (Comfortable)")
			Debug.MessageBox("Plenty of women show their cleavage. Why would anyone care that I do too?")
		ElseIf Rank == 2
			Debug.MessageBox("AND - Top Immodesty Upgrade: Rank 2 (Bold)")
			Debug.MessageBox("I mean, I'm not going to just walk around completely topless, but I don't mind if anyone gets a peek at my boobs.")
		ElseIf Rank == 3
			Debug.MessageBox("AND - Top Immodesty Upgrade: Rank 3 (Shameless)")
			Debug.MessageBox("Go ahead, look at my tits! If I wanted to cover them I wouldn't be topless.")
		ElseIf Rank == 4
			Debug.MessageBox("AND - Top Immodesty Upgrade: Rank 4 (Permanently Shameless)")
			Debug.MessageBox("Chest, Breast, Pectoral. Same things in different forms. It doesn't matter if you stare or squeeze, I couldn't care less.")
		EndIf
	Else
		If Rank == 0
			Debug.MessageBox("AND - Top Immodesty Downgrade: Rank 0 (Modest)")
			Debug.MessageBox("Swimsuits are for swimming, not for walking around in public all day!")
		ElseIf Rank == 1
			Debug.MessageBox("AND - Top Immodesty Downgrade: Rank 1 (Comfortable)")
			Debug.MessageBox("I probably shouldn't keep shaking my near-naked tits in everyone's face. Plus not wearing a proper bra kind of hurts.")
		ElseIf Rank == 2
			Debug.MessageBox("AND - Top Immodesty Downgrade: Rank 2 (Bold)")
			Debug.MessageBox("Hmm. Maybe SOME modesty would be good... Some men are barely able to resist the urge to grope me...")
		EndIf
	EndIf
EndFunction

Function BottomModestyRankChange(Bool IsRankUpgrade, Int Rank)
	BottomModestyTimer[0] = 0
	BottomModestyTimer[1] = 0
	BottomModestyTimer[2] = 0
	BottomModestyTimer[3] = 0
	
	If IsRankUpgrade == True
		If Rank == 1
			Debug.MessageBox("AND - Bottom Immodesty Upgrade: Rank 1 (Comfortable)")
			Debug.MessageBox("Showing a little leg never hurt anybody.")
		ElseIf Rank == 2
			Debug.MessageBox("AND - Bottom Immodesty Upgrade: Rank 2 (Bold)")
			Debug.MessageBox("[WIP]")
		ElseIf Rank == 3
			Debug.MessageBox("AND - Bottom Immodesty Upgrade: Rank 3 (Shameless)")
			Debug.MessageBox("[WIP]")
		ElseIf Rank == 4
			Debug.MessageBox("AND - Bottom Immodesty Upgrade: Rank 4 (Permanently Shameless)")
			Debug.MessageBox("[WIP]")
		EndIf
	Else
		If Rank == 0
			Debug.MessageBox("AND - Bottom Immodesty Downgrade: Rank 0 (Modest)")
			Debug.MessageBox("Swimsuits are for swimming, not for walking around in public all day!")
		ElseIf Rank == 1
			Debug.MessageBox("AND - Bottom Immodesty Downgrade: Rank 1 (Comfortable)")
			Debug.MessageBox("[WIP]")
		ElseIf Rank == 2
			Debug.MessageBox("AND - Bottom Immodesty Downgrade: Rank 2 (Bold)")
			Debug.MessageBox("Hmm. Maybe SOME modesty would be good... Some men are barely able to resist the urge to grope me...")
		EndIf
	EndIf
EndFunction

Function ModestyRankChange(Bool IsRankUpgrade, Int Rank)
	If IsRankUpgrade == True
		If Rank == 1
			Debug.MessageBox("AND - Immodesty Upgrade: Rank 1 (Reasonable)")
			Debug.MessageBox("I guess showing a little skin couldn't hurt... It's not like I'm flashing people.")
		ElseIf Rank == 2
			Debug.MessageBox("AND - Immodesty Upgrade: Rank 2 (Relaxed)")
			Debug.MessageBox("Showing some leg isn't that big of a deal. I probably go swimming in less clothes.")
		ElseIf Rank == 3
			Debug.MessageBox("AND - Immodesty Upgrade: Rank 3 (Comfortable)")
			Debug.MessageBox("Yes, I have boobs. Yes, I'm showing a lot of cleavage. Who cares?")
		ElseIf Rank == 4
			Debug.MessageBox("AND - Immodesty Upgrade: Rank 4 (Tease)")
			Debug.MessageBox("It's kind of fun to see if anyone can catch a glimpse of my pussy through my skimpy clothes! I can tell who saw because they turn red, so cute!")
		ElseIf Rank == 5
			Debug.MessageBox("AND - Immodesty Upgrade: Rank 5 (Brazen)")
			Debug.MessageBox("I wonder how many stares I'll get if I walk through town with my tits out?")
		ElseIf Rank == 6
			Debug.MessageBox("AND - Immodesty Upgrade: Rank 6 (Shameless)")
			Debug.MessageBox("Modesty is annoying. I've shown off so much of my body that covering it seems pointless, and I just don't care anymore. Plus, running around naked just sounds FUN!")
		ElseIf Rank == 7
			Debug.MessageBox("AND - Permanently Shameless")
			Debug.MessageBox("I reject the concept of modesty entirely. How much of my body you can see doesn't matter, and I will never care about it again.")
		EndIf
	Else
		If Rank == 0
			Debug.MessageBox("AND - Immodesty Downgrade: Rank 0 (Modest)")
			Debug.MessageBox("I should really wear normal, proper clothes. I don't want to turn into one of those slutty adventurer girls!")
		ElseIf Rank == 1
			Debug.MessageBox("AND - Immodesty Downgrade: Rank 1 (Reasonable)")
			Debug.MessageBox("Swimsuits are for swimming, not for walking around in public all day!")
		ElseIf Rank == 2
			Debug.MessageBox("AND - Immodesty Downgrade: Rank 2 (Relaxed)")
			Debug.MessageBox("I probably shouldn't keep shaking my near-naked tits in everyone's face. Plus not wearing a proper bra kind of hurts.")
		ElseIf Rank == 3
			Debug.MessageBox("AND - Immodesty Downgrade: Rank 3 (Comfortable)")
			Debug.MessageBox("How did I let myself get excited from teasing peeks at my vagina? That has to stop. It won't lead to anything good.")
		ElseIf Rank == 4
			Debug.MessageBox("AND - Immodesty Downgrade: Rank 4 (Tease)")
			Debug.MessageBox("Ok, I guess letting myself walk around Topless isn't smart.")
		ElseIf Rank == 5
			Debug.MessageBox("AND - Immodesty Downgrade: Rank 5 (Brazen)")
			Debug.MessageBox("Hmm, maybe a little modesty is necessary... I'm not as comfortable as I used to be.")
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
	If Rank == 0
		PlayerRef.SetFactionRank(ModestyFaction, 0)
		ModestyTimer[0] = 0
		ModestyTimer[1] = 0
		ModestyTimer[2] = 0
		ModestyTimer[3] = 0
		ModestyTimer[4] = 0
		ModestyTimer[5] = 0
		ModestyTimer[6] = 0
	ElseIf Rank == 1
		PlayerRef.SetFactionRank(ModestyFaction, 1)
		ModestyTimer[0] = Config.ImmodestyTimeNeeded
		ModestyTimer[1] = 0
		ModestyTimer[2] = 0
		ModestyTimer[3] = 0
		ModestyTimer[4] = 0
		ModestyTimer[5] = 0
		ModestyTimer[6] = 0
	ElseIf Rank == 2
		PlayerRef.SetFactionRank(ModestyFaction, 2)
		ModestyTimer[0] = Config.ImmodestyTimeNeeded
		ModestyTimer[1] = Config.ImmodestyTimeNeeded
		ModestyTimer[2] = 0
		ModestyTimer[3] = 0
		ModestyTimer[4] = 0
		ModestyTimer[5] = 0
		ModestyTimer[6] = 0
	ElseIf Rank == 3
		PlayerRef.SetFactionRank(ModestyFaction, 3)
		ModestyTimer[0] = Config.ImmodestyTimeNeeded
		ModestyTimer[1] = Config.ImmodestyTimeNeeded
		ModestyTimer[2] = Config.ImmodestyTimeNeeded
		ModestyTimer[3] = 0
		ModestyTimer[4] = 0
		ModestyTimer[5] = 0
		ModestyTimer[6] = 0
	ElseIf Rank == 4
		PlayerRef.SetFactionRank(ModestyFaction, 4)
		ModestyTimer[0] = Config.ImmodestyTimeNeeded
		ModestyTimer[1] = Config.ImmodestyTimeNeeded
		ModestyTimer[2] = Config.ImmodestyTimeNeeded
		ModestyTimer[3] = Config.ImmodestyTimeNeeded
		ModestyTimer[4] = 0
		ModestyTimer[5] = 0
		ModestyTimer[6] = 0
	ElseIf Rank == 5
		PlayerRef.SetFactionRank(ModestyFaction, 5)
		ModestyTimer[0] = Config.ImmodestyTimeNeeded
		ModestyTimer[1] = Config.ImmodestyTimeNeeded
		ModestyTimer[2] = Config.ImmodestyTimeNeeded
		ModestyTimer[3] = Config.ImmodestyTimeNeeded
		ModestyTimer[4] = Config.ImmodestyTimeNeeded
		ModestyTimer[5] = 0
		ModestyTimer[6] = 0
	ElseIf Rank == 6
		PlayerRef.SetFactionRank(ModestyFaction, 6)
		ModestyTimer[0] = Config.ImmodestyTimeNeeded
		ModestyTimer[1] = Config.ImmodestyTimeNeeded
		ModestyTimer[2] = Config.ImmodestyTimeNeeded
		ModestyTimer[3] = Config.ImmodestyTimeNeeded
		ModestyTimer[4] = Config.ImmodestyTimeNeeded
		ModestyTimer[5] = Config.ImmodestyTimeNeeded
		ModestyTimer[6] = 0
	EndIf
EndFunction

Function TimerUpdate(Int NewTimeNeeded)
	Int CurrentRank = PlayerRef.GetFactionRank(ModestyFaction)
	
	If CurrentRank == 1
		ModestyTimer[0] = NewTimeNeeded
	ElseIf CurrentRank == 2
		ModestyTimer[0] = NewTimeNeeded
		ModestyTimer[1] = NewTimeNeeded
	ElseIf CurrentRank == 3
		ModestyTimer[0] = NewTimeNeeded
		ModestyTimer[1] = NewTimeNeeded
		ModestyTimer[2] = NewTimeNeeded
	ElseIf CurrentRank == 4
		ModestyTimer[0] = NewTimeNeeded
		ModestyTimer[1] = NewTimeNeeded
		ModestyTimer[2] = NewTimeNeeded
		ModestyTimer[3] = NewTimeNeeded
	ElseIf CurrentRank == 5
		ModestyTimer[0] = NewTimeNeeded
		ModestyTimer[1] = NewTimeNeeded
		ModestyTimer[2] = NewTimeNeeded
		ModestyTimer[3] = NewTimeNeeded
		ModestyTimer[4] = NewTimeNeeded
	ElseIf CurrentRank == 6
		ModestyTimer[0] = NewTimeNeeded
		ModestyTimer[1] = NewTimeNeeded
		ModestyTimer[2] = NewTimeNeeded
		ModestyTimer[3] = NewTimeNeeded
		ModestyTimer[4] = NewTimeNeeded
		ModestyTimer[5] = NewTimeNeeded
	EndIf
EndFunction

Function TopRankJump(Int Rank)
	PlayerRef.SetFactionRank(TopModestyFaction, Rank)
EndFunction

Function BottomRankJump(Int Rank)
	PlayerRef.SetFactionRank(BottomModestyFaction, Rank)
EndFunction