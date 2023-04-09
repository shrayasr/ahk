#HotIf WinActive("ahk_exe Notion.exe")

; Copy link to current block
^+L::
{
    Send("^/")
    Sleep(200)
    Send("copy")
    Sleep(800)
    Send("{Enter}")
}

; Open link in clipboard (assumed to be a notion link) in notion instead
; of in the browser
F5::
{
    A_Clipboard := StrReplace(A_Clipboard, "https", "notion", 1)
    Send("#r")
    if(WinWaitActive("Run ahk_exe explorer.exe"))
    {
        Sleep(200)
        Send("^v")
        Sleep(200)
        Send("{Enter}")

        TrayTip "Done", "Opening link in notion"
    }
}

#HotIf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#HotIf WinActive("ahk_exe sublime_merge.exe")

; Create tag (from clipboard)
F1::
{
    Send("^+p")
    Sleep(100)
    Send("createtag")
    Sleep(200)
    Send("{Enter}")
    Sleep(100)
    Send("v")
    Sleep(100)
    Send("^v")
}

; Send tag (from clipboard)
F2::
{
    Send("^+p")
    Sleep(100)
    Send("pushtag")
    Sleep(200)
    Send("{Enter}")
    Send("v")
    Send("^v")
}

; run fetch --prune
F3::
{
    Send("^+p")
    Sleep(100)
    Send("fetch")
    Sleep(100)
    Send("{Enter}")
    Send("prune")
    Sleep(100)
    Send("{Enter}")
}

^+b::
{
    newBranch := ShowCleanInputGUI("New branch name", "-")
    if(WinWaitClose(newBranch.Hwnd))
    {
        global _cleanedInputValue

        Send("^+b")
        Sleep(200)

        time := FormatTime(, "yyyy-MM-dd")
        send("shrayasr/" . time . "/")

        if(_cleanedInputValue != "")
        {
            send(_cleanedInputValue)
        }
    }

}

#HotIf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#HotIf WinActive("ahk_exe Notepad3.exe")

F1::
{
    Send("^0")
    Sleep(100)
}

F2::
{
    Send("^{NumpadAdd 10}")
    Sleep(100)
}

#HotIf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#HotIf WinActive("ahk_exe WindowsTerminal.exe")

F1::
{
    Send("gvim .\Shipit.json")
    Sleep(100)
}

#HotIf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#HotIf WinActive("ahk_exe devenv.exe")

; Create a new migration file
F1::
{
    newMigrationGUI := ShowCleanInputGUI("New migration name", "_")
    if(WinWaitClose(newMigrationGUI.Hwnd))
    {
        global _cleanedInputValue

        time := FormatTime(,"yyyyMMddHHmm")
        send("V" . time . "__" . _cleanedInputValue . ".sql")

        if(_cleanedInputValue = "")
        {
            send("{left 4}")
        }
    }
}

#HotIf