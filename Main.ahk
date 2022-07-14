#SingleInstance Force
#NoEnv  
#Warn

SendMode, Input  
SetWorkingDir, "D:\bin\ahk"  
SetTitleMatchMode, 2

I_Icon = D:\bin\ahk\icon.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%
;return

#include Playground.ahk

#include Functions.ahk
#include Keys.ahk
#include TimeZone.ahk
#include Snips.ahk
#include Redacted.ahk
#include AppSpecific.ahk
