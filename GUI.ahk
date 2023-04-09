ShowCleanInputGUI(name := "Name", separator := "_")
{
    global _cleanedInputValue
    _cleanedInputValue := ""

    cleanInputGui := Gui()

    cleanInputGui.OnEvent("Escape", cleanInputGui_Escape)
    cleanInputGui_Escape(s)
    {
        cleanInputGui.Destroy()
    }

    cleanInputGui.Title := "Clean input - " . name
    cleanInputGui.Opt("+AlwaysOnTop +ToolWindow ")
    cleanInputGui.SetFont("s12", "Consolas")

    cleanInputGui.AddText(, name)
    uncleanMigrationName := cleanInputGui.AddEdit("w400")

    okButton := cleanInputGui.AddButton("Default w80", "&OK")
    okButton.OnEvent("Click", okButton_Click)

    okButton_Click(*)
    {
        
        lowerName := Format("{:L}", uncleanMigrationName.Value)
        cleanedName := RegExReplace(lowerName, "\s+", separator)

        _cleanedInputValue := cleanedName

        cleanInputGui.Destroy()
    }

    cleanInputGui.Show()

    return cleanInputGui
}