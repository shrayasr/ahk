ActivateOrLaunch(ahkExePhrase, launchPath)
{
    if(WinActive(ahkExePhrase))
    {
        WinMinimize
    }
    else
    {
        if(WinExist(ahkExePhrase))
        {
            WinActivate(ahkExePhrase)
        }
        else
        {
            Run launchPath
        }
    }
}

ActivateAndCycle(ahkExePhrase)
{
    if(WinExist(ahkExePhrase))
    {
        if (WinActive)
        {
            WinActivateBottom ahkExePhrase
        }
        else
        {
            WinActivate(ahkExePhrase)
        }
    }
}