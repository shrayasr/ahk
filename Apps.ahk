#HotIf WinActive("ahk_exe Arc.exe")

; Open new SQL Editor
^PgDn::
{
  Send("^!{Down}")
}

; Open DB Object search
^PgUp::
{
  Send("^!{Up}")
}


#HotIf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


#HotIf WinActive("ahk_exe dbeaver.exe")

; Open new SQL Editor
F1::
{
  Send("^]")
}

; Open DB Object search
F2::
{
  Send("^+d")
}

; Disconnect all connections
F4::
{
  Send("^!+{F4}")
}

#HotIf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#HotIf WinActive("ahk_exe Notion.exe")

; Open link in clipboard (assumed to be a notion link) in notion instead
; of in the browser
F5::
{
    notionURL := StrReplace(A_Clipboard, "https", "notion", 1)
    Run(notionURL)
    TrayTip "Done", "Opening link in notion"
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

;; Create new branch
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

;; Run git push
F5::
{
  Send("^!{up}")
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

; Peek definition
F13::
{
  Send("!{F12}")
}

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

F5::
{
  Send("^+t")
}

#HotIf
