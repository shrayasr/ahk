ActivateIfExists(name)
{
  exist := WinExist(name)
  if %exist%
    WinActivate, %name%
}

; Function that either activates the window, if it exists or
; launches the exe given
ActivateOrLaunch(name, exeName, windowType:="max")
{
  WinGet, currProcessPath, ProcessPath, A
  if (currProcessPath = exeName)
    WinMinimize, A
  else
  {
    exist := WinExist(name)
    if %exist%
      WinActivate, %name%
    else
      if (windowType = "-")
        Run %exeName%
      else
        Run, %exeName%,, max
  }
}

ActivateAndCycle(exe)
{
  IfWinExist, ahk_exe %exe%
    IfWinActive, ahk_exe %exe%
      WinActivateBottom, ahk_exe %exe%
    else
      WinActivate, ahk_exe %exe%
}
