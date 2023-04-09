;; RAlt F 
;; Firefox 
<^>!f::
{
    ActivateOrLaunch(
        "ahk_exe firefox.exe",
        "C:\Program Files\Mozilla Firefox\firefox.exe -P `"Shrayas`""
    )
}

;; Win E
;; Replace windows explorer with FreeCommander
#e::
{
    ActivateOrLaunch(
        "ahk_exe FreeCommander.exe",
        "C:\Program Files (x86)\FreeCommander XE\FreeCommander.exe"
    )
}

;; RAlt L
;; Linqpad
<^>!l::
{
    ActivateOrLaunch(
        "ahk_exe LINQPad6.exe",
        "C:\Program Files\LINQPad6\LINQPad6.exe"
    )
}

;; RAlt N
;; Notion
<^>!n::
{
    ActivateOrLaunch(
        "ahk_exe Notion.exe",
        "C:\Users\Shrayas\AppData\Local\Programs\Notion\Notion.exe"
    )
}

;; RAlt K
;; BitWarden
<^>!k::
{
    ActivateOrLaunch(
        "ahk_exe Bitwarden.exe",
        "C:\Users\Shrayas\AppData\Local\Programs\Bitwarden\Bitwarden.exe"
    )
}

;; RAlt S
;; Sublime Merge
<^>!s::
{
    ActivateOrLaunch(
        "ahk_exe sublime_merge.exe",
        "C:\Program Files\Sublime Merge\sublime_merge.exe"
    )
}

;; RAlt D
;; DBEaver
<^>!d::
{
    ActivateOrLaunch(
        "ahk_exe dbeaver.exe",
        "C:\Program Files\DBeaver\dbeaver.exe"
    )
}

;; RAlt C 
;; Brave
<^>!c::
{
    ActivateOrLaunch(
        "ahk_exe brave.exe",
        "C:\Users\Shrayas\AppData\Local\BraveSoftware\Brave-Browser\Application\brave.exe"
    )
}

;; RAlt W
;; WhatsApp
<^>!w::
{
    ActivateOrLaunch(
        "WhatsApp ahk_exe ApplicationFrameHost.exe",
        "D:\winstoreapps\WhatsApp.lnk"
    )
}

;; RAlt G
;; Telegram
<^>!g::
{
    ActivateOrLaunch(
        "ahk_exe Telegram.exe",
        "C:\Users\Shrayas\AppData\Roaming\Telegram Desktop\Telegram.exe"
    )
}

;; RAlt V
;; Cycle open Visual Studio windows
<^>!v::
{
    ActivateAndCycle("ahk_exe devenv.exe")
}

;; RAlt `
;; Open Windows Terminal
<^>!`::
{
    ActivateOrLaunch(
        "ahk_exe WindowsTerminal.exe",
        "D:\winstoreapps\terminal.lnk"
    )
}

;; RAlt X
;; Open Notepad3
<^>!x::
{
    ActivateOrLaunch(
        "ahk_exe Notepad3.exe",
        "C:\Program Files\Notepad3\Notepad3.exe"
    )
}

;; ,nsdns
;; Hotstring to be typed into a brower window 
;; Helps edit DNS entries for that domain on namecheap.com
:*:,nsdns::
{
    Send("https://ap.www.namecheap.com/domains/domaincontrolpanel//advancedns")
    Send("{left 11}")
}