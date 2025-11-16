ScriptName AND_KeybindManager extends Quest

AND_Core Property Core Auto
AND_PlayerScript Property PlayerScript Auto
AND_FemaleArmorScan Property FemaleScan Auto
AND_MaleArmorScan Property MaleScan Auto
AND_MCM Property Config Auto
AND_Logger Property Logger Auto

Bool Property CanFlash Auto Hidden

Int Property FlashChestCurtainKey = 0 AutoReadOnly ;FlashKey[0]
Int Property FlashPelvicCurtainKey = 1 AutoReadOnly ;FlashKey[1]
Int Property FlashAssCurtainKey = 2 AutoReadOnly ;FlashKey[2]
Int Property FixChestCurtainKey = 3 AutoReadOnly ;FlashKey[3]
Int Property FixPelvicCurtainKey = 4 AutoReadOnly ;FlashKey[4]
Int Property FixAssCurtainKey = 5 AutoReadOnly ;FlashKey[5]

Int[] Property RegisteredKeys Auto

Event OnInit()
	Startup()
EndEvent

Function Startup()
	RegisterForMenu("BarterMenu")
	RegisterForMenu("Book Menu")
	RegisterForMenu("Console")
	RegisterForMenu("Console Native UI Menu")
	RegisterForMenu("Container Menu")
	RegisterForMenu("Crafting Menu")
	RegisterForMenu("FavoritesMenu")
	RegisterForMenu("GiftMenu")
	RegisterForMenu("InventoryMenu")
	RegisterForMenu("Journal Menu")
	RegisterForMenu("LevelUp Menu")
	RegisterForMenu("Loading Menu")
	RegisterForMenu("Lockpicking Menu")
	RegisterForMenu("MagicMenu")
	RegisterForMenu("Main Menu")
	RegisterForMenu("MapMenu")
	RegisterForMenu("MessageBoxMenu")
	RegisterForMenu("Quantity Menu")
	RegisterForMenu("RaceSex Menu")
	RegisterForMenu("Sleep/Wait Menu")
	RegisterForMenu("Stats Menu")
	RegisterForMenu("Training Menu")
	RegisterForMenu("Tutorial Menu")
	
	RegisterForKey(RegisteredKeys[0])
	RegisterForKey(RegisteredKeys[1])
	RegisterForKey(RegisteredKeys[2])
	RegisterForKey(RegisteredKeys[3])
	RegisterForKey(RegisteredKeys[4])
	RegisterForKey(RegisteredKeys[5])
EndFunction

Event OnMenuOpen(String MenuName)
	CanFlash = False
	Logger.Log("<Keybind Manager> [OnMenuOpen] Opened Menu: " + MenuName + ". CanFlash is now: " + CanFlash)
EndEvent

Event OnMenuClose(String MenuName)
	CanFlash = True
	Logger.Log("<Keybind Manager> [OnMenuClose] Closed Menu: " + MenuName + ". CanFlash is now: " + CanFlash)
EndEvent

Event OnKeyDown(Int KeyCode)
	Logger.Log("<Keybind Manager> [OnKeyDown] Registered Key was pressed! Keycode is " + KeyCode)
	If CanFlash == True
		Logger.Log("<Keybind Manager> [OnKeyDown] Can Flash is TRUE")
		Int Index = RegisteredKeys.Find(KeyCode)

		If Index == FlashChestCurtainKey
			If PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtain) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtainT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtain_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtainT_Male) == True
				Core.TopCurtainRoll = 0
				Logger.Log("<Keybind Manager> [OnKeyDown] Flash Chest Curtain")
			Else
				Logger.Log("<Keybind Manager> [OnKeyDown] Not Wearing a Chest Curtain")
			EndIf
		ElseIf Index == FlashPelvicCurtainKey
			If PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtain) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtainT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtain_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtainT_Male) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT_Male) == True
				Core.PelvicCurtainRoll = 0
				Logger.Log("<Keybind Manager> [OnKeyDown] Flash Pelvic Curtain")
			Else
				Logger.Log("<Keybind Manager> [OnKeyDown] Not Wearing a Pelvic Curtain")
			EndIf
		ElseIf Index == FlashAssCurtainKey
			If PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtain) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtainT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtain_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtainT_Male) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT_Male) == True
				Core.AssCurtainRoll = 0
				Logger.Log("<Keybind Manager> [OnKeyDown] Flash Ass Curtain")
			Else
				Logger.Log("<Keybind Manager> [OnKeyDown] Not Wearing an Ass Curtain")
			EndIf
		ElseIf Index == FixChestCurtainKey
			If PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtain) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtainT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtain_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_ChestCurtainT_Male) == True
				Core.TopCurtainRoll = 101
				Logger.Log("<Keybind Manager> [OnKeyDown] Fix Chest Curtain")
			Else
				Logger.Log("<Keybind Manager> [OnKeyDown] Not Wearing a Chest Curtain")
			EndIf
		ElseIf Index == FixPelvicCurtainKey
			If PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtain) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtainT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtain_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_PelvicCurtainT_Male) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT_Male) == True
				Core.PelvicCurtainRoll = 101
				Logger.Log("<Keybind Manager> [OnKeyDown] Fix Pelvic Curtain")
			Else
				Logger.Log("<Keybind Manager> [OnKeyDown] Not Wearing a Pelvic Curtain")
			EndIf
		ElseIf Index == FixAssCurtainKey
			If PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtain) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtainT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtain_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_AssCurtainT_Male) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT) == True \
			|| PlayerScript.PlayerRef.WornHasKeyword(Core.AND_Miniskirt_Male) == True || PlayerScript.PlayerRef.WornHasKeyword(Core.AND_MiniskirtT_Male) == True
				Core.AssCurtainRoll = 101
				Logger.Log("<Keybind Manager> [OnKeyDown] Fix Ass Curtain")
			Else
				Logger.Log("<Keybind Manager> [OnKeyDown] Not Wearing an Ass Curtain")
			EndIf
		Else
			Logger.Log("<Keybind Manager> [OnKeyDown] CRITICAL ERROR!!! Registered Key was pressed but somehow not found in the RegisteredKeys Array!!! Something is broken!!!", True)
			Debug.MessageBox("ADVANCED NUDITY DETECTION CRITICAL ERROR!!! Registered Flash/Fix Key was pressed but somehow not found in the RegisteredKeys Array!!! Something is broken!!!")
			return
		EndIf
		
		If Core.PlayerBase.GetSex() == 0 ;Male
			Logger.Log("<Keybind Manager> [OnKeyDown] Send Male Scan")
			MaleScan.FullAnalyze()
			Config.SetMaleCoverage()
		Else
			Logger.Log("<Keybind Manager> [OnKeyDown] Send Female Scan")
			FemaleScan.FullAnalyze()
			Config.SetFemaleCoverage()
		EndIf
	Else
		Logger.Log("<Keybind Manager> [OnKeyDown] Can Flash is FALSE")
	EndIf
EndEvent

Function UpdateRegister(Int KeyIndex)
	Logger.Log("<Keybind Manager> [UpdateRegister] Update Key Index " + KeyIndex)
	UnregisterForKey(RegisteredKeys[KeyIndex])
	RegisteredKeys[KeyIndex] = Config.FlashKey[KeyIndex]
	Logger.Log("KeyCode is " + Config.FlashKey[KeyIndex])
	RegisterForKey(RegisteredKeys[KeyIndex])
EndFunction