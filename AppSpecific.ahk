;;;;; Zoom ;;;;;
#IfWinActive, Zoom

F1::
; Toggle mute
Send, !a
return

F10::
; Quit zoom
Send, !q
Sleep 100
Send {Enter}
return

F2::
; Share screen
Send, !s
return

F5::
; Maximize 
WinMaximize, A
Sleep 200

; Go to security menu
Send, {TAB 7}
Send, {Enter}
Send, {Down 2}
Send, {Enter} ; disable waiting room
Sleep 500

; Open security menu again
Send, {Enter}
Send, {Down 4}
Send, {Enter} ; allow participants to share
Sleep 200

return

;;;;; Notion ;;;;;

#IfWinActive ahk_exe Notion.exe

F1::
; Set background to green
Send, ^/
Sleep 200
Send, green b
Sleep 800
Send, {Enter}
return

F2::
; Set background to orange
Send, ^/
Sleep 200
Send, orange b
Sleep 800
Send, {Enter}
return

F3::
; Set background to red
Send, ^/
Sleep 200
Send, red b
Sleep 800
Send, {Enter}
return

F5::
; Green check emoji
Send, :green_chec
Sleep 100
Send, {Enter}
return

F6::
; alert emoji
Send, :alert
Sleep 100
Send, {Enter}
return

F7::
; red cross emoji
Send, :red_cross
Sleep 100
Send, {Enter}
return

F8::
; red alert emoji
Send, :alert_re
Sleep 100
Send, {Enter}
return

F10::
; Set background to default
Send, ^/
Sleep 200
Send, default
Sleep 800
Send, {Enter}
return

^+L::
; Copy link to current block
Send, ^/
Sleep 200
Send, copy
Sleep 800
Send, {Enter}
return

;;;;; Key Pirinha ;;;;;

#IfWinActive ahk_exe keypirinha-x64.exe

F5::
send, Refresh
Sleep 100
Send, {Enter}
return

;;;;; Teams ;;;;;

#IfWinActive ahk_exe Teams.exe

F1::
; Open code snippets
Send, !+c
Sleep 100
Send, ^+x
Sleep 100
Send, +{Tab}
Send, +{Tab}
Send, {Home}
Sleep 100
Send, {Right 15}
Send, {Enter}
return

;;;;; Sublime Merge ;;;;;

#IfWinActive ahk_exe sublime_merge.exe

F1::
; Create tag (from clipboard)
Send, ^+p
Sleep 100
Send, createtag
Sleep 200
Send, {Enter}
Sleep 100
Send, v
Sleep 100
Send, ^v
return

F2::
; Send tag (from clipboard)
Send, ^+p
Sleep 100
Send, pushtag
Sleep 200
Send, {Enter}
Send, v
Send, ^v
return

;;;;; Visual Studio ;;;;;

#IfWinActive ahk_exe devenv.exe

F11::
Send, // TODO
Send, {Space}
return

!F11::
Send, /*
Send, {Enter}
Send, TODO
Send, {Enter}
Send, /
Send, {Up}
Send, {End}
Send, {Space}
return

;;;;; Reset ;;;;;
#IfWinActive ; Do not remove this line
