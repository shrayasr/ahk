;; RAlt slash
;; Check if AHK is working
<^>!/::
MsgBox, , Keys, It Works
return

;; Win E
;; Replace windows explorer wtih FreeCommander
#e::
ActivateOrLaunch("FreeCommander XE", "C:\Program Files (x86)\FreeCommander XE\FreeCommander.exe")
return

;; RAlt M
;; Spotify Music
<^>!m::
ActivateOrLaunch("Spotify","C:\Users\Shrayas\AppData\Roaming\Spotify\Spotify.exe")
return

;; RAlt L
;; Linqpad
<^>!l::
ActivateOrLaunch("LINQPad",  "C:\Program Files\LINQPad6\LINQPad6.exe")
return

;; RAlt N
;; Notion
<^>!n::
ActivateOrLaunch("ahk_exe Notion.exe",  "C:\Users\Shrayas\AppData\Local\Programs\Notion\Notion.exe")
return

;; RAlt K
;; BitWarden
<^>!k::
ActivateOrLaunch("Bitwarden", "C:\Users\Shrayas\AppData\Local\Programs\Bitwarden\Bitwarden.exe")
return

;; RAlt S
;; Sublime Merge
<^>!s::
ActivateOrLaunch("Sublime Merge", "C:\Program Files\Sublime Merge\sublime_merge.exe")
return

;; RAlt T
;; Outlook
<^>!t::
ActivateOrLaunch("Outlook","D:\winstoreapps\outlook.lnk")
return

;; RAlt D
;; DBEaver
<^>!d::
ActivateOrLaunch("DBeaver", "C:\Program Files\DBeaver\dbeaver.exe")
return

;; RAlt C 
;; Brave
<^>!c::
ActivateOrLaunch("Brave", "C:\Users\Shrayas\AppData\Local\BraveSoftware\Brave-Browser\Application\brave.exe") 
return

;; RAlt F
;; Firefox -- My profile
<^>!f::
ActivateOrLaunch("Firefox", "C:\Program Files\Mozilla Firefox\firefox.exe -p Shrayas")
return

;; RAlt Shift F
;; Firefox -- Sundarakala Profile
<^>!+f::
ActivateOrLaunch("Firefox", "C:\Program Files\Mozilla Firefox\firefox.exe -p Sundarakala")
return

;; RAlt W
;; WhatsApp
<^>!w::
ActivateOrLaunch("WhatsApp", "C:\Users\Shrayas\AppData\Local\WhatsApp\WhatsApp.exe", "-")
return

;; RAlt G
;; Telegram
<^>!g::
ActivateOrLaunch("Telegram", "C:\Users\Shrayas\AppData\Roaming\Telegram Desktop\Telegram.exe", "-")
return

;; RAlt v
;; Teamviewer
<^>!3::
ActivateOrLaunch("TeamViewer", "C:\Program Files (x86)\TeamViewer\TeamViewer.exe", "-")
return

;; RAlt P
;; Cycle open putty windows
<^>!p::
ActivateAndCycle("PUTTY.exe")
return

;; RAlt V
;; Cycle open Visual Studio windows
<^>!v::
ActivateAndCycle("devenv.exe")
return

;; RAlt F12
;; Open a bunch of default apps
<^>!F12::
MsgBox, 4,, Launch defaults?
IfMsgBox Yes
{
  ActivateOrLaunch("DBeaver", "C:\Program Files\DBeaver\dbeaver.exe -nl en")
  ActivateOrLaunch("Sublime Merge", "C:\Program Files\Sublime Merge\sublime_merge.exe")
  ActivateOrLaunch("Outlook","C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE")
  ActivateOrLaunch("Cmder", "C:\tools\cmder\Cmder.exe")
  ActivateOrLaunch("FreeCommander XE", "C:\Program Files (x86)\FreeCommander XE\FreeCommander.exe")
  ActivateOrLaunch("Microsoft Teams","C:\Users\Shrayas\AppData\Local\Microsoft\Teams\current\Teams.exe")
}
return

;; RAlt `
;; Open Windows Terminal
<^>!`::
if WinExist("ahk_exe WindowsTerminal.exe")
  WinActivate, ahk_exe WindowsTerminal.exe
else
  Run, "D:\winstoreapps\terminal.lnk"
return


;; RAlt F5
;; Reload Script
<^>!F5::
Reload
return

;; RAlt F2
;; Edit Script
<^>!F2::
Run, "C:\tools\vim\vim90\gvim.exe" "D:\bin\ahk\keys.ahk",,max
return

;; RAlt -
;; Minimize current window
<^>!-::
WinMinimize, A
return

;; RAlt =
;; Maximize current window
<^>!=::
WinMaximize, A
return

;; RAlt Esc
;; Close current window
<^>!Esc::
WinClose, A
return

;; RAlt |
;; Send winow to other monitor
<^>!Backspace::
Send #+{Right}
return

;; RAlt Shift P
;; Open putty
<^>!+p::
Run, "C:\ProgramData\chocolatey\bin\PUTTY.EXE"
Return

;; RAlt Shift O
;; Slack
<^>!+o::
ActivateOrLaunch("Slack", "C:\Program Files\Slack\Slack.exe")
return

;; RAlt o
;; Discord
<^>!o::
;ActivateOrLaunch("Discord","C:\Users\Shrayas\AppData\Local\Discord\app-1.0.9004\Discord.exe")
ActivateOrLaunch("Microsoft Teams","C:\Users\Shrayas\AppData\Local\Microsoft\Teams\current\Teams.exe")
return

;; RAlt A
;; Android studio
<^>!a::
ActivateOrLaunch("Android Studio", "C:\Program Files\Android\Android Studio\bin\studio64.exe")
return

;; RAlt q
;; Open BazQux
<^>!q::
ActivateOrLaunch("BazQux", "C:\Users\Shrayas\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Brave Apps\BazQux Reader.lnk")
return

;; RAlt X
;; Open Notepad3
<^>!x::
ActivateOrLaunch("Notepad3", "C:\Program Files\Notepad3\Notepad3.exe")
return

;; RAlt Z
;; Activate zoom if exists
<^>!z::
ActivateIfExists("ahk_exe Zoom.exe")
return

;; RAlt 0
;; Opens calendar
;; See AppSpecific.AHK for controls on calendar
<^>!0::
Send #b
Send {Up}
Send {Enter}
Sleep 400
Send {Tab}
return

;Localhost URL
<^>!2:: 
Input, SingleKey, T1 L1, {enter}.{esc}{tab}, 0,1,2,3,4,5,6,7,8,9

if(ErrorLevel == "Timeout" or ErrorLevel != "match")
{
    SingleKey := "0"
}   

endpoint := % "http://localhost:500" . SingleKey . "/"
Run, "C:\Users\Shrayas\AppData\Local\BraveSoftware\Brave-Browser\Application\brave.exe" %endpoint%,,max
return
