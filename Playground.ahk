XActivateIfExists(name)
{
  if WinExist("ahk_exe" name)
    WinActivate
}

<^>!9::
;; Playground 
Gui, +AlwaysOnTop +ToolWindow 
Gui, Font, s12, Consolas
Gui, Add, Text,, Migration Name
Gui, Add, Edit, vMigrationName w400
Gui, Add, Button, default, OK
Gui, Show,, Migrations
return

ButtonOK:
Gui, Submit
lowerName := Format("{:L}", MigrationName)
cleanedName1 := RegExReplace(lowerName, "\s+", "_")
FormatTime, time, A_now, yyyyMMddHHmm
finalMigrationName := "V" . time . "__" . cleanedName1 . ".sql"
;MsgBox, %finalMigrationName%
Gui, Destroy
Send % finalMigrationName
return

;;;;; NOTES ;;;;;

; SplashTextOn, SplashTextOff to display some splash message
