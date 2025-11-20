ScriptName AND_NPC_Modesty_Manager extends Quest

Import JsonUtil

AND_Core Property Core Auto
AND_ModestyRandomizer Property ModestyRandomizer Auto
AND_MCM Property Config Auto
AND_Logger Property Logger Auto

;=================================
Int[] Property AllowPermanentShameless Auto Hidden ;Used in place of Bool due to CreateBoolArray bug in SKSE
Int[] Property FemaleCorruption Auto Hidden ;Used in place of Bool due to CreateBoolArray bug in SKSE
Int[] Property StrictNPCRules Auto Hidden ;Used in place of Bool due to CreateBoolArray bug in SKSE
Int[] Property UpgradeBlocked Auto Hidden ;Used in place of Bool due to CreateBoolArray bug in SKSE

Int[] Property ModestyTimer0 Auto Hidden
Int[] Property ModestyTimer1 Auto Hidden
Int[] Property ModestyTimer2 Auto Hidden
Int[] Property ModestyTimer3 Auto Hidden
Int[] Property ModestyTimer4 Auto Hidden
Int[] Property ModestyTimer5 Auto Hidden
Int[] Property ModestyTimer6 Auto Hidden
Int[] Property DefaultRankStrict Auto Hidden
Int[] Property CurrentRankStrict Auto Hidden
Int[] Property MinimumRankStrict Auto Hidden

Int[] Property TopModestyTimer0 Auto Hidden
Int[] Property TopModestyTimer1 Auto Hidden
Int[] Property TopModestyTimer2 Auto Hidden
Int[] Property TopModestyTimer3 Auto Hidden
Int[] Property DefaultRankTop Auto Hidden
Int[] Property CurrentRankTop Auto Hidden
Int[] Property MinimumRankTop Auto Hidden

Int[] Property BottomModestyTimer0 Auto Hidden
Int[] Property BottomModestyTimer1 Auto Hidden
Int[] Property BottomModestyTimer2 Auto Hidden
Int[] Property BottomModestyTimer3 Auto Hidden
Int[] Property DefaultRankBottom Auto Hidden
Int[] Property CurrentRankBottom Auto Hidden
Int[] Property MinimumRankBottom Auto Hidden

Int[] Property ShynessMode Auto Hidden

Float[] Property LastUpdateTime Auto Hidden

Form[] Property FemaleActor Auto Hidden
Form[] Property PermanentFemaleActor Auto Hidden

String[] Property FemaleName Auto Hidden
;=================================

Int Property TrackedFemales = 0 Auto Hidden
Int Property PermanentFemales = 0 Auto Hidden

String Property PermJsonName = "Advanced Nudity Detection/Permanent NPC Modesty Data" AutoReadOnly
String Property DumpJsonName = "Advanced Nudity Detection/NPC Modesty Data Dump" AutoReadOnly

Event OnInit()
	Startup()
EndEvent

Function Startup()
	Int ArraySize = 1
	FemaleActor = Utility.CreateFormArray(ArraySize)
	PermanentFemaleActor = Utility.CreateFormArray(ArraySize)
	
	ModestyTimer0 = Utility.CreateIntArray(ArraySize)
	ModestyTimer1 = Utility.CreateIntArray(ArraySize)
	ModestyTimer2 = Utility.CreateIntArray(ArraySize)
	ModestyTimer3 = Utility.CreateIntArray(ArraySize)
	ModestyTimer4 = Utility.CreateIntArray(ArraySize)
	ModestyTimer5 = Utility.CreateIntArray(ArraySize)
	ModestyTimer6 = Utility.CreateIntArray(ArraySize)
	DefaultRankStrict = Utility.CreateIntArray(ArraySize)
	CurrentRankStrict = Utility.CreateIntArray(ArraySize)
	MinimumRankStrict = Utility.CreateIntArray(ArraySize)
	
	TopModestyTimer0 = Utility.CreateIntArray(ArraySize)
	TopModestyTimer1 = Utility.CreateIntArray(ArraySize)
	TopModestyTimer2 = Utility.CreateIntArray(ArraySize)
	TopModestyTimer3 = Utility.CreateIntArray(ArraySize)
	DefaultRankTop = Utility.CreateIntArray(ArraySize)
	CurrentRankTop = Utility.CreateIntArray(ArraySize)
	MinimumRankTop = Utility.CreateIntArray(ArraySize)
	
	BottomModestyTimer0 = Utility.CreateIntArray(ArraySize)
	BottomModestyTimer1 = Utility.CreateIntArray(ArraySize)
	BottomModestyTimer2 = Utility.CreateIntArray(ArraySize)
	BottomModestyTimer3 = Utility.CreateIntArray(ArraySize)
	DefaultRankBottom = Utility.CreateIntArray(ArraySize)
	CurrentRankBottom = Utility.CreateIntArray(ArraySize)
	MinimumRankBottom = Utility.CreateIntArray(ArraySize)
	
	ShynessMode = Utility.CreateIntArray(ArraySize)
	
	AllowPermanentShameless = Utility.CreateIntArray(ArraySize)
	FemaleCorruption = Utility.CreateIntArray(ArraySize)
	StrictNPCRules = Utility.CreateIntArray(ArraySize)
	UpgradeBlocked = Utility.CreateIntArray(ArraySize)
	
	LastUpdateTime = Utility.CreateFloatArray(ArraySize)
	
	FemaleName = Utility.CreateStringArray(ArraySize)
EndFunction

Function GeneratePermanentFile()
	SetIntValue(PermJsonName, "Total Permanent Females", 0)
	Save(PermJsonName)
EndFunction

Function ImportPermanentFemales()
	Logger.Log("<NPC Modesty Manager> [ImportPermanentFemales] Import/Generate Permanent List")
	
	If JsonExists(PermJsonName) == False
		Logger.Log("<NPC Modesty Manager> [ImportPermanentFemales] Generate New List")
		GeneratePermanentFile()
	Else
		Logger.Log("<NPC Modesty Manager> [ImportPermanentFemales] Import from existing List")
		Int Index = 0
		Int Limit = GetIntValue(PermJsonName, "Total Permanent Females")
		While Index < Limit
			FemaleActor[Index] = GetFormValue(PermJsonName, Index) as Actor
			RegisterFemale(FemaleActor[Index] as Actor, True)
			PermanentFemales += 1
			ResizePermanentArray()
			Index += 1
		EndWhile
	EndIf
	
	RestoreNPCFactions()
EndFunction

Function ResizeNormalArrays()
	Int ArraySize = (TrackedFemales + 1)
	
	FemaleActor = Utility.ResizeFormArray(FemaleActor, ArraySize)
	
	ModestyTimer0 = Utility.ResizeIntArray(ModestyTimer0, ArraySize)
	ModestyTimer1 = Utility.ResizeIntArray(ModestyTimer1, ArraySize)
	ModestyTimer2 = Utility.ResizeIntArray(ModestyTimer2, ArraySize)
	ModestyTimer3 = Utility.ResizeIntArray(ModestyTimer3, ArraySize)
	ModestyTimer4 = Utility.ResizeIntArray(ModestyTimer4, ArraySize)
	ModestyTimer5 = Utility.ResizeIntArray(ModestyTimer5, ArraySize)
	ModestyTimer6 = Utility.ResizeIntArray(ModestyTimer6, ArraySize)
	DefaultRankStrict = Utility.ResizeIntArray(DefaultRankStrict, ArraySize)
	CurrentRankStrict = Utility.ResizeIntArray(CurrentRankStrict, ArraySize)
	CurrentRankStrict = Utility.ResizeIntArray(CurrentRankStrict, ArraySize)
	
	TopModestyTimer0 = Utility.ResizeIntArray(TopModestyTimer0, ArraySize)
	TopModestyTimer1 = Utility.ResizeIntArray(TopModestyTimer1, ArraySize)
	TopModestyTimer2 = Utility.ResizeIntArray(TopModestyTimer2, ArraySize)
	TopModestyTimer3 = Utility.ResizeIntArray(TopModestyTimer3, ArraySize)
	DefaultRankTop = Utility.ResizeIntArray(DefaultRankTop, ArraySize)
	CurrentRankTop = Utility.ResizeIntArray(CurrentRankTop, ArraySize)
	CurrentRankTop = Utility.ResizeIntArray(CurrentRankTop, ArraySize)
	
	BottomModestyTimer0 = Utility.ResizeIntArray(BottomModestyTimer0, ArraySize)
	BottomModestyTimer1 = Utility.ResizeIntArray(BottomModestyTimer1, ArraySize)
	BottomModestyTimer2 = Utility.ResizeIntArray(BottomModestyTimer2, ArraySize)
	BottomModestyTimer3 = Utility.ResizeIntArray(BottomModestyTimer3, ArraySize)
	DefaultRankBottom = Utility.ResizeIntArray(DefaultRankBottom, ArraySize)
	CurrentRankBottom = Utility.ResizeIntArray(CurrentRankBottom, ArraySize)
	CurrentRankBottom = Utility.ResizeIntArray(CurrentRankBottom, ArraySize)
	
	ShynessMode = Utility.ResizeIntArray(ShynessMode, ArraySize)
	
	AllowPermanentShameless = Utility.ResizeIntArray(AllowPermanentShameless, ArraySize)
	FemaleCorruption = Utility.ResizeIntArray(FemaleCorruption, ArraySize)
	StrictNPCRules = Utility.ResizeIntArray(StrictNPCRules, ArraySize)
	UpgradeBlocked = Utility.ResizeIntArray(UpgradeBlocked, ArraySize)
	
	LastUpdateTime = Utility.ResizeFloatArray(LastUpdateTime, ArraySize)
	
	FemaleName = Utility.ResizeStringArray(FemaleName, ArraySize)
EndFunction

Function ResizePermanentArray()
	Int ArraySize = (PermanentFemales + 1)
	PermanentFemaleActor = Utility.ResizeFormArray(PermanentFemaleActor, ArraySize)
EndFunction

Function RestoreNPCFactions()
	Int Index = 0
	While Index < TrackedFemales
		Actor akFemale = FemaleActor[Index] as Actor
		akFemale.AddToFaction(Core.ModestyFaction)
		akFemale.AddToFaction(Core.TopModestyFaction)
		akFemale.AddToFaction(Core.BottomModestyFaction)
		
		akFemale.AddToFaction(Core.ShyWithMale)
		akFemale.AddToFaction(Core.ShyWithFemale)
		
		akFemale.SetFactionRank(Core.ModestyFaction, CurrentRankStrict[Index])
		akFemale.SetFactionRank(Core.TopModestyFaction, CurrentRankTop[Index])
		akFemale.SetFactionRank(Core.BottomModestyFaction, CurrentRankBottom[Index])
		
		If ShynessMode[Index] != 0
			akFemale.SetFactionRank(Core.ShyWithFemale, 1)
		EndIf
		
		If ShynessMode[Index] != 1
			akFemale.SetFactionRank(Core.ShyWithMale, 1)
		EndIf
		
		Index += 1
	EndWhile
EndFunction

Function RegisterFemale(Actor akFemale, Bool PermImport = False)
	ActorBase femaleBase = akFemale.GetActorBase()
	String akName = femaleBase.GetName()
	
	Int ShyMode = 0

	FemaleActor[TrackedFemales] = akFemale
	FemaleName[TrackedFemales] = akName
	LastUpdateTime[TrackedFemales] = Utility.GetCurrentGameTime()
	
	If PermImport == True
		Logger.Log("<NPC Modesty Manager> [RegisterFemale] Registering Female: " + akFemale + " (" + akName + ") from Permanent List")
		
		If FemaleExists(akFemale, True)
			Logger.Log("<NPC Modesty Manager> [RegisterFemale] ERROR - Female: " + akFemale + " (" + akName + ") already exists on Permanent List")
			return
		EndIf
		
		Int PermID = GetIntValue(PermJsonName, akFemale)
		
		PermanentFemaleActor[PermanentFemales] = akFemale
		
		Int StrictRank = GetIntValue(PermJsonName, "Female " + PermID + " CurrentRankStrict")
		Int TopRank = GetIntValue(PermJsonName, "Female " + PermID + " CurrentRankTop")
		Int BottomRank = GetIntValue(PermJsonName, "Female " + PermID + " CurrentRankBottom")
		ShyMode = GetIntValue(PermJsonName, "Female " + PermID + " ShynessMode")
		
		DefaultRankStrict[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " DefaultRankStrict")
		DefaultRankTop[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " DefaultRankTop")
		DefaultRankBottom[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " DefaultRankBottom")
		
		CurrentRankStrict[TrackedFemales] = StrictRank
		CurrentRankTop[TrackedFemales] = TopRank
		CurrentRankBottom[TrackedFemales] = BottomRank
		
		MinimumRankStrict[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " MinimumRankStrict")
		MinimumRankTop[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " MinimumRankTop")
		MinimumRankBottom[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " MinimumRankBottom")
		
		AllowPermanentShameless[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " AllowPermanentShameless")
		FemaleCorruption[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " FemaleCorruption")
		StrictNPCRules[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " StrictNPCRules")
		UpgradeBlocked[TrackedFemales] = GetIntValue(PermJsonName, "Female " + PermID + " UpgradeBlocked")
		
		akFemale.AddToFaction(Core.ModestyFaction)
		akFemale.AddToFaction(Core.TopModestyFaction)
		akFemale.AddToFaction(Core.BottomModestyFaction)
		
		akFemale.AddToFaction(Core.ShyWithFemale)
		akFemale.AddToFaction(Core.ShyWithMale)
		
		akFemale.SetFactionRank(Core.ModestyFaction, StrictRank)
		akFemale.SetFactionRank(Core.TopModestyFaction, TopRank)
		akFemale.SetFactionRank(Core.BottomModestyFaction, BottomRank)
		
		If ShyMode != 0 ;is NOT Males
			akFemale.SetFactionRank(Core.ShyWithFemale, 1)
		EndIf
		
		If ShyMode != 1 ;is NOT Females
			akFemale.SetFactionRank(Core.ShyWithMale, 1)
		EndIf
	Else
		Logger.Log("<NPC Modesty Manager> [RegisterFemale] Registering Female: " + akFemale + " (" + akName + ")")
		
		Int Modesty = ModestyRandomizer.GetRandomizedModesty(akFemale, False)
		Int TopModesty = 0
		Int BottomModesty = 0
		
		If Modesty < 0
			Modesty = 0
		ElseIf Modesty == 1
			TopModesty = 1
		ElseIf Modesty == 2
			TopModesty = 1
			BottomModesty = 1
		ElseIf Modesty == 3
			TopModesty = 2
			BottomModesty = 1
		ElseIf Modesty == 4
			TopModesty = 2
			BottomModesty = 2
		ElseIf Modesty == 5
			TopModesty = 3
			BottomModesty = 2
		ElseIf Modesty >= 6
			Modesty = 6
			TopModesty = 3
			BottomModesty = 3
		EndIf
		
		DefaultRankStrict[TrackedFemales] = Modesty
		DefaultRankTop[TrackedFemales] = TopModesty
		DefaultRankBottom[TrackedFemales] = BottomModesty
		
		CurrentRankStrict[TrackedFemales] = Modesty
		CurrentRankTop[TrackedFemales] = TopModesty
		CurrentRankBottom[TrackedFemales] = BottomModesty
		
		MinimumRankStrict[TrackedFemales] = 0
		MinimumRankTop[TrackedFemales] = 0
		MinimumRankBottom[TrackedFemales] = 0
		
		AllowPermanentShameless[TrackedFemales] = Config.NPCPermanentShameless as Int
		FemaleCorruption[TrackedFemales] = Config.NPCModestyCorruption as Int
		StrictNPCRules[TrackedFemales] = Config.StrictModestyRules as Int
		UpgradeBlocked[TrackedFemales] = 0
		
		akFemale.SetFactionRank(Core.ModestyFaction, Modesty)
		akFemale.SetFactionRank(Core.TopModestyFaction, TopModesty)
		akFemale.SetFactionRank(Core.BottomModestyFaction, BottomModesty)
		
		If Core.SexlabInstalled == True && Config.NPCShySex == "Sexuality"
			Logger.Log("<NPC Modesty Manager> [RegisterFemale] " + akName + " Shy Sex is Sexuality with Sexlab Installed")
			Int SexualityScore = Core.FindSexuality(akFemale)
			
			If SexualityScore > 65 ;Straight
				akFemale.SetFactionRank(Core.ShyWithMale, 0)
				akFemale.SetFactionRank(Core.ShyWithFemale, 1)
				ShyMode = 0
			ElseIf SexualityScore < 35 ;Gay 
				akFemale.SetFactionRank(Core.ShyWithMale, 1)
				akFemale.SetFactionRank(Core.ShyWithFemale, 0)
				ShyMode = 1
			Else ;Bisexual
				akFemale.SetFactionRank(Core.ShyWithMale, 1)
				akFemale.SetFactionRank(Core.ShyWithFemale, 1)
				ShyMode = 2
			EndIf
		ElseIf Config.NPCShySex == "Random"
			Logger.Log("<NPC Modesty Manager> [RegisterFemale] " + akName + " Shy Sex is Random")
			Int Roll = Utility.RandomInt(0,2)
			If Roll == 0
				akFemale.SetFactionRank(Core.ShyWithMale, 1)
				akFemale.SetFactionRank(Core.ShyWithFemale, 0)
			ElseIf Roll == 1
				akFemale.SetFactionRank(Core.ShyWithMale, 0)
				akFemale.SetFactionRank(Core.ShyWithFemale, 1)
			Else
				akFemale.SetFactionRank(Core.ShyWithMale, 1)
				akFemale.SetFactionRank(Core.ShyWithFemale, 1)
			EndIf
			ShyMode = Roll
		ElseIf Config.NPCShySex == "Both"
			Logger.Log("<NPC Modesty Manager> [RegisterFemale] " + akName + " Shy Sex is Both")
			akFemale.SetFactionRank(Core.ShyWithMale, 1)
			akFemale.SetFactionRank(Core.ShyWithFemale, 1)
			ShyMode = 2
		ElseIf Config.NPCShySex == "Female"
			Logger.Log("<NPC Modesty Manager> [RegisterFemale] " + akName + " Shy Sex is Female")
			akFemale.SetFactionRank(Core.ShyWithMale, 0)
			akFemale.SetFactionRank(Core.ShyWithFemale, 1)
			ShyMode = 1
		Else
			Logger.Log("<NPC Modesty Manager> [RegisterFemale] " + akName + " Shy Sex is either Male or Sexuality without Sexlab Installed/Detected")
			akFemale.SetFactionRank(Core.ShyWithMale, 1)
			akFemale.SetFactionRank(Core.ShyWithFemale, 0)
		EndIf
	EndIf
	
	ShynessMode[TrackedFemales] = ShyMode
	Logger.Log("<NPC Modesty Manager> [RegisterFemale] Number of Registered Females (before add): " + TrackedFemales)
	TrackedFemales += 1
	Logger.Log("<NPC Modesty Manager> [RegisterFemale] Number of Registered Females (after add): " + TrackedFemales)
	
	ResizeNormalArrays()
EndFunction

Function RegisterRosa(Actor akRosa)
	String RosaName = akRosa.GetActorBase().GetName()
	
	FemaleActor[TrackedFemales] = akRosa
	FemaleName[TrackedFemales] = RosaName
	ShynessMode[TrackedFemales] = 0
	
	DefaultRankStrict[TrackedFemales] = 6
	DefaultRankTop[TrackedFemales] = 3
	DefaultRankBottom[TrackedFemales] = 3
	
	CurrentRankStrict[TrackedFemales] = 6
	CurrentRankTop[TrackedFemales] = 3
	CurrentRankBottom[TrackedFemales] = 3
	
	MinimumRankStrict[TrackedFemales] = 6
	MinimumRankTop[TrackedFemales] = 3
	MinimumRankBottom[TrackedFemales] = 3
	
	AllowPermanentShameless[TrackedFemales] = Config.NPCPermanentShameless as Int
	FemaleCorruption[TrackedFemales] = Config.NPCModestyCorruption as Int
	
	StrictNPCRules[TrackedFemales] = Config.StrictModestyRules as Int
	UpgradeBlocked[TrackedFemales] = 0
	
	LastUpdateTime[TrackedFemales] = Utility.GetCurrentGameTime()
	
	Logger.Log("<NPC Modesty Manager> [RegisterRosa] Number of Registered Females (before add): " + TrackedFemales)
	TrackedFemales += 1
	Logger.Log("<NPC Modesty Manager> [RegisterRosa] Number of Registered Females (after add): " + TrackedFemales)
EndFunction

Function AddPermanent(Actor akFemale)
	Logger.Log("<NPC Modesty Manager> [AddPermanent]")
	
	If akFemale == None
		Logger.Log("<NPC Modesty Manager> [AddPermanent] ERROR: akFemale is NONE")
		return
	EndIf
	
	Int FemaleID = FemaleActor.Find(akFemale)
	
	If FemaleID < 0
		Logger.Log("<NPC Modesty Manager> [AddPermanent] ERROR: Female " + akFemale + " " + akName + " not found in FemaleActor array!")
		return
	EndIf
	
	ActorBase femaleBase = akFemale.GetActorBase()
	String akName = femaleBase.GetName()
	
	Logger.Log("<NPC Modesty Manager> [AddPermanent] Adding Female: " + akFemale + " (" + akName + ")")
	
	PermanentFemaleActor[PermanentFemales] = FemaleActor[FemaleID]
	
	SetFormValue(PermJsonName, PermanentFemales, akFemale)
	SetIntValue(PermJsonName, akFemale, PermanentFemales)
	SetStringValue(PermJsonName, "Female " + PermanentFemales + " Name", akName)
	
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " DefaultRankStrict", DefaultRankStrict[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " CurrentRankStrict", CurrentRankStrict[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " MinimumRankStrict", MinimumRankStrict[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " DefaultRankTop", DefaultRankTop[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " CurrentRankTop", CurrentRankTop[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " MinimumRankTop", MinimumRankTop[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " DefaultRankBottom", DefaultRankBottom[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " CurrentRankBottom", CurrentRankBottom[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " MinimumRankBottom", MinimumRankBottom[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " ShynessMode", ShynessMode[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " AllowPermanentShameless", AllowPermanentShameless[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " FemaleCorruption", FemaleCorruption[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermanentFemales + " StrictNPCRules", StrictNPCRules[FemaleID])
	
	PermanentFemales += 1
	
	SetIntValue(PermJsonName, "Total Permanent Females", PermanentFemales)
	Logger.Log("<NPC Modesty Manager> [AddPermanent] Number of Permanent Females: " + PermanentFemales)
	Save(PermJsonName)
	
	ResizePermanentArray()
EndFunction

Bool Function FemaleExists(Actor akFemale, Bool PermFile = False)
	Logger.Log("<NPC Modesty Manager> [FemaleExists] Check Female Exists - " + akFemale)
	If akFemale == None
		return False
	EndIf
	
	If PermFile == False
		If FemaleActor.Find(akFemale) >= 0
			Logger.Log("<NPC Modesty Manager> [FemaleExists] (Tracked Females) Found " + akFemale + " at Index " + FemaleActor.Find(akFemale) + " out of " + TrackedFemales)
			return True
		EndIf
	Else
		If PermanentFemaleActor.Find(akFemale) >= 0
			Logger.Log("<NPC Modesty Manager> [FemaleExists] (Permanent Females) Found " + akFemale + " at Index " + PermanentFemaleActor.Find(akFemale) + " out of " + PermanentFemales)
			return True
		EndIf
	EndIf
	
	return False
EndFunction

Function RemoveFemale(Actor akFemale = None, Int FemaleID = -1)
	Logger.Log("<NPC Modesty Manager> [RemoveFemale]")
	If akFemale == None && FemaleID < 0
		Logger.Log("<NPC Modesty Manager> [RemoveFemale] ERROR - Both akFemale and FemaleID are invalid!")
		return
	EndIf
	
	If akFemale == None
		akFemale = FemaleActor[FemaleID] as Actor
	ElseIf FemaleID < 0
		FemaleID = FemaleActor.Find(akFemale)
	EndIf
	
	Int NextFemaleID = FemaleID + 1
	
	While NextFemaleID < TrackedFemales
		FemaleActor[FemaleID] = FemaleActor[NextFemaleID]
		
		ModestyTimer0[FemaleID] = ModestyTimer0[NextFemaleID]
		ModestyTimer1[FemaleID] = ModestyTimer1[NextFemaleID]
		ModestyTimer2[FemaleID] = ModestyTimer2[NextFemaleID]
		ModestyTimer3[FemaleID] = ModestyTimer3[NextFemaleID]
		ModestyTimer4[FemaleID] = ModestyTimer4[NextFemaleID]
		ModestyTimer5[FemaleID] = ModestyTimer5[NextFemaleID]
		ModestyTimer6[FemaleID] = ModestyTimer6[NextFemaleID]
		
		DefaultRankStrict[FemaleID] = DefaultRankStrict[NextFemaleID]
		CurrentRankStrict[FemaleID] = CurrentRankStrict[NextFemaleID]
		
		TopModestyTimer0[FemaleID] = TopModestyTimer0[NextFemaleID]
		TopModestyTimer1[FemaleID] = TopModestyTimer1[NextFemaleID]
		TopModestyTimer2[FemaleID] = TopModestyTimer2[NextFemaleID]
		TopModestyTimer3[FemaleID] = TopModestyTimer3[NextFemaleID]
		
		DefaultRankTop[FemaleID] = DefaultRankTop[NextFemaleID]
		CurrentRankTop[FemaleID] = CurrentRankTop[NextFemaleID]
		
		BottomModestyTimer0[FemaleID] = BottomModestyTimer0[NextFemaleID]
		BottomModestyTimer1[FemaleID] = BottomModestyTimer1[NextFemaleID]
		BottomModestyTimer2[FemaleID] = BottomModestyTimer2[NextFemaleID]
		BottomModestyTimer3[FemaleID] = BottomModestyTimer3[NextFemaleID]
		
		DefaultRankBottom[FemaleID] = DefaultRankBottom[NextFemaleID]
		CurrentRankBottom[FemaleID] = CurrentRankBottom[NextFemaleID]
		
		ShynessMode[FemaleID] = ShynessMode[NextFemaleID]
		
		MinimumRankStrict[FemaleID] = MinimumRankStrict[NextFemaleID]
		MinimumRankTop[FemaleID] = MinimumRankTop[NextFemaleID]
		MinimumRankBottom[FemaleID] = MinimumRankBottom[NextFemaleID]
		
		AllowPermanentShameless[FemaleID] = AllowPermanentShameless[NextFemaleID]
		FemaleCorruption[FemaleID] = FemaleCorruption[NextFemaleID]
		StrictNPCRules[FemaleID] = StrictNPCRules[NextFemaleID]
		UpgradeBlocked[FemaleID] = UpgradeBlocked[NextFemaleID]
		
		LastUpdateTime[FemaleID] = LastUpdateTime[NextFemaleID]
		
		FemaleID += 1
		NextFemaleID += 1
	EndWhile
	
	TrackedFemales -= 1
	Logger.Log("<NPC Modesty Manager> [RemoveFemale] Number of Registered Females: " + TrackedFemales)
	
	ResizeNormalArrays()
EndFunction

Function RemovePermFemale(Actor akFemale = None, Int FemaleID = -1)
	Logger.Log("<NPC Modesty Manager> [RemovePermFemale]")
	If akFemale == None && FemaleID < 1
		Logger.Log("<NPC Modesty Manager> [RemovePermFemale] ERROR - Both akFemale and FemaleID are invalid!")
		return
	EndIf
	
	If akFemale == None
		akFemale = GetFormValue(PermJsonName, FemaleID) as Actor
	ElseIf FemaleID < 0
		FemaleID = GetIntValue(PermJsonName, akFemale)
	EndIf
	
	Int NextFemaleID = FemaleID + 1
	While NextFemaleID < PermanentFemales
		Actor NextFemaleActor = GetFormValue(PermJsonName, NextFemaleID) as Actor
		
		SetFormValue(PermJsonName, FemaleID, GetFormValue(PermJsonName, NextFemaleID))
		SetIntValue(PermJsonName, NextFemaleActor, FemaleID)
		SetStringValue(PermJsonName, "Female " + FemaleID + " Name", GetStringValue(PermJsonName, "Female " + NextFemaleID + " Name"))
		
		SetIntValue(PermJsonName, "Female " + FemaleID + " DefaultRankStrict", GetIntValue(PermJsonName, "Female " + NextFemaleID + " DefaultRankStrict"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " CurrentRankStrict", GetIntValue(PermJsonName, "Female " + NextFemaleID + " CurrentRankStrict"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " MinimumRankStrict", GetIntValue(PermJsonName, "Female " + NextFemaleID + " MinimumRankStrict"))
		
		SetIntValue(PermJsonName, "Female " + FemaleID + " DefaultRankTop", GetIntValue(PermJsonName, "Female " + NextFemaleID + " DefaultRankTop"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " CurrentRankTop", GetIntValue(PermJsonName, "Female " + NextFemaleID + " CurrentRankTop"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " MinimumRankTop", GetIntValue(PermJsonName, "Female " + NextFemaleID + " MinimumRankTop"))
		
		SetIntValue(PermJsonName, "Female " + FemaleID + " DefaultRankBottom", GetIntValue(PermJsonName, "Female " + NextFemaleID + " DefaultRankBottom"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " CurrentRankBottom", GetIntValue(PermJsonName, "Female " + NextFemaleID + " CurrentRankBottom"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " MinimumRankBottom", GetIntValue(PermJsonName, "Female " + NextFemaleID + " MinimumRankBottom"))
		
		SetIntValue(PermJsonName, "Female " + FemaleID + " AllowPermanentShameless", GetIntValue(PermJsonName, "Female " + NextFemaleID + " AllowPermanentShameless"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " FemaleCorruption", GetIntValue(PermJsonName, "Female " + NextFemaleID + " FemaleCorruption"))
		SetIntValue(PermJsonName, "Female " + FemaleID + " StrictNPCRules", GetIntValue(PermJsonName, "Female " + NextFemaleID + " StrictNPCRules"))
		
		SetIntValue(PermJsonName, "Female " + FemaleID + " ShynessMode", GetIntValue(PermJsonName, "Female " + NextFemaleID + " ShynessMode"))
	EndWhile
	
	UnsetFormValue(PermJsonName, FemaleID)
	UnsetIntValue(PermJsonName, akFemale)
	UnsetStringValue(PermJsonName, "Female " + FemaleID + " Name")
	
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " DefaultRankStrict")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " CurrentRankStrict")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " MinimumRankStrict")
	
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " DefaultRankTop")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " CurrentRankTop")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " MinimumRankTop")
	
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " DefaultRankBottom")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " CurrentRankBottom")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " MinimumRankBottom")
	
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " AllowPermanentShameless")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " FemaleCorruption")
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " StrictNPCRules")
	
	UnsetIntValue(PermJsonName, "Female " + FemaleID + " ShynessMode")
	
	PermanentFemales -= 1
	SetIntValue(PermJsonName, "Total Permanent Females", PermanentFemales)
	
	Save(PermJsonName)
	
	ResizePermanentArray()
EndFunction

Function ResetFemale(Actor akFemale = None, Int FemaleID = -1)
	If akFemale == None && FemaleID < 0
		Logger.Log("<NPC Modesty Manager> [ResetFemale] ERROR - Both akFemale and FemaleID are invalid!")
		return
	ElseIf akFemale != None && FemaleID < 0
		FemaleID = FemaleActor.Find(akFemale)
	ElseIf akFemale == None && FemaleID >= 0
		akFemale = FemaleActor[FemaleID] as Actor
	EndIf
	
	CurrentRankStrict[FemaleID] = DefaultRankStrict[FemaleID]
	CurrentRankTop[FemaleID] = DefaultRankTop[FemaleID]
	CurrentRankBottom[FemaleID] = DefaultRankBottom[FemaleID]
	
	MinimumRankStrict[FemaleID] = 0
	MinimumRankTop[FemaleID] = 0
	MinimumRankBottom[FemaleID] = 0
	
	LastUpdateTime[FemaleID] = Utility.GetCurrentGameTime()
	
	akFemale.SetFactionRank(Core.ModestyFaction, DefaultRankStrict[FemaleID])
	akFemale.SetFactionRank(Core.TopModestyFaction, DefaultRankTop[FemaleID])
	akFemale.SetFactionRank(Core.BottomModestyFaction, DefaultRankBottom[FemaleID])
	
	If FemaleExists(akFemale, True) == True
		UpdatePermanent(akFemale, FemaleID)
	EndIf
EndFunction

Function UpdatePermanent(Actor akFemale, Int FemaleID)
	Int PermID = GetIntValue(PermJsonName, akFemale)
	
	SetIntValue(PermJsonName, "Female " + PermID + " CurrentRankStrict", CurrentRankStrict[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermID + " CurrentRankTop", CurrentRankTop[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermID + " CurrentRankBottom", CurrentRankBottom[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermID + " DefaultRankStrict", DefaultRankStrict[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermID + " DefaultRankTop", DefaultRankTop[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermID + " DefaultRankBottom", DefaultRankBottom[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermID + " MinimumRankStrict", MinimumRankStrict[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermID + " MinimumRankTop", MinimumRankTop[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermID + " MinimumRankBottom", MinimumRankBottom[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermID + " AllowPermanentShameless", AllowPermanentShameless[FemaleID])
	SetIntValue(PermJsonName, "Female " + PermID + " FemaleCorruption", FemaleCorruption[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermID + " StrictNPCRules", StrictNPCRules[FemaleID])
	
	SetIntValue(PermJsonName, "Female " + PermID + " ShynessMode", ShynessMode[FemaleID])
	
	Save(PermJsonName)
EndFunction

Function TweakFemale(Actor akFemale, Int FemaleID, Int StrictRank, Int TopRank, Int BottomRank, Int MinimumStrict, Int MinimumTop, Int MinimumBottom, Bool EnablePermShame, Bool EnableCorrupt, Bool MakeDefault, Bool IsStrict, Bool IsBlocked)
	akFemale.SetFactionRank(Core.ModestyFaction, StrictRank)
	akFemale.SetFactionRank(Core.TopModestyFaction, TopRank)
	akFemale.SetFactionRank(Core.BottomModestyFaction, BottomRank)
	
	ModestyTimer0[FemaleID] = 0
	ModestyTimer1[FemaleID] = 0
	ModestyTimer2[FemaleID] = 0
	ModestyTimer3[FemaleID] = 0
	ModestyTimer4[FemaleID] = 0
	ModestyTimer5[FemaleID] = 0
	ModestyTimer6[FemaleID] = 0
	
	TopModestyTimer0[FemaleID] = 0
	TopModestyTimer1[FemaleID] = 0
	TopModestyTimer2[FemaleID] = 0
	TopModestyTimer3[FemaleID] = 0
	
	BottomModestyTimer0[FemaleID] = 0
	BottomModestyTimer1[FemaleID] = 0
	BottomModestyTimer2[FemaleID] = 0
	BottomModestyTimer3[FemaleID] = 0
	
	CurrentRankStrict[FemaleID] = StrictRank
	CurrentRankTop[FemaleID] = TopRank
	CurrentRankBottom[FemaleID] = BottomRank
	
	MinimumRankStrict[FemaleID] = MinimumStrict
	MinimumRankTop[FemaleID] = MinimumTop
	MinimumRankBottom[FemaleID] = MinimumBottom
	
	AllowPermanentShameless[FemaleID] = EnablePermShame as Int
	FemaleCorruption[FemaleID] = EnableCorrupt as Int
	StrictNPCRules[FemaleID] = IsStrict as Int
	UpgradeBlocked[FemaleID] = IsBlocked as Int
	
	LastUpdateTime[FemaleID] = Utility.GetCurrentGameTime()
	
	If MakeDefault == True
		DefaultRankStrict[FemaleID] = StrictRank
		DefaultRankTop[FemaleID] = TopRank
		DefaultRankBottom[FemaleID] = BottomRank
	EndIf
	
	If FemaleExists(akFemale, True) == True
		UpdatePermanent(akFemale, FemaleID)
	EndIf
EndFunction

Function WipeLastUpdateTimes()
	Float WipeTime = Utility.GetCurrentGameTime()
	Int Index = 0
	While Index < TrackedFemales
		LastUpdateTime[Index] = WipeTime
		Index += 1
	EndWhile
EndFunction

Function ProcessNPCModesty(Actor akFemale)
	ActorBase femaleBase = akFemale.GetActorBase()
	String akName = femaleBase.GetName()
	
	Int FemaleID = FemaleActor.Find(akFemale)
	
	Int UpgradeTime = (Config.ImmodestyTimeNeeded * 24)
	Bool Corruption = (FemaleCorruption[FemaleID] as Bool)
	Bool PermShame = (AllowPermanentShameless[FemaleID] as Bool)
	Bool Strict = StrictNPCRules[FemaleID] as Bool
	
	Float CurrentGameTime = Utility.GetCurrentGameTime()
	Int RequiredIterations = ((LastUpdateTime[FemaleID] - CurrentGameTime) / 0.041667) as Int
	Float RealTimeStart = Utility.GetCurrentRealTime()
	
	If RequiredIterations > 168
		RequiredIterations = 168
	EndIf
	
	Logger.Log("<NPC Modesty Manager> [ProcessNPCModesty] Starting " + RequiredIterations + " Iterations for " + akFemale + " " + akName)
	
	While RequiredIterations > 0
		If Strict == True
			StrictNPCModesty(akFemale, akName, FemaleID, UpgradeTime, Corruption, PermShame)
		Else
			TopNPCModesty(akFemale, akName, FemaleID, UpgradeTime, Corruption, PermShame)
			BottomNPCModesty(akFemale, akName, FemaleID, UpgradeTime, Corruption, PermShame)
		EndIf
		RequiredIterations -= 1
	EndWhile
	
	Float TimeTaken = (Utility.GetCurrentRealTime() - RealTimeStart)
	Logger.Log("<NPC Modesty Manager> [ProcessNPCModesty] Iterations for " + akFemale + " " + akName + " took " + TimeTaken + " seconds")
	
	CurrentRankStrict[FemaleID] = akFemale.GetFactionRank(Core.ModestyFaction)
	CurrentRankTop[FemaleID] = akFemale.GetFactionRank(Core.TopModestyFaction)
	CurrentRankBottom[FemaleID] = akFemale.GetFactionRank(Core.BottomModestyFaction)
	
	If FemaleExists(akFemale, True) == True
		UpdatePermanent(akFemale, FemaleID)
	EndIf
	
	LastUpdateTime[FemaleID] = CurrentGameTime
EndFunction

Function UpdateShyness(Actor akFemale)
	If akFemale == None
		Logger.Log("<NPC Modesty Manager> [UpdateShyness] Error: akFemale is None")
		return
	EndIf
	
	Int FemaleID = FemaleActor.Find(akFemale)
	
	If FemaleID < 0
		Logger.Log("<NPC Modesty Manager> [UpdateShyness] Error: " + akFemale + " doesn't exist in the Tracked Females list!")
		return
	EndIf
	
	Int Index = 0
	Int MaleShy = 0
	Int FemaleShy = 0
	Int ShyMode = 0
	
	If Config.NPCShySex == "Males"
		MaleShy = 1
	ElseIf Config.NPCShySex == "Females"
		FemaleShy = 1
		ShyMode = 1
	ElseIf Config.NPCShySex == "Both"
		MaleShy = 1
		FemaleShy = 1
		ShyMode = 2
	EndIf
	
	If ShynessMode[FemaleID] != ShyMode
		akFemale.SetFactionRank(Core.ShyWithMale, MaleShy)
		akFemale.SetFactionRank(Core.ShyWithFemale, FemaleShy)
		ShynessMode[FemaleID] = ShyMode
		If FemaleExists(akFemale, True) == True
			UpdatePermanent(akFemale, Index)
		EndIf
	EndIf
EndFunction

Function StrictNPCModesty(Actor akFemale, String akName, Int FemaleID, Int UpgradeTime, Bool Corruption, Bool PermShame)
	Int ModestyRank = akFemale.GetFactionRank(Core.ModestyFaction)
	Int MinimumModesty = MinimumRankStrict[FemaleID]
	
	Bool IsShowingBra = akFemale.GetFactionRank(Core.AND_ShowingBraFaction) as Bool
	Bool IsShowingChest = akFemale.GetFactionRank(Core.AND_ShowingChestFaction) as Bool
	Bool IsTopless = akFemale.GetFactionRank(Core.AND_ToplessFaction) as Bool
	
	Bool IsShowingUnderwear = akFemale.GetFactionRank(Core.AND_ShowingUnderwearFaction) as Bool
	Bool IsShowingGenitals = akFemale.GetFactionRank(Core.AND_ShowingGenitalsFaction) as Bool
	Bool IsBottomless = akFemale.GetFactionRank(Core.AND_BottomlessFaction) as Bool
	
	Bool IsNude = akFemale.GetFactionRank(Core.AND_NudeActorFaction) as Bool
	
	If MinimumModesty > ModestyRank
		NPCModestyRankChange(akFemale, akName, FemaleID, MinimumModesty)
		return
	EndIf
	
	If ModestyRank <= 0
		Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " Rank is 0")
		If IsShowingBra == True && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If ModestyTimer0[FemaleID] < UpgradeTime
				If (UpgradeBlocked[FemaleID] as Bool) == False
					ModestyTimer0[FemaleID] = ModestyTimer0[FemaleID] + 1
				EndIf
			Else
				CurrentRankStrict[FemaleID] = 1
				NPCModestyRankChange(akFemale, akName, FemaleID, 1)
			EndIf
		ElseIf IsShowingBra == False && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If Corruption == False
				If ModestyTimer0[FemaleID] > 0
					ModestyTimer0[FemaleID] = ModestyTimer0[FemaleID] - 1
				EndIf
			Else
				Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC Corruption Active. Cannot Downgrade " + akFemale + " " + akName)
			EndIf
		EndIf
		
	ElseIf ModestyRank == 1
		Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " Rank is 1")
		If IsShowingUnderwear == True && IsShowingGenitals == False && IsShowingChest == False
			If ModestyTimer1[FemaleID] < UpgradeTime
				If (UpgradeBlocked[FemaleID] as Bool) == False
					ModestyTimer1[FemaleID] = ModestyTimer1[FemaleID] + 1
				EndIf
			Else
				CurrentRankStrict[FemaleID] = 2
				NPCModestyRankChange(akFemale, akName, FemaleID, 2)
			EndIf
		ElseIf IsShowingBra == False && IsShowingChest == False && IsShowingUnderwear == False && IsShowingGenitals == False
			If Corruption == False
				NPCModestyDowngrade(akFemale, akName, FemaleID, 1, UpgradeTime, MinimumModesty)
			Else
				Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC Corruption Active. Cannot Downgrade " + akFemale + " " + akName)
			EndIf
		EndIf
	
	ElseIf ModestyRank == 2
		Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " Rank is 2")
		If IsShowingChest == True && IsTopless == False && IsShowingGenitals == False
			If ModestyTimer2[FemaleID] < UpgradeTime
				If (UpgradeBlocked[FemaleID] as Bool) == False
					ModestyTimer2[FemaleID] = ModestyTimer2[FemaleID] + 1
				EndIf
			Else
				CurrentRankStrict[FemaleID] = 3
				NPCModestyRankChange(akFemale, akName, FemaleID, 3)
			EndIf
		ElseIf IsShowingUnderwear == False && IsShowingGenitals == False && IsShowingChest == False
			If Corruption == False
				NPCModestyDowngrade(akFemale, akName, FemaleID, 2, UpgradeTime, MinimumModesty)
			Else
				Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC Corruption Active. Cannot Downgrade " + akFemale + " " + akName)
			EndIf
		EndIf
		
	ElseIf ModestyRank == 3
		Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " Rank is 3")
		If IsShowingGenitals == True && IsBottomless == False && IsTopless == False
			If ModestyTimer3[FemaleID] < UpgradeTime
				If (UpgradeBlocked[FemaleID] as Bool) == False
					ModestyTimer3[FemaleID] = ModestyTimer3[FemaleID] + 1
				EndIf
			Else
				CurrentRankStrict[FemaleID] = 4
				NPCModestyRankChange(akFemale, akName, FemaleID, 4)
			EndIf
		ElseIf IsShowingChest == False && IsShowingGenitals == False
			If Corruption == False
				NPCModestyDowngrade(akFemale, akName, FemaleID, 3, UpgradeTime, MinimumModesty)
			Else
				Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC Corruption Active. Cannot Downgrade " + akFemale + " " + akName)
			EndIf
		EndIf
		
	ElseIf ModestyRank == 4
		Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " Rank is 4")
		If IsTopless == True && IsBottomless == False
			If ModestyTimer4[FemaleID] < UpgradeTime
				If (UpgradeBlocked[FemaleID] as Bool) == False
					ModestyTimer4[FemaleID] = ModestyTimer4[FemaleID] + 1
				EndIf
			Else
				CurrentRankStrict[FemaleID] = 5
				NPCModestyRankChange(akFemale, akName, FemaleID, 5)
			EndIf
		ElseIf IsShowingGenitals == False && IsTopless == False
			If Corruption == False
				NPCModestyDowngrade(akFemale, akName, FemaleID, 4, UpgradeTime, MinimumModesty)
			Else
				Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC Corruption Active. Cannot Downgrade " + akFemale + " " + akName)
			EndIf
		EndIf
		
	ElseIf ModestyRank == 5
		Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " Rank is 5")
		If IsBottomless == True
			If ModestyTimer5[FemaleID] < UpgradeTime
				If (UpgradeBlocked[FemaleID] as Bool) == False
					ModestyTimer5[FemaleID] = ModestyTimer5[FemaleID] + 1
				EndIf
			Else
				CurrentRankStrict[FemaleID] = 6
				NPCModestyRankChange(akFemale, akName, FemaleID, 6)
			EndIf
		ElseIf IsTopless == False
			If Corruption == False
				NPCModestyDowngrade(akFemale, akName, FemaleID, 5, UpgradeTime, MinimumModesty)
			Else
				Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC Corruption Active. Cannot Downgrade " + akFemale + " " + akName)
			EndIf
		EndIf
		
	ElseIf ModestyRank == 6
		Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " Rank is 6")
		If IsTopless == False && IsBottomless == False
			If Corruption == False
				NPCModestyDowngrade(akFemale, akName, FemaleID, 6, UpgradeTime, MinimumModesty)
			Else
				Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC Corruption Active. Cannot Downgrade " + akFemale + " " + akName)
			EndIf
		ElseIf IsNude == True
			If (UpgradeBlocked[FemaleID] as Bool) == False
				ModestyTimer6[FemaleID] = ModestyTimer6[FemaleID] + 1
			EndIf
			
			If ModestyTimer6[FemaleID] > 0 && PermShame == False
				ModestyTimer6[FemaleID] = 0
			ElseIf ModestyTimer6[FemaleID] >= (UpgradeTime * 2)
				ModestyTimer6[FemaleID] = (UpgradeTime * 2)
				CurrentRankStrict[FemaleID] = 7
				NPCModestyRankChange(akFemale, akName, FemaleID, 7)
			EndIf
		EndIf
	ElseIf ModestyRank > 6
		If PermShame == True
			Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] NPC " + akFemale + " " + akName + " is Permanently Shameless")
		Else
			NPCModestyRankChange(akFemale, akName, FemaleID, 6)
		EndIf
	EndIf
	
	Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " ModestyTimer0 = " + ModestyTimer0[FemaleID])
	Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " ModestyTimer1 = " + ModestyTimer1[FemaleID])
	Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " ModestyTimer2 = " + ModestyTimer2[FemaleID])
	Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " ModestyTimer3 = " + ModestyTimer3[FemaleID])
	Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " ModestyTimer4 = " + ModestyTimer4[FemaleID])
	Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " ModestyTimer5 = " + ModestyTimer5[FemaleID])
	Logger.Log("<NPC Modesty Manager> [StrictNPCModesty] " + akFemale + " " + akName + " ModestyTimer6 = " + ModestyTimer6[FemaleID])
EndFunction

Function NPCModestyDowngrade(Actor akFemale, String akName, Int FemaleID, Int Rank, Int UpgradeTime, Int MinimumRank)
	Int DowngradeTime = (0 - UpgradeTime)
	
	If akFemale.GetFactionRank(Core.AND_ShowingBraFaction) == 0 && akFemale.GetFactionRank(Core.AND_ShowingUnderwearFaction) == 0\ 
	&& akFemale.GetFactionRank(Core.AND_ShowingChestFaction) == 0 && akFemale.GetFactionRank(Core.AND_ShowingGenitalsFaction) == 0
		Int CurrentTimer = 0
		
		If Rank == 1
			ModestyTimer1[FemaleID] = ModestyTimer1[FemaleID] - 1
			If ModestyTimer1[FemaleID] <= DowngradeTime
				ModestyTimer1[FemaleID] = DowngradeTime
				CurrentRankStrict[FemaleID] = 0
				NPCModestyRankChange(akFemale, akName, FemaleID, 0)
			EndIf
		ElseIf Rank == 2
			ModestyTimer2[FemaleID] = ModestyTimer2[FemaleID] - 1
			If ModestyTimer2[FemaleID] <= DowngradeTime
				ModestyTimer2[FemaleID] = DowngradeTime
				CurrentRankStrict[FemaleID] = 1
				NPCModestyRankChange(akFemale, akName, FemaleID, 1)
			EndIf
		ElseIf Rank == 3
			ModestyTimer3[FemaleID] = ModestyTimer3[FemaleID] - 1
			If ModestyTimer3[FemaleID] <= DowngradeTime
				ModestyTimer3[FemaleID] = DowngradeTime
				CurrentRankStrict[FemaleID] = 2
				NPCModestyRankChange(akFemale, akName, FemaleID, 2)
			EndIf
		ElseIf Rank == 4
			ModestyTimer4[FemaleID] = ModestyTimer4[FemaleID] - 1
			If ModestyTimer4[FemaleID] <= DowngradeTime
				ModestyTimer4[FemaleID] = DowngradeTime
				CurrentRankStrict[FemaleID] = 3
				NPCModestyRankChange(akFemale, akName, FemaleID, 3)
			EndIf
		ElseIf Rank == 5
			ModestyTimer5[FemaleID] = ModestyTimer5[FemaleID] - 1
			If ModestyTimer5[FemaleID] <= DowngradeTime
				ModestyTimer5[FemaleID] = DowngradeTime
				CurrentRankStrict[FemaleID] = 4
				NPCModestyRankChange(akFemale, akName, FemaleID, 4)
			EndIf
		ElseIf Rank == 6
			ModestyTimer6[FemaleID] = ModestyTimer6[FemaleID] - 1
			If ModestyTimer6[FemaleID] <= DowngradeTime
				ModestyTimer6[FemaleID] = DowngradeTime
				CurrentRankStrict[FemaleID] = 5
				NPCModestyRankChange(akFemale, akName, FemaleID, 5)
			EndIf
		EndIf
	EndIf
	
	Logger.Log("<NPC Modesty Manager> [NPCModestyDowngrade] " + akFemale + " " + akName + " ModestyTimer0 = " + ModestyTimer0[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCModestyDowngrade] " + akFemale + " " + akName + " ModestyTimer1 = " + ModestyTimer1[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCModestyDowngrade] " + akFemale + " " + akName + " ModestyTimer2 = " + ModestyTimer2[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCModestyDowngrade] " + akFemale + " " + akName + " ModestyTimer3 = " + ModestyTimer3[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCModestyDowngrade] " + akFemale + " " + akName + " ModestyTimer4 = " + ModestyTimer4[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCModestyDowngrade] " + akFemale + " " + akName + " ModestyTimer5 = " + ModestyTimer5[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCModestyDowngrade] " + akFemale + " " + akName + " ModestyTimer6 = " + ModestyTimer6[FemaleID])
EndFunction

Function TopNPCModesty(Actor akFemale, String akName, Int FemaleID, Int UpgradeTime, Bool Corruption, Bool PermShame)
	Int TopModestyRank = akFemale.GetFactionRank(Core.TopModestyFaction)
	Int MinTopRank = MinimumRankTop[FemaleID]
	
	Bool IsShowingBra = akFemale.GetFactionRank(Core.AND_ShowingBraFaction) as Bool
	Bool IsShowingChest = akFemale.GetFactionRank(Core.AND_ShowingChestFaction) as Bool
	Bool IsTopless = akFemale.GetFactionRank(Core.AND_ToplessFaction) as Bool
	
	If MinTopRank > TopModestyRank
		NPCTopModestyRankChange(akFemale, akName, FemaleID, MinTopRank)
		return
	EndIf
	
	If TopModestyRank <= 0 && (IsShowingBra == True && IsShowingChest == False && IsTopless == False)
		If (UpgradeBlocked[FemaleID] as Bool) == False
			TopModestyTimer0[FemaleID] = TopModestyTimer0[FemaleID] + (TopModestyTimer1[FemaleID]/2) + 1
		EndIf
	ElseIf TopModestyRank <= 1 && (IsShowingChest == True && IsTopless == False)
		If (UpgradeBlocked[FemaleID] as Bool) == False
			TopModestyTimer1[FemaleID] = TopModestyTimer1[FemaleID] + (TopModestyTimer2[FemaleID]/2) + 1
			TopModestyTimer0[FemaleID] = TopModestyTimer0[FemaleID] + (TopModestyTimer1[FemaleID]/2)
		EndIf
	ElseIf TopModestyRank == 1 && (IsShowingBra == True && IsShowingChest == False && IsTopless == False)
		;Do Nothing
	ElseIf TopModestyRank <= 2 && IsTopless == True
		If (UpgradeBlocked[FemaleID] as Bool) == False
			TopModestyTimer2[FemaleID] = TopModestyTimer2[FemaleID] + 1
			TopModestyTimer1[FemaleID] = TopModestyTimer1[FemaleID] + (TopModestyTimer2[FemaleID]/2)
			TopModestyTimer0[FemaleID] = TopModestyTimer0[FemaleID] + (TopModestyTimer1[FemaleID]/2)
		EndIf
	ElseIf TopModestyRank == 2 && (IsShowingChest == True && IsTopless == False)
		;Do Nothing
	ElseIf TopModestyRank == 3 && IsTopless == True
		If (UpgradeBlocked[FemaleID] as Bool) == False
			TopModestyTimer3[FemaleID] = TopModestyTimer3[FemaleID] + 1
		EndIf
		
		If TopModestyTimer3[FemaleID] > 0 && PermShame == False
			TopModestyTimer3[FemaleID] = 0
		EndIf
	ElseIf TopModestyRank == 4 && PermShame == False
		NPCTopModestyRankChange(akFemale, akName, FemaleID, 3)
	ElseIf TopModestyRank == 4 && PermShame == True
		return
	Else
		If Corruption == False
			NPCTopModestyDowngrade(akFemale, akName, FemaleID, UpgradeTime, TopModestyRank, IsShowingBra, IsShowingChest, IsTopless)
		Else
			Logger.Log("<NPC Modesty Manager> [TopNPCModesty] NPC Corruption Active. Cannot Downgrade.")
		EndIf
		return
	EndIf
	
	If TopModestyRank <= 0
		If TopModestyTimer0[FemaleID] >= UpgradeTime
			CurrentRankTop[FemaleID] = 1
			NPCTopModestyRankChange(akFemale, akName, FemaleID, 1)
		EndIf
	ElseIf TopModestyRank == 1
		If TopModestyTimer1[FemaleID] >= UpgradeTime
			CurrentRankTop[FemaleID] = 2
			NPCTopModestyRankChange(akFemale, akName, FemaleID, 2)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer2[FemaleID] >= UpgradeTime
			CurrentRankTop[FemaleID] = 3
			NPCTopModestyRankChange(akFemale, akName, FemaleID, 3)
		EndIf
	ElseIf TopModestyRank == 3 && PermShame == True
		If TopModestyTimer3[FemaleID] >= (UpgradeTime * 2)
			CurrentRankTop[FemaleID] = 4
			NPCTopModestyRankChange(akFemale, akName, FemaleID, 4)
		EndIf
	EndIf
	
	Logger.Log("<NPC Modesty Manager> [TopNPCModesty] " + akFemale + " " + akName + " TopModestyTimer0 = " + TopModestyTimer0[FemaleID])
	Logger.Log("<NPC Modesty Manager> [TopNPCModesty] " + akFemale + " " + akName + " TopModestyTimer1 = " + TopModestyTimer1[FemaleID])
	Logger.Log("<NPC Modesty Manager> [TopNPCModesty] " + akFemale + " " + akName + " TopModestyTimer2 = " + TopModestyTimer2[FemaleID])
	Logger.Log("<NPC Modesty Manager> [TopNPCModesty] " + akFemale + " " + akName + " TopModestyTimer3 = " + TopModestyTimer3[FemaleID])
EndFunction

Function NPCTopModestyDowngrade(Actor akFemale, String akName, Int FemaleID, Int UpgradeTime, Int TopModestyRank, Bool IsShowingBra, Bool IsShowingChest, Bool IsTopless)
	Int DowngradeTime = (0 - UpgradeTime)
	
	If TopModestyRank <= 0
		TopModestyTimer0[FemaleID] = TopModestyTimer0[FemaleID] - 1
		TopModestyTimer1[FemaleID] = TopModestyTimer1[FemaleID] - 1
		TopModestyTimer2[FemaleID] = TopModestyTimer2[FemaleID] - 1
		
		If TopModestyTimer0[FemaleID] < 0
			TopModestyTimer0[FemaleID] = 0
		EndIf
		
		If TopModestyTimer1[FemaleID] < 0
			TopModestyTimer1[FemaleID] = 0
		EndIf
		
		If TopModestyTimer2[FemaleID] < 0
			TopModestyTimer2[FemaleID] = 0
		EndIf
	ElseIf TopModestyRank == 1
		TopModestyTimer1[FemaleID] = TopModestyTimer1[FemaleID] - 1
		TopModestyTimer2[FemaleID] = TopModestyTimer2[FemaleID] - 1
	ElseIf TopModestyRank == 2
		TopModestyTimer2[FemaleID] = TopModestyTimer2[FemaleID] - 1
	ElseIf TopModestyRank == 3
		TopModestyTimer3[FemaleID] = TopModestyTimer3[FemaleID] - 1
	Else
		Logger.Log("<NPC Modesty Manager> [NPCTopModestyDowngrade] Could not upgrade nor downgrade NPC Top Modesty.")
		return
	EndIf
	
	If TopModestyRank == 1
		If TopModestyTimer1[FemaleID] <= DowngradeTime
			CurrentRankTop[FemaleID] = 0
			NPCTopModestyRankChange(akFemale, akName, FemaleID, 0)
		EndIf
	ElseIf TopModestyRank == 2
		If TopModestyTimer2[FemaleID] <= DowngradeTime
			CurrentRankTop[FemaleID] = 1
			NPCTopModestyRankChange(akFemale, akName, FemaleID, 1)
		EndIf
	ElseIf TopModestyRank == 3
		If TopModestyTimer3[FemaleID] <= DowngradeTime
			CurrentRankTop[FemaleID] = 2
			NPCTopModestyRankChange(akFemale, akName, FemaleID, 2)
		EndIf
	EndIf
	
	Logger.Log("<NPC Modesty Manager> [NPCTopModestyDowngrade] " + akFemale + " " + akName + " TopModestyTimer0 = " + TopModestyTimer0[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCTopModestyDowngrade] " + akFemale + " " + akName + " TopModestyTimer1 = " + TopModestyTimer1[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCTopModestyDowngrade] " + akFemale + " " + akName + " TopModestyTimer2 = " + TopModestyTimer2[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCTopModestyDowngrade] " + akFemale + " " + akName + " TopModestyTimer3 = " + TopModestyTimer3[FemaleID])
EndFunction

Function BottomNPCModesty(Actor akFemale, String akName, Int FemaleID, Int UpgradeTime, Bool Corruption, Bool PermShame)
	Int BottomModestyRank = akFemale.GetFactionRank(Core.BottomModestyFaction)
	
	Bool IsShowingUnderwear = akFemale.GetFactionRank(Core.AND_ShowingUnderwearFaction) as Bool
	Bool IsShowingGenitals = akFemale.GetFactionRank(Core.AND_ShowingGenitalsFaction) as Bool
	Bool IsBottomless = akFemale.GetFactionRank(Core.AND_BottomlessFaction) as Bool
	
	If BottomModestyRank <= 0 && (IsShowingUnderwear == True && IsShowingGenitals == False && IsBottomless == False)
		If (UpgradeBlocked[FemaleID] as Bool) == False
			BottomModestyTimer0[FemaleID] = BottomModestyTimer0[FemaleID] + (BottomModestyTimer1[FemaleID]/2) + 1
		EndIf
	ElseIf BottomModestyRank <= 1 && (IsShowingGenitals == True && IsBottomless == False)
		If (UpgradeBlocked[FemaleID] as Bool) == False
			BottomModestyTimer1[FemaleID] = BottomModestyTimer1[FemaleID] + (BottomModestyTimer2[FemaleID]/2) + 1
			BottomModestyTimer0[FemaleID] = BottomModestyTimer0[FemaleID] + (BottomModestyTimer1[FemaleID]/2)
		EndIf
	ElseIf BottomModestyRank == 1 && (IsShowingUnderwear == True && IsShowingGenitals == False && IsBottomless == False)
		;Do Nothing
	ElseIf BottomModestyRank <= 2 && IsBottomless == True
		If (UpgradeBlocked[FemaleID] as Bool) == False
			BottomModestyTimer2[FemaleID] = BottomModestyTimer2[FemaleID] + 1
			BottomModestyTimer1[FemaleID] = BottomModestyTimer1[FemaleID] + (BottomModestyTimer2[FemaleID]/2)
			BottomModestyTimer0[FemaleID] = BottomModestyTimer0[FemaleID] + (BottomModestyTimer1[FemaleID]/2)
		EndIf
	ElseIf BottomModestyRank == 2 && (IsShowingGenitals == True && IsBottomless == False)
		;Do Nothing
	ElseIf BottomModestyRank == 3 && IsBottomless == True
		If (UpgradeBlocked[FemaleID] as Bool) == False
			BottomModestyTimer3[FemaleID] = BottomModestyTimer3[FemaleID] + 1
		EndIf
		
		If BottomModestyTimer3[FemaleID] > 0 && PermShame == False
			BottomModestyTimer3[FemaleID] = 0
		EndIf
	ElseIf BottomModestyRank == 4 && PermShame == False
		NPCBottomModestyRankChange(akFemale, akName, FemaleID, 3)
	ElseIf BottomModestyRank == 4 && PermShame == True
		return
	Else
		If Corruption == False
			NPCBottomModestyDowngrade(akFemale, akName, FemaleID, UpgradeTime, BottomModestyRank, IsShowingUnderwear, IsShowingGenitals, IsBottomless)
		Else
			Logger.Log("<NPC Modesty Manager> [BottomNPCModesty] NPC Corruption Active. Cannot Downgrade.")
		EndIf
		return
	EndIf
	
	If BottomModestyRank <= 0
		If BottomModestyTimer0[FemaleID] >= UpgradeTime
			CurrentRankBottom[FemaleID] = 1
			NPCBottomModestyRankChange(akFemale, akName, FemaleID, 1)
		EndIf
	ElseIf BottomModestyRank == 1
		If BottomModestyTimer1[FemaleID] >= UpgradeTime
			CurrentRankBottom[FemaleID] = 2
			NPCBottomModestyRankChange(akFemale, akName, FemaleID, 2)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer2[FemaleID] >= UpgradeTime
			CurrentRankBottom[FemaleID] = 3
			NPCBottomModestyRankChange(akFemale, akName, FemaleID, 3)
		EndIf
	ElseIf BottomModestyRank == 3 && PermShame == True
		If BottomModestyTimer3[FemaleID] >= (UpgradeTime * 2)
			CurrentRankBottom[FemaleID] = 4
			NPCBottomModestyRankChange(akFemale, akName, FemaleID, 4)
		EndIf
	EndIf
	
	Logger.Log("<NPC Modesty Manager> [BottomNPCModesty] " + akFemale + " " + akName + " BottomModestyTimer0 = " + BottomModestyTimer0[FemaleID])
	Logger.Log("<NPC Modesty Manager> [BottomNPCModesty] " + akFemale + " " + akName + " BottomModestyTimer1 = " + BottomModestyTimer1[FemaleID])
	Logger.Log("<NPC Modesty Manager> [BottomNPCModesty] " + akFemale + " " + akName + " BottomModestyTimer2 = " + BottomModestyTimer2[FemaleID])
	Logger.Log("<NPC Modesty Manager> [BottomNPCModesty] " + akFemale + " " + akName + " BottomModestyTimer3 = " + BottomModestyTimer3[FemaleID])
EndFunction

Function NPCBottomModestyDowngrade(Actor akFemale, String akName, Int FemaleID, Int UpgradeTime, Int BottomModestyRank, Bool IsShowingUnderwear, Bool IsShowingGenitals, Bool IsBottomless)
	Int DowngradeTime = (0 - UpgradeTime)
	
	If BottomModestyRank <= 0 && (IsShowingUnderwear == False && IsShowingGenitals == False && IsBottomless == False)
		BottomModestyTimer0[FemaleID] = BottomModestyTimer0[FemaleID] - 1
		BottomModestyTimer1[FemaleID] = BottomModestyTimer1[FemaleID] - 1
		BottomModestyTimer2[FemaleID] = BottomModestyTimer2[FemaleID] - 1
		
		If BottomModestyTimer0[FemaleID] < 0
			BottomModestyTimer0[FemaleID] = 0
		EndIf
		
		If BottomModestyTimer1[FemaleID] < 0
			BottomModestyTimer1[FemaleID] = 0
		EndIf
		
		If BottomModestyTimer2[FemaleID] < 0
			BottomModestyTimer2[FemaleID] = 0
		EndIf
	ElseIf BottomModestyRank == 1
		BottomModestyTimer1[FemaleID] = BottomModestyTimer1[FemaleID] - 1
		BottomModestyTimer2[FemaleID] = BottomModestyTimer2[FemaleID] - 1
	ElseIf BottomModestyRank == 2
		BottomModestyTimer2[FemaleID] = BottomModestyTimer2[FemaleID] - 1
	ElseIf BottomModestyRank == 3
		BottomModestyTimer3[FemaleID] = BottomModestyTimer3[FemaleID] - 1
	Else
		Logger.Log("<NPC Modesty Manager> [NPCBottomModestyDowngrade] Could not upgrade nor downgrade NPC Bottom Modesty.")
		return
	EndIf
	
	If BottomModestyRank == 1
		If BottomModestyTimer1[FemaleID] <= DowngradeTime
			CurrentRankBottom[FemaleID] = 0
			NPCBottomModestyRankChange(akFemale, akName, FemaleID, 0)
		EndIf
	ElseIf BottomModestyRank == 2
		If BottomModestyTimer2[FemaleID] <= DowngradeTime
			CurrentRankBottom[FemaleID] = 1
			NPCBottomModestyRankChange(akFemale, akName, FemaleID, 1)
		EndIf
	ElseIf BottomModestyRank == 3
		If BottomModestyTimer3[FemaleID] <= DowngradeTime
			CurrentRankBottom[FemaleID] = 2
			NPCBottomModestyRankChange(akFemale, akName, FemaleID, 2)
		EndIf
	EndIf
	
	Logger.Log("<NPC Modesty Manager> [NPCBottomModestyDowngrade] " + akFemale + " " + akName + " BottomModestyTimer0 = " + BottomModestyTimer0[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCBottomModestyDowngrade] " + akFemale + " " + akName + " BottomModestyTimer1 = " + BottomModestyTimer1[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCBottomModestyDowngrade] " + akFemale + " " + akName + " BottomModestyTimer2 = " + BottomModestyTimer2[FemaleID])
	Logger.Log("<NPC Modesty Manager> [NPCBottomModestyDowngrade] " + akFemale + " " + akName + " BottomModestyTimer3 = " + BottomModestyTimer3[FemaleID])
EndFunction

Function NPCModestyRankChange(Actor akFemale, String akName, Int FemaleID, Int Rank)
	akFemale.SetFactionRank(Core.ModestyFaction, Rank)
	ModestyTimer0[FemaleID] = 0
	ModestyTimer1[FemaleID] = 0
	ModestyTimer2[FemaleID] = 0
	ModestyTimer3[FemaleID] = 0
	ModestyTimer4[FemaleID] = 0
	ModestyTimer5[FemaleID] = 0
	ModestyTimer6[FemaleID] = 0
	
	If Rank == 0
		Debug.Notification(akName + "'s Modesty has become Modest")
	ElseIf Rank == 1
		Debug.Notification(akName + "'s Modesty has become Reasonable")
	ElseIf Rank == 2
		Debug.Notification(akName + "'s Modesty has become Relaxed")
	ElseIf Rank == 3
		Debug.Notification(akName + "'s Modesty has become Comfortable")
	ElseIf Rank == 4
		Debug.Notification(akName + "'s Modesty has become Tease")
	ElseIf Rank == 5
		Debug.Notification(akName + "'s Modesty has become Brazen")
	ElseIf Rank == 6
		Debug.Notification(akName + "'s Modesty has become Shameless")
	ElseIf Rank == 7
		Debug.Notification(akName + "'s Modesty has become Permanently Shameless")
	EndIf
EndFunction

Function NPCTopModestyRankChange(Actor akFemale, String akName, Int FemaleID, Int Rank)
	akFemale.SetFactionRank(Core.TopModestyFaction, Rank)
	TopModestyTimer0[FemaleID] = 0
	TopModestyTimer1[FemaleID] = 0
	TopModestyTimer2[FemaleID] = 0
	TopModestyTimer3[FemaleID] = 0
	
	If Rank == 0
		Debug.Notification(akName + "'s Top Modesty has become Shy")
	ElseIf Rank == 1
		Debug.Notification(akName + "'s Top Modesty has become Comfortable")
	ElseIf Rank == 2
		Debug.Notification(akName + "'s Top Modesty has become Bold")
	ElseIf Rank == 3
		Debug.Notification(akName + "'s Top Modesty has become Shameless")
	ElseIf Rank == 4
		Debug.Notification(akName + "'s Top Modesty has become Permanently Shameless")
	EndIf
EndFunction

Function NPCBottomModestyRankChange(Actor akFemale, String akName, Int FemaleID, Int Rank)
	akFemale.SetFactionRank(Core.BottomModestyFaction, Rank)
	BottomModestyTimer0[FemaleID] = 0
	BottomModestyTimer1[FemaleID] = 0
	BottomModestyTimer2[FemaleID] = 0
	BottomModestyTimer3[FemaleID] = 0
	
	If Rank == 0
		Debug.Notification(akName + "'s Bottom Modesty has become Shy")
	ElseIf Rank == 1
		Debug.Notification(akName + "'s Bottom Modesty has become Comfortable")
	ElseIf Rank == 2
		Debug.Notification(akName + "'s Bottom Modesty has become Bold")
	ElseIf Rank == 3
		Debug.Notification(akName + "'s Bottom Modesty has become Shameless")
	ElseIf Rank == 4
		Debug.Notification(akName + "'s Bottom Modesty has become Permanently Shameless")
	EndIf
EndFunction

;This Function is for testing only and checking the NPC Data status
Function DumpNPCData()
	Int Index = 0
	While Index < TrackedFemales
		SetFormValue(DumpJsonName, "Female " + Index, FemaleActor[Index])
		
		SetIntValue(DumpJsonName, "Female " + Index + " ModestyTimer0", ModestyTimer0[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " ModestyTimer1", ModestyTimer1[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " ModestyTimer2", ModestyTimer2[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " ModestyTimer3", ModestyTimer3[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " ModestyTimer4", ModestyTimer4[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " ModestyTimer5", ModestyTimer5[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " ModestyTimer6", ModestyTimer6[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " TopModestyTimer0", TopModestyTimer0[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " TopModestyTimer1", TopModestyTimer1[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " TopModestyTimer2", TopModestyTimer2[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " TopModestyTimer3", TopModestyTimer3[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " BottomModestyTimer0", BottomModestyTimer0[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " BottomModestyTimer1", BottomModestyTimer1[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " BottomModestyTimer2", BottomModestyTimer2[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " BottomModestyTimer3", BottomModestyTimer3[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " DefaultRankStrict", DefaultRankStrict[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " DefaultRankTop", DefaultRankTop[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " DefaultRankBottom", DefaultRankBottom[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " CurrentRankStrict", CurrentRankStrict[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " CurrentRankTop", CurrentRankTop[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " CurrentRankBottom", CurrentRankBottom[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " MinimumRankStrict", MinimumRankStrict[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " MinimumRankTop", MinimumRankTop[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " MinimumRankBottom", MinimumRankBottom[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " ShynessMode", ShynessMode[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " AllowPermanentShameless", AllowPermanentShameless[Index])
		SetIntValue(DumpJsonName, "Female " + Index + " FemaleCorruption", FemaleCorruption[Index])
		
		SetStringValue(DumpJsonName, "Female " + Index + " Name", FemaleName[Index])
		
		Index += 1
	EndWhile
	
	Index = 0
	While Index < PermanentFemales
		SetFormValue(DumpJsonName, "Permanent Female " + Index, PermanentFemaleActor[Index])
		
		Index += 1
	EndWhile
	
	Save(DumpJsonName)
EndFunction