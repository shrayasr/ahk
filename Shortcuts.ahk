;; RAlt T 
;; TickTick 
<^>!t::
{
    activateorlaunch(
        "ahk_exe TickTick.exe",
        "C:\Program Files (x86)\TickTick\TickTick.exe"
    )
}

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
;; Arc
<^>!c::
{
    ActivateOrLaunch(
        "ahk_exe Arc.exe",
        "C:\Users\Shrayas\AppData\Local\Microsoft\WindowsApps\Arc.exe"
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

;; RAlt 1
;; Open Speedcrunch
<^>!1::
{
    ActivateOrLaunch(
        "ahk_exe speedcrunch.exe",
        "D:\bin\speedcrunch\speedcrunch.exe"
    )
}

;; RAlt @
;; Follow this by 0-9 and it will open localhost:500{key you pressed}
<^>!@::
{
    portPrefix := "500"
    
    nextKeyDetails := WaitForNextKey("0123456789")
    if(nextKeyDetails.errorLevel = "Timeout")
    {
        portSuffix := "0"
    }
    else if (nextKeyDetails.errorLevel = "EndKey")
    {
        portSuffix := nextKeyDetails.selectedKey
    }

    port := portPrefix . portSuffix
    endpoint := "http://localhost:" . port 

    Run(endpoint)
}

;; Pause Pause
;; Play/Pause any currently playing media. To send a "pause", just press once
Pause::
{
  nextKeyDetails := WaitForNextKey("{pause}")
  if (nextKeyDetails.errorLevel = "EndKey")
  {
    Send("{Media_Play_Pause}")
  }
  else 
  {
    Send("{pause}")
  }
}
