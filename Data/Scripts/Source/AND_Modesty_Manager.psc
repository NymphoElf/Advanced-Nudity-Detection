ScriptName AND_Modesty_Manager extends Quest

AND_Core Property AND_Main Auto
AND_MCM Property Config Auto

Actor Property PlayerRef Auto

Bool Property PlayerIsInFaction Auto Hidden
Bool Property PermanentShameless Auto Hidden
Bool Property RegisteredForUpdate Auto Hidden

Faction Property ModestyFaction Auto

Int[] Property ModestyTimer Auto

String[] Property ModestyTitle Auto

Event OnInit()
	RegisterForUpdateGameTime(1.0)
	RegisteredForUpdate = True
	Debug.Trace("AND - Modesty Manager Initialized")
EndEvent

Event OnUpdateGameTime()
	If AND_Main.DFFMA_Found == False
		UnregisterForUpdateGameTime()
		RegisteredForUpdate = False
		return
	EndIf
	
	If Config.UseDynamicModesty == False
		return
	EndIf
	
	If PermanentShameless == True && Config.ShamelessCanBePermanent == False
		PermanentShameless = False
	EndIf
	ModestyUpgrade()
EndEvent

Function ModestyUpgrade()
	Int ModestyRank = PlayerRef.GetFactionRank(ModestyFaction)
	
	If Config.MinimumModestyRank > ModestyRank
		RankJump(Config.MinimumModestyRank)
	EndIf
	
	If ModestyRank <= 0
		If PlayerRef.GetFactionRank(AND_Main.AND_ShowingBraFaction) == 1 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) == 0
			If ModestyTimer[0] < Config.ImmodestyTimeNeeded
				ModestyTimer[0] = ModestyTimer[0] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 1)
				ModestyRankChange(True, 1)
			EndIf
		ElseIf ModestyTimer[0] > 0
			ModestyTimer[0] = ModestyTimer[0] - 1
		EndIf
		
	ElseIf ModestyRank == 1
		If PlayerRef.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) == 1 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) == 0
			If ModestyTimer[1] < Config.ImmodestyTimeNeeded
				ModestyTimer[1] = ModestyTimer[1] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 2)
				ModestyRankChange(True, 2)
			EndIf
		ElseIf PlayerRef.GetFactionRank(AND_Main.AND_ShowingBraFaction) == 0 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) == 0
			ModestyDowngrade(1)
		EndIf
	
	ElseIf ModestyRank == 2
		If PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) == 1 && PlayerRef.GetFactionRank(AND_Main.AND_ToplessFaction) == 0
			If ModestyTimer[2] < Config.ImmodestyTimeNeeded
				ModestyTimer[2] = ModestyTimer[2] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 3)
				ModestyRankChange(True, 3)
			EndIf
		ElseIf PlayerRef.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) == 0 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) == 0
			ModestyDowngrade(2)
		EndIf
		
	ElseIf ModestyRank == 3
		If PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) == 1 && PlayerRef.GetFactionRank(AND_Main.AND_BottomlessFaction) == 0
			If ModestyTimer[3] < Config.ImmodestyTimeNeeded
				ModestyTimer[3] = ModestyTimer[3] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 4)
				ModestyRankChange(True, 4)
			EndIf
		ElseIf PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) == 0
			ModestyDowngrade(3)
		EndIf
		
	ElseIf ModestyRank == 4
		If PlayerRef.GetFactionRank(AND_Main.AND_ToplessFaction) == 1 && PlayerRef.GetFactionRank(AND_Main.AND_BottomlessFaction) == 0
			If ModestyTimer[4] < Config.ImmodestyTimeNeeded
				ModestyTimer[4] = ModestyTimer[4] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 5)
				ModestyRankChange(True, 5)
			EndIf
		ElseIf PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) == 0
			ModestyDowngrade(4)
		EndIf
		
	ElseIf ModestyRank == 5
		If PlayerRef.GetFactionRank(AND_Main.AND_BottomlessFaction) == 1
			If ModestyTimer[5] < Config.ImmodestyTimeNeeded
				ModestyTimer[5] = ModestyTimer[5] + 1
			Else
				PlayerRef.SetFactionRank(ModestyFaction, 6)
				ModestyRankChange(True, 6)
			EndIf
		ElseIf PlayerRef.GetFactionRank(AND_Main.AND_ToplessFaction) == 0
			ModestyDowngrade(5)
		EndIf
		
	ElseIf ModestyRank >= 6
		If PlayerRef.GetFactionRank(AND_Main.AND_NudeActorFaction) == 0
			ModestyDowngrade(6)
		ElseIf ModestyTimer[6] < (Config.ImmodestyTimeNeeded * 2)
			ModestyTimer[6] = ModestyTimer[6] + 1
		ElseIf ModestyTimer[6] == (Config.ImmodestyTimeNeeded * 2) && Config.ShamelessCanBePermanent == True
			PermanentShameless = True
			ModestyRankChange(True, 7)
		EndIf
	EndIf
EndFunction

Function ModestyDowngrade(Int FactionRank)
	If PermanentShameless == True && PlayerRef.GetFactionRank(ModestyFaction) == 7
		return
	EndIf
	
	If PlayerRef.GetFactionRank(AND_Main.AND_ShowingBraFaction) == 0 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingUnderwearFaction) == 0\ 
	&& PlayerRef.GetFactionRank(AND_Main.AND_ShowingChestFaction) == 0 && PlayerRef.GetFactionRank(AND_Main.AND_ShowingGenitalsFaction) == 0
		
		If FactionRank >= 6
			If ModestyTimer[6] > 0
				ModestyTimer[6] = ModestyTimer[6] - 1
			Else
				ModestyTimer[5] = ModestyTimer[5] - 1
				
				If ModestyTimer[5] <= (Config.ImmodestyTimeNeeded / 2)
					PlayerRef.SetFactionRank(ModestyFaction, 5)
					ModestyRankChange(False, 5)
				EndIf
			EndIf
		
		ElseIf FactionRank == 5 && Config.MinimumModestyRank < 5
			If ModestyTimer[5] > 0
				ModestyTimer[5] = ModestyTimer[5] - 1
			Else
				ModestyTimer[4] = ModestyTimer[4] - 1
				
				If ModestyTimer[4] <= (Config.ImmodestyTimeNeeded / 2)
					PlayerRef.SetFactionRank(ModestyFaction, 4)
					ModestyRankChange(False, 4)
				EndIf
			EndIf
		
		ElseIf FactionRank == 4 && Config.MinimumModestyRank < 4
			If ModestyTimer[4] > 0
				ModestyTimer[4] = ModestyTimer[4] - 1
			Else
				ModestyTimer[3] = ModestyTimer[3] - 1
				
				If ModestyTimer[3] <= (Config.ImmodestyTimeNeeded / 2)
					PlayerRef.SetFactionRank(ModestyFaction, 3)
					ModestyRankChange(False, 3)
				EndIf
			EndIf
		
		ElseIf FactionRank == 3 && Config.MinimumModestyRank < 3
			If ModestyTimer[3] > 0
				ModestyTimer[3] = ModestyTimer[3] - 1
			Else
				ModestyTimer[2] = ModestyTimer[2] - 1
				
				If ModestyTimer[2] <= (Config.ImmodestyTimeNeeded / 2)
					PlayerRef.SetFactionRank(ModestyFaction, 2)
					ModestyRankChange(False, 2)
				EndIf
			EndIf
		
		ElseIf FactionRank == 2 && Config.MinimumModestyRank < 2
			If ModestyTimer[2] > 0
				ModestyTimer[2] = ModestyTimer[2] - 1
			Else
				ModestyTimer[1] = ModestyTimer[1] - 1
				
				If ModestyTimer[1] <= (Config.ImmodestyTimeNeeded / 2)
					PlayerRef.SetFactionRank(ModestyFaction, 1)
					ModestyRankChange(False, 1)
				EndIf
			EndIf
		
		ElseIf FactionRank == 1 && Config.MinimumModestyRank < 1
			If ModestyTimer[1] > 0
				ModestyTimer[1] = ModestyTimer[1] - 1
			Else
				ModestyTimer[0] = ModestyTimer[0] - 1
				
				If ModestyTimer[0] <= (Config.ImmodestyTimeNeeded / 2)
					PlayerRef.SetFactionRank(ModestyFaction, 0)
					ModestyRankChange(False, 0)
				EndIf
			EndIf
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
Modesty Faction Ranks

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