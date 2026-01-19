ScriptName AND_Logger extends Quest

Int Property WARNING = 1 AutoReadOnly
Int Property ERROR = 2 AutoReadOnly
Int Property CRITICAL = 3 AutoReadOnly

Function EnableLogging(Bool Enabled) global native

Function SetLogLevel(Int LogLevel) global native

Function FastLog(String LogString, Int Severity = 0) global native