
#-------------------------------------------------------------#
#----Initial Declarations-------------------------------------#
#-------------------------------------------------------------#

Add-Type -AssemblyName PresentationCore, PresentationFramework

$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" Width="640" Height="570" Title="PS2EXE-GUI">
<Grid>
    <!-- GUI Elements -->
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="PS2EXE-GUI" Margin="15,15,0,0" Name="ui_title" FontWeight="Bold" FontSize="14"/>
        <Rectangle HorizontalAlignment="Left" VerticalAlignment="Top" Stroke="Gray" Height="475" Width="1" Margin="470,40,0,0"/>
    <!-- inputFile → FILEPATH.ps1 -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,40,0,0"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,40,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,40,0,0"/>
    <!-- outputFile → FILEPATH.exe -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,70,0,0"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,70,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,70,0,0"/>
    <!-- iconFile → FILEPATH.ico -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,100,0,0"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,100,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,100,0,0"/>
    <!-- title → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,130,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,130,0,0"/>
    <!-- description → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,160,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,160,0,0"/>
    <!-- company → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,190,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,190,0,0"/>
    <!-- product → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,220,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,220,0,0"/>
    <!-- copyright → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,250,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,250,0,0"/>
    <!-- trademark → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,280,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,280,0,0"/>
    <!-- version → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,310,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,310,0,0"/>
    <!-- runtime → COMBOBOX
        - runtime20
        - runtime40
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,340,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,340,0,0"/>
    <!-- instructionSet → COMBOBOX
        - x86
        - x64
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,370,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,370,0,0"/>
    <!-- threadApartment → COMBOBOX
        - STA
        - MTA
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,400,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="X" Margin="355,400,0,0"/>
    <!-- prepareDebug → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,40,0,0"/>
    <!-- noConsole → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,70,0,0"/>
    <!-- UNICODEEncoding → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,100,0,0"/>
    <!-- credentialGUI → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,130,0,0"/>
    <!-- configFile → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,160,0,0"/>
    <!-- noOutput → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,190,0,0"/>
    <!-- noError → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,220,0,0"/>
    <!-- noVisualStyles → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,250,0,0"/>
    <!-- exitOnCancel → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,280,0,0"/>
    <!-- DPIAware → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,310,0,0"/>
    <!-- requireAdmin → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,340,0,0"/>
    <!-- supportOS → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,370,0,0"/>
    <!-- virtualize → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,400,0,0"/>
    <!-- longPaths → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,430,0,0"/>
    <!-- extractable → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="X" Margin="490,460,0,0"/>
    <!-- Compile-Button -->
        <Button Content="Button" HorizontalAlignment="Left" VerticalAlignment="Top" Width="120" Margin="490,490,0,0" Height="25"/>
<TextBlock HorizontalAlignment="Right" VerticalAlignment="Top" TextWrapping="Wrap" Text="Hope-IT-Works/PS2EXE-GUI" Margin="0,15,15,0"/>
</Grid>
</Window>
"@

#-------------------------------------------------------------#
#----Control Event Handlers-----------------------------------#
#-------------------------------------------------------------#


#region Logic

#endregion 


#-------------------------------------------------------------#
#----Script Execution-----------------------------------------#
#-------------------------------------------------------------#

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)

[xml]$xml = $Xaml

$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }



$Window.ShowDialog()


