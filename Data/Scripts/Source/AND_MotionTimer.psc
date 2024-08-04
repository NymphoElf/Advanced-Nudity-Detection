ScriptName AND_MotionTimer extends Quest

And_PlayerScript Property AND_Player Auto

Int Property RunTimer Auto Hidden
Int Property SprintTimer Auto Hidden
Int Property ClockIterations Auto Hidden

Bool Property ClockActive Auto Hidden

Event OnInit()
	RunTimer = 0
	SprintTimer = 0
	ClockActive = False
EndEvent

Function StartClock()
	If ClockActive == False
		ClockActive = True
		CooldownClock()
	EndIf
EndFunction

Function CooldownClock()
	ClockIterations += 1
	Utility.Wait(10)
	
	If RunTimer > 0
		RunTimer -= 1
	EndIf
	
	If SprintTimer > 0
		SprintTimer -= 1
	EndIf
	
	EndClock()
EndFunction

Function EndClock()
	If RunTimer < 1 && SprintTimer < 1
		ClockActive = False
	ElseIf ClockIterations >= 6
		RunTimer = 0
		SprintTimer = 0
		ClockActive = False
	Else
		CooldownClock()
	EndIf
EndFunction