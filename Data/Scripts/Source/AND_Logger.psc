ScriptName AND_Logger extends Quest

Import MiscUtil
Import PO3_SKSEFunctions

AND_MCM Property Config Auto

Int Property DuplicateNumber = 0 Auto Hidden

String Property LogName = "?" Auto Hidden
String Property LogPath = "Data/NymphoElf/Advanced Nudity Detection Logs/" AutoReadOnly
String Property Ext = ".txt" AutoReadOnly

Function DuplicateCheck()
	Bool FreshNameFound = False
	String FileName = ""
	While FreshNameFound == False
		FileName = LogPath + LogName + " " + DuplicateNumber + Ext
		If FileExists(FileName) == True
			DuplicateNumber += 1
		Else
			FreshNameFound = True
		EndIf
	EndWhile
EndFunction

Function Log(String LogString, Bool ForceToMainLog = False)
	If Config.AddToMainLog == True || ForceToMainLog == True
		Debug.Trace("{ADVANCED NUDITY DETECTION} - " + LogString)
	EndIf
	
	If Config.Logging == False
		return
	EndIf
	
	If LogName == "?" || LogName == ""
		Debug.Trace("AND LOGGER ERROR - No File Name Set")
		return
	EndIf
	
	Int[] RawTime = GetSystemTime()
	
	String month = RawTime[1]
	String day = RawTime[3]
	String hour = RawTime[4]
	String minute = RawTime[5]
	String second = RawTime[6]
	String millisecond = RawTime[7]
	
	If RawTime[1] < 10
		month = "0" + RawTime[1]
	EndIf
	
	If RawTime[3] < 10
		day = "0" + RawTime[3]
	EndIf
	
	If RawTime[4] < 10
		hour = "0" + RawTime[4]
	EndIf
	
	If RawTime[5] < 10
		minute = "0" + RawTime[5]
	EndIf
	
	If RawTime[6] < 10
		second = "0" + RawTime[6]
	EndIf
	
	If RawTime[7] == 0
		millisecond = "000"
	ElseIf RawTime[7] < 10
		millisecond = "00" + RawTime[7]
	ElseIf RawTime[7] < 100
		millisecond = "0" + RawTime[7]
	EndIf
	
	String SystemTime = month + "/" + day + "/" + RawTime[0] + " | " + hour + ":" + minute + ":" + second + "." + millisecond
	
	String FileName = LogPath + LogName + " " + DuplicateNumber + Ext
	WriteToFile(FileName, "[" + SystemTime + "] - " + LogString + "\n", True)
EndFunction