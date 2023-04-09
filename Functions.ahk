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

WaitForNextKey(viableNextKeys, timeout := "1.5")
{
    ih := InputHook("L1 T" . timeout)
    ih.KeyOpt(viableNextKeys, "E")
    ih.Start()

    ErrorLevel := ih.Wait()

    response :=  {
        errorLevel: ErrorLevel,
        selectedKey: ih.EndKey
    }

    return response
}
