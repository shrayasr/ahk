;; RAlt / 
;; Is AHK running?
<^>!/::
{
    MsgBox("It Works", "Keys")
    return
}

;; RAlt F2
;; Edit Script
<^>!F2::
{
    Run("C:\tools\vim\vim90\gvim.exe -c `":cd D:\bin\ahk`" `"D:\bin\ahk\Main.ahk`"")
}


;; RAlt F5
;; Reload Script
<^>!F5::
{
    Reload
}

;; RAlt -
;; Minimize current window
<^>!-::
{
    WinMinimize("A")
}

;; RAlt =
;; Maximize current window
<^>!=::
{
    WinMaximize("A")
}

;; RAlt Esc
;; Close current window
<^>!Esc::
{
    WinClose("A")
}
