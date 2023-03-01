; LABELS
SetTime:
	; Add however many time zones you want to display.
	; Don't forget to modify the SIZE variable.
	SIZE = 5
	timeZone1 := "Berlin     : " . FormatTimeZone(1)
	timeZone2 := "Singapore  : " . FormatTimeZone(8)
	timeZone3 := "Austin     : " . FormatTimeZone(-5)
	timeZone4 := "India      : " . FormatTimeZone(5.5)
  timeZone5 := "UTC        : " . FormatTimeZone(0)
return

StepTime:
	Gosub, SetTime
	Loop, %SIZE% {
		GuiControl, Text, static%A_Index%, % timeZone%A_Index%
	}
return

MakeGUI:
	Gui, +AlwaysOnTop +ToolWindow
  Gui, Font, s12, Consolas
	Loop, %SIZE% {
		Gui, Add, Text,, % timeZone%A_Index%
	}

	Gui, Show,, TZ
return

GuiClose:
GuiEscape:
	SetTimer, StepTime, Off
	Gui, Destroy
return

; FUNCTIONS
; Formats time zone off UTC, offset in units of hours.
; For example, North Korea is UTC+08:30 so FormatTimeZone(8.5)
FormatTimeZone(offset = 0) {
	t := A_NowUTC
	EnvAdd, t, offset, Hours

	FormatTime, t, %t%, hh:mm tt on dd-MM
	return t
}

; HOTKEYS
<^>!;::
	IfWinNotExist, TZ
	{
		Gosub, SetTime
		Gosub, MakeGUI
		SetTimer, StepTime, 60000
	}
return

~Escape::
	IfWinExist, TZ
	{
		Gosub, GuiClose
	}
return
