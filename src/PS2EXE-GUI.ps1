
#-------------------------------------------------------------#
#----Initial Declarations-------------------------------------#
#-------------------------------------------------------------#

Add-Type -AssemblyName PresentationCore, PresentationFramework

$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" Width="640" Height="620" Title="PS2EXE-GUI" ResizeMode="NoResize" Name="dom_window" WindowStartupLocation="CenterScreen">
<!--d9102811-1fab-4eca-a3f6-f5b6db64722b-->
<TabControl Margin="0,0,0,0" SelectedIndex="{Binding TabIndex}" BorderThickness="0,0,0,0" Name="ui_dockpanel11">
<TabItem Header="Main" Visibility="Collapsed">
<Grid>
    <!-- GUI Elements -->
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="PS2EXE-GUI" Margin="15,15,0,0" Name="ui_title" FontWeight="Bold" FontSize="14"/>
		<TextBlock HorizontalAlignment="Right" VerticalAlignment="Top" TextWrapping="Wrap" Text="Hope-IT-Works/PS2EXE-GUI" Margin="0,15,15,0"/>
        <Rectangle HorizontalAlignment="Left" VerticalAlignment="Top" Stroke="Gray" Height="505" Width="1" Margin="470,40,0,0"/>
        <Rectangle HorizontalAlignment="Left" VerticalAlignment="Top" Stroke="Gray" Height="1" Width="455" Margin="15,440,0,0"/>
        <Image HorizontalAlignment="Left" Height="74" VerticalAlignment="Top" Width="455" Margin="50,455,0,0" Source="https://github.com/Hope-IT-Works/PS2EXE-GUI/raw/main/resources/graphics/logo/logo_header_small.png?raw=true" Stretch="Uniform"/>
    <!-- inputFile → FILEPATH.ps1 -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,40,0,0" ToolTip="{Binding tooltip_inputFile}" BorderBrush="{Binding state_inputFile}" Text="{Binding ui_inputFile}" Name="dom_textbox_inputFile"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,40,0,0" Name="dom_button_inputFile"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="inputFile" Margin="355,40,0,0" FontWeight="SemiBold"/>
    <!-- outputFile → FILEPATH.exe -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,70,0,0" ToolTip="{Binding tooltip_outputFile}" Text="{Binding ui_outputFile}" Name="dom_textbox_outputFile"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,70,0,0" Name="dom_button_outputFile"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="outputFile" Margin="355,70,0,0"/>
    <!-- iconFile → FILEPATH.ico -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,100,0,0" ToolTip="{Binding tooltip_iconFile}" Text="{Binding ui_iconFile}" Name="dom_textbox_iconFile"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,100,0,0" Name="dom_button_iconFile"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="iconFile" Margin="355,100,0,0"/>
    <!-- title → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,130,0,0" ToolTip="{Binding tooltip_title}" Text="{Binding ui_title}" Name="dom_textbox_title"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="title" Margin="355,130,0,0"/>
    <!-- description → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,160,0,0" ToolTip="{Binding tooltip_description}" Text="{Binding ui_description}" Name="dom_textbox_description"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="description" Margin="355,160,0,0"/>
    <!-- company → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,190,0,0" ToolTip="{Binding tooltip_company}" Text="{Binding ui_company}" Name="dom_textbox_company"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="company" Margin="355,190,0,0"/>
    <!-- product → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,220,0,0" ToolTip="{Binding tooltip_product}" Text="{Binding ui_product}" Name="dom_textbox_product"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="product" Margin="355,220,0,0"/>
    <!-- copyright → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,250,0,0" ToolTip="{Binding tooltip_copyright}" Text="{Binding ui_copyright}" Name="dom_textbox_copyright"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="copyright" Margin="355,250,0,0"/>
    <!-- trademark → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,280,0,0" ToolTip="{Binding tooltip_trademark}" Text="{Binding ui_trademark}" Name="dom_textbox_trademark"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="trademark" Margin="355,280,0,0"/>
    <!-- version → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,310,0,0" ToolTip="{Binding tooltip_version}" Text="{Binding ui_version}" Name="dom_textbox_version"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="version" Margin="355,310,0,0"/>
    <!-- runtime → COMBOBOX
        - runtime20
        - runtime40
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,340,0,0" ToolTip="{Binding tooltip_runtime}" ItemsSource="{Binding ui_runtime}" SelectedValue="{Binding value_runtime}" Name="dom_combobox_runtime"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="runtime" Margin="355,340,0,0"/>
    <!-- instructionSet → COMBOBOX
        - x86
        - x64
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,370,0,0" ToolTip="{Binding tooltip_instructionSet}" ItemsSource="{Binding ui_instructionSet}" SelectedValue="{Binding value_instructionSet}" Name="dom_combobox_instructionSet"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="instructionSet" Margin="355,370,0,0"/>
    <!-- threadApartment → COMBOBOX
        - STA
        - MTA
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,400,0,0" ToolTip="{Binding tooltip_threadApartment}" ItemsSource="{Binding ui_threadApartment}" SelectedValue="{Binding value_threadApartment}" Name="dom_combobox_threadApartment"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="threadApartment" Margin="355,400,0,0"/>
    <!-- prepareDebug → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="prepareDebug" Margin="490,40,0,0" ToolTip="{Binding tooltip_prepareDebug}" IsChecked="{Binding ui_prepareDebug}" Name="dom_checkbox_prepareDebug"/>
    <!-- noConsole → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noConsole" Margin="490,70,0,0" ToolTip="{Binding tooltip_noConsole}" IsChecked="{Binding ui_noConsole}" Name="dom_checkbox_noConsole"/>
    <!-- UNICODEEncoding → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="UNICODEEncoding" Margin="490,100,0,0" ToolTip="{Binding tooltip_UNICODEEncoding}" IsChecked="{Binding ui_UNICODEEncoding}" Name="dom_checkbox_UNICODEEncoding"/>
    <!-- credentialGUI → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="credentialGUI" Margin="490,130,0,0" ToolTip="{Binding tooltip_credentialGUI}" IsChecked="{Binding ui_credentialGUI}" Name="dom_checkbox_credentialGUI"/>
    <!-- configFile → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="configFile" Margin="490,160,0,0" ToolTip="{Binding tooltip_configFile}" IsChecked="{Binding ui_configFile}" Name="dom_checkbox_configfile"/>
    <!-- noOutput → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noOutput" Margin="490,190,0,0" ToolTip="{Binding tooltip_noOutput}" IsChecked="{Binding ui_noOutput}" Name="dom_checkbox_noOutput"/>
    <!-- noError → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noError" Margin="490,220,0,0" ToolTip="{Binding tooltip_noError}" IsChecked="{Binding ui_noError}" Name="dom_checkbox_noError"/>
    <!-- noVisualStyles → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noVisualStyles" Margin="490,250,0,0" ToolTip="{Binding tooltip_noVisualStyles}" IsChecked="{Binding ui_noVisualStyles}" Name="dom_checkbox_noVisualStyles"/>
    <!-- exitOnCancel → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="exitOnCancel" Margin="490,280,0,0" ToolTip="{Binding tooltip_exitOnCancel}" IsChecked="{Binding ui_exitOnCancel}" Name="dom_checkbox_exitOnCancel"/>
    <!-- DPIAware → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="DPIAware" Margin="490,310,0,0" ToolTip="{Binding tooltip_DPIAware}" IsChecked="{Binding ui_DPIAware}" Name="dom_checkbox_DPIAware"/>
    <!-- winFormsDPIAware → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="winFormsDPIAware" Margin="490,340,0,0" ToolTip="{Binding tooltip_winFormsDPIAware}" IsChecked="{Binding ui_winFormsDPIAware}" Name="dom_checkbox_winFormsDPIAware"/>
    <!-- requireAdmin → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="requireAdmin" Margin="490,370,0,0" ToolTip="{Binding tooltip_requireAdmin}" IsChecked="{Binding ui_requireAdmin}" Name="dom_checkbox_requireAdmin"/>
    <!-- supportOS → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="supportOS" Margin="490,400,0,0" ToolTip="{Binding tooltip_supportOS}" IsChecked="{Binding ui_supportOS}" Name="dom_checkbox_supportOS"/>
    <!-- virtualize → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="virtualize" Margin="490,430,0,0" ToolTip="{Binding tooltip_virtualize}" IsChecked="{Binding ui_virtualize}" Name="dom_checkbox_virtualize"/>
    <!-- longPaths → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="longPaths" Margin="490,460,0,0" ToolTip="{Binding tooltip_longPaths}" IsChecked="{Binding ui_longPaths}" Name="dom_checkbox_longPaths"/>
    <!-- extractable → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="extractable" Margin="490,490,0,0" ToolTip="{Binding tooltip_extractable}" IsChecked="{Binding ui_extractable}" IsEnabled="false" Name="dom_checkbox_extractable"/>
    <!-- Compile-Button -->
        <Button Content="Compile" HorizontalAlignment="Left" VerticalAlignment="Top" Width="120" Margin="490,520,0,0" Height="25" IsEnabled="{Binding state_compile}" Name="dom_button_compile"/>
</Grid>
</TabItem>
<TabItem Header="About" Visibility="Collapsed">
<Grid>
    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Margin="15,15,0,0" FontSize="14">
        <Bold>PS2EXE GUI</Bold>
        <LineBreak/>
        a project by <Hyperlink Name="ui_dockpanel12">Tobias Meyer (Hope-IT-Works)</Hyperlink>
        <LineBreak/>
        <LineBreak/>
        Version 1.0.0.0
        <LineBreak/>
        <LineBreak/>
        This Project uses the further developed version of PS2EXE by <Hyperlink Name="ui_dockpanel13">Markus Scholtes</Hyperlink> licensed under the Microsoft Public License (MC-PL).
        <LineBreak/>
        The GUI of PS2EXE-GUI was made with <Hyperlink Name="ui_dockpanel14">POSHGUI</Hyperlink> by <Hyperlink Name="ui_dockpanel15">Maciej Obuchowski</Hyperlink>.
        <LineBreak/>
        PS2EXE was initially developed by <Hyperlink Name="ui_dockpanel16">Ingo Karstein</Hyperlink>.
        <LineBreak/>
        <LineBreak/>
        This project is licensed under the <Hyperlink Name="ui_dockpanel17">Apache License 2.0</Hyperlink>.
    </TextBlock>
    <Button HorizontalAlignment="Right" VerticalAlignment="Bottom" Width="100" Height="25" Margin="0,0,15,12" Content="← Back" Name="ui_dockpanel18"/>
</Grid>
</TabItem>
<TabItem Header="Console" Visibility="Collapsed">
<Grid>
    <TextBox Margin="0,0,0,50" Padding="10,10,10,10" TextWrapping="Wrap" IsReadOnly="True" FontFamily="Consolas" Background="#012456" Foreground="#ffffff" Text="{Binding value_console}" Name="PS2EXE_Console" AcceptsReturn="True"/>
    <Button HorizontalAlignment="Right" VerticalAlignment="Bottom" Width="120" Height="25" Margin="0,0,12,12" Content="← Back" Name="ui_dockpanel19" IsEnabled="{Binding state_compiled}"/>
</Grid>
</TabItem>
</TabControl>
<!--039aaa3d-1014-4b1d-b7ae-6aedd03aa21b-->
</Window>
"@

#-------------------------------------------------------------#
#----Control Event Handlers-----------------------------------#
#-------------------------------------------------------------#


#region pre_code
$PS2EXE_GUI_Verbose = $true

Add-Type -AssemblyName System.Windows.Forms

function Invoke-Hyperlink ($URL) {
    if($PS2EXE_GUI_Verbose){
        Write-Host ("[Invoke-Hyperlink] URL: "+$URL)
    }
    Start-Process $URL
}

function Stop-PS2EXEGUI {
    if($PS2EXE_GUI_Verbose){
        Write-Host ("[Stop-PS2EXEGUI]")
    }
    $Window.Close()
    exit
}

function Switch-Page ($Page) {
    if($PS2EXE_GUI_Verbose){
        Write-Host ("[Switch-Page] Page: "+$Page)
    }
    if($null -ne $Page){
        if($Page -is [int]){
            $State.TabIndex = $Page
        }
    }
}

function Invoke-Dummy {
    Write-Host "[Invoke-Dummy] This function is not implemented right now."
}
#endregion 
#region compatibility_xaml
<#
    COMPATIBILITY XAML
    - PoshGUI doesnt support every WPF element, therefore unsupported WPF elements are added here
    - WPF elements are injected into xaml variable with placeholders, these placeholders are generated via "New-Guid" (not at runtime)
#>
$Xaml = $Xaml.Replace('<!--d9102811-1fab-4eca-a3f6-f5b6db64722b-->',@'
<DockPanel Name="ui_dockpanel00">
    <Menu DockPanel.Dock="Top" BorderBrush="DarkGray" BorderThickness="0,0,0,1">
        <MenuItem Header="_File">
            <MenuItem Header="_New" Name="ui_dockpanel01" IsEnabled="false"/>
            <MenuItem Header="_Open" Name="ui_dockpanel02" IsEnabled="false"/>
            <Separator />
            <MenuItem Header="_Save" Name="ui_dockpanel03" IsEnabled="false"/>
            <MenuItem Header="_Save As..." Name="ui_dockpanel04" IsEnabled="false"/>
            <Separator />
            <MenuItem Header="_Exit" Name="ui_dockpanel05"/>
        </MenuItem>
        <MenuItem Header="_Help">
            <MenuItem Header="_View Help" Name="ui_dockpanel06"/>
            <MenuItem Header="_Send Feedback" Name="ui_dockpanel07"/>
            <Separator />
            <MenuItem Header="_Check for PS2EXE-GUI Update" Name="ui_dockpanel08" IsEnabled="false"/>
            <MenuItem Header="_Check for ps2exe.ps1 Update" Name="ui_dockpanel09" IsEnabled="false"/>
            <Separator />
            <MenuItem Header="_About P2EXE-GUI" Name="ui_dockpanel10"/>
        </MenuItem>
    </Menu>
'@)
$Xaml = $Xaml.Replace('<!--039aaa3d-1014-4b1d-b7ae-6aedd03aa21b-->','</DockPanel>')
#endregion 
#region compatibility_handling
<#
    COMPATIBILITY HANDLING
    - injected WPF element events are handled here
#>
function Invoke-WindowLoaded {
    $ui_dockpanel01.Add_Click({Invoke-Dummy $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel02.Add_Click({Invoke-Dummy $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel03.Add_Click({Invoke-Dummy $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel04.Add_Click({Invoke-Dummy $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel05.Add_Click({Stop-PS2EXEGUI $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel06.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/wiki" $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel07.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/issues" $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel08.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/releases" $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel09.Add_Click({Invoke-Hyperlink -URL "https://github.com/MScholtes/Win-PS2EXE/commits/master/ps2exe.ps1" $this $_}.Ast.GetScriptBlock())
    $ui_dockpanel10.Add_Click({Switch-Page -Page 1 $this $_}.Ast.GetScriptBlock())
}
#endregion 
#region main_code
<#
    MAIN CODE
#>

function Test-PS2EXEGUI_Compile {
    if($State.ui_inputFile.Length -gt 0){
        if((Test-Path -Path $State.ui_inputFile) -and (-join $State.ui_inputFile[0][-4..-1] -eq ".ps1")){
            $State.state_compile = $true
            $State.state_inputFile = "#FFABADB3"
        } else {
            $State.state_compile = $false
            $State.state_inputFile = "#d0021b"
        }
    }
}

function Invoke-PS2EXEGUI_OpenFileDialog ($Filter) {
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    #FILTER-EXAMPLE: "Text-File (*.txt)|*.txt"
    if($null -ne $Filter){
        $OpenFileDialog.Filter = $Filter
    }
    [void]$OpenFileDialog.ShowDialog()
    return $OpenFileDialog.FileName
}

function Invoke-PS2EXEGUI_SaveFileDialog ($Filter) {
    $SaveFileDialog = New-Object System.Windows.Forms.SaveFileDialog
    if($null -ne $Filter){
        $SaveFileDialog.Filter = $Filter
    }
    [void]$SaveFileDialog.ShowDialog()
    return $SaveFileDialog.FileName
}

function Invoke-UI_inputFile {
    $State.ui_inputFile = Invoke-PS2EXEGUI_OpenFileDialog -Filter "PowerShell-File (*.ps1)|*.ps1"
}

function Invoke-UI_outputFile {
    $State.ui_outputFile = Invoke-PS2EXEGUI_SaveFileDialog -Filter "Executable (*.exe)|*.exe"
}

function Invoke-UI_iconFile {
    $State.ui_iconFile = Invoke-PS2EXEGUI_OpenFileDialog -Filter "Icon-File (*.ico)|*.ico"
}

function Add-PS2EXE_Argument ($Key,$Value) {
    if($null -eq $Value){
        $global:PS2EXE_Arguments.Add("-"+$Key)
    } else {
        $global:PS2EXE_Arguments.Add("-"+$Key+' "'+$Value+'"')
    }
}

function Invoke-PS2EXE {
    $global:PS2EXE_Arguments = New-Object -TypeName System.Collections.ArrayList

    <#
        KEY/VALUE-PARAMETERS
    #>
    @('inputFile','outputFile','iconFile','title','description','company','product','copyright','trademark','version') | ForEach-Object {
        if($State.('ui_'+$_).Length -gt 0){
            Add-PS2EXE_Argument -Key $_ -Value $State.('ui_'+$_)
        }
    }

    <#
        RUNTIME-PARAMETER
    #>
    switch($State.value_runtime){
        '[runtime20] .NET Framework 2.0/3.x for PowerShell 2.0' {
            Add-PS2EXE_Argument -Key "runtime20"
            break
        }
        '[runtime40] .NET Framework 4.x for PowerShell 3.0' {
            Add-PS2EXE_Argument -Key "runtime40"
            break
        }
    }

    <#
        INSTRUCTIONSET-PARAMETER
    #>
    switch($State.value_instructionSet){
        'x86 - 32-Bit Application' {
            Add-PS2EXE_Argument -Key "x86"
            break
        }
        'x64 - 64-Bit Application' {
            Add-PS2EXE_Argument -Key "x64"
            break
        }
    }

    <#
        threadApartment-PARAMETER
    #>
    switch($State.value_threadApartment){
        'STA - Single Thread Apartment' {
            Add-PS2EXE_Argument -Key "STA"
            break
        }
        'MTA - Multi Thread Apartment' {
            Add-PS2EXE_Argument -Key "MTA"
            break
        }
    }

    <#
        BOOLEAN|SWITCH-PARAMETERS
    #>
    @('prepareDebug','noConsole','UNICODEEncoding','credentialGUI','configFile','noOutput','noError','noVisualStyles','exitOnCancel','DPIAware','winFormsDPIAware','requireAdmin','supportOS','virtualize','longPaths') | ForEach-Object {
        if($State.('ui_'+$_) -eq $true){
            Add-PS2EXE_Argument -Key $_
        }
    }

    <#
        EXTRACTABLE
        - is not supported by MScholtes (https://github.com/MScholtes/TechNet-Gallery/issues/3)
        - this needs to be handled separately

        EXAMPLE CONVERSION
        $PS2EXE_SOURCE = $PS2EXE_SOURCE -replace 's.StartsWith("-extdummt".Replace("dumm", "rac"), StringComparison.InvariantCultureIgnoreCase)','false'
    #>
    Switch-Page -Page 2
    $PS2EXE_CMD = '".\ps2exe.ps1" '+$global:PS2EXE_Arguments
    $State.value_console_command = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes([string]$PS2EXE_CMD))
    $State.value_console_root = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes((Get-Location).Path))
    Async {
        $State.value_console = [string]"Console - PS2EXE-GUI"
        function Add-PS2EXEGUI_ConsoleLog($Line, [switch]$NoLineBreak){
            if($NoLineBreak){
                $State.value_console = [string]($State.value_console+$Line)
            } else {
                $State.value_console = [string]($State.value_console+$Line+$PS_LNB)
            }
        }

        $PS_LNB = [System.Environment]::NewLine
        $PS_LINE = '------------------------------------------------------------------------------------------'

        $PS2EXE_ROOT = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($State.value_console_root))
        $PS2EXE_ROOT = $PS2EXE_ROOT
        if(Test-Path -Path $PS2EXE_ROOT){
            Set-Location -Path $PS2EXE_ROOT
            Add-PS2EXEGUI_ConsoleLog -Line ($PS_LINE+$PS_LNB+'ROOT: '+$PS2EXE_ROOT) -NoLineBreak
        }

        <#
            PS2EXE CALL
        #>
        $PS2EXE_CMD = 'powershell '+[System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($State.value_console_command))
        Add-PS2EXEGUI_ConsoleLog -Line ($PS_LINE+$PS_LNB+'CALL: '+[string]$PS2EXE_CMD) -NoLineBreak
        $PS2EXE_CALL = cmd /U /C $PS2EXE_CMD
        $PS2EXE_CALL = $PS2EXE_CALL -join $PS_LNB
        if($LASTEXITCODE -ne 0){
            Add-PS2EXEGUI_ConsoleLog -Line ($PS_LINE+$PS_LNB+'ERROR: '+[string]$Error)
            Add-PS2EXEGUI_ConsoleLog -Line ($PS_LINE+$PS_LNB+'ERROR: '+[string](Get-Error))
        }

        <#
            VERIFY THAT PS2EXE CREATED EXE FILE
        #>
        if([string]$State.ui_outputFile -eq ""){
            $EXECUTABLE_PATH = @{
                PATH = [System.IO.Path]::GetDirectoryName($State.ui_inputFile)
                NAME = [System.IO.Path]::GetFileNameWithoutExtension($State.ui_inputFile)
            }
        } else {
            $EXECUTABLE_PATH = @{
                PATH = [System.IO.Path]::GetDirectoryName($State.ui_outputFile)
                NAME = [System.IO.Path]::GetFileNameWithoutExtension($State.ui_outputFile)
            }
        }
        $EXECUTABLE_ASSUMPTION = $EXECUTABLE_PATH.PATH+'\'+$EXECUTABLE_PATH.NAME+'.exe'
        Add-PS2EXEGUI_ConsoleLog -Line ($PS_LINE+$PS_LNB+[string]$PS2EXE_CALL) -NoLineBreak
        Add-PS2EXEGUI_ConsoleLog -Line ($PS_LINE+$PS_LNB+'EXE: '+$EXECUTABLE_ASSUMPTION+$PS_LNB+$PS_LINE) -NoLineBreak
        if(Test-Path -Path $EXECUTABLE_ASSUMPTION){
            $PS2EXE_SUCCESS = $true
            Add-PS2EXEGUI_ConsoleLog -Line ([string]'STATUS: SUCCESS ✅ - Executable exists.') -NoLineBreak
        } else {
            $PS2EXE_SUCCESS = $false
            Add-PS2EXEGUI_ConsoleLog -Line ([string]'STATUS: FAILURE ❌ - Executable could not be created.') -NoLineBreak
        }

        Add-PS2EXEGUI_ConsoleLog -Line ($PS_LINE+$PS_LNB+'EXECUTION ENDED')
        $State.state_compiled = $true
    }
}
#endregion 
#region post_code
$UpdateSourceTrigger = 'PropertyChanged'
#endregion 


#-------------------------------------------------------------#
#----Script Execution-----------------------------------------#
#-------------------------------------------------------------#

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)

[xml]$xml = $Xaml

$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }


$dom_window.Add_Loaded({Invoke-WindowLoaded $this $_})
$dom_textbox_inputFile.Add_TextChanged({Test-PS2EXEGUI_Compile $this $_})
$dom_button_inputFile.Add_Click({Invoke-UI_inputFile $this $_})
$dom_button_outputFile.Add_Click({Invoke-UI_outputFile $this $_})
$dom_button_iconFile.Add_Click({Invoke-UI_iconFile $this $_})
$dom_button_compile.Add_Click({Invoke-PS2EXE $this $_})
$ui_dockpanel12.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works" $this $_})
$ui_dockpanel13.Add_Click({Invoke-Hyperlink -URL "https://github.com/MScholtes" $this $_})
$ui_dockpanel14.Add_Click({Invoke-Hyperlink -URL "https://poshgui.com" $this $_})
$ui_dockpanel15.Add_Click({Invoke-Hyperlink -URL "https://twitter.com/poshgui" $this $_})
$ui_dockpanel16.Add_Click({Invoke-Hyperlink -URL "https://github.com/ikarstein" $this $_})
$ui_dockpanel17.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/master/LICENSE" $this $_})
$ui_dockpanel18.Add_Click({Switch-Page -Page 0 $this $_})
$ui_dockpanel19.Add_Click({Switch-Page -Page 0 $this $_})

$State = [PSCustomObject]@{}

function Set-Binding {
    Param($Target,$Property,$Index,$Name,$UpdateSourceTrigger)

    $Binding = New-Object System.Windows.Data.Binding
    $Binding.Path = "["+$Index+"]"
    $Binding.Mode = [System.Windows.Data.BindingMode]::TwoWay
    if($UpdateSourceTrigger -ne $null){$Binding.UpdateSourceTrigger = $UpdateSourceTrigger}

    [void]$Target.SetBinding($Property,$Binding)
}

function FillDataContext($props){
    for ($i=0; $i -lt $props.Length; $i++) {
        $prop = $props[$i]
        $DataContext.Add($DataObject."$prop")
        $getter = [scriptblock]::Create("Write-Output `$DataContext['$i'] -noenumerate")
        $setter = [scriptblock]::Create("param(`$val) return `$DataContext['$i']=`$val")
        $State | Add-Member -Name $prop -MemberType ScriptProperty -Value  $getter -SecondValue $setter
    }
}

$DataObject =  ConvertFrom-Json @"

{
	"TabIndex" : 2,
	"ui_inputFile" : "",
	"ui_outputFile" : "",
	"ui_iconFile" : "",
	"ui_title" : "",
	"ui_description" : "",
	"ui_company" : "",
	"ui_product" : "",
	"ui_copyright" : "",
	"ui_trademark" : "",
	"ui_version" : "",
	"ui_runtime" : ["[runtime20] .NET Framework 2.0/3.x for PowerShell 2.0","[runtime40] .NET Framework 4.x for PowerShell 3.0"],
	"ui_instructionSet" : ["x86 - 32-Bit Application","x64 - 64-Bit Application"],
	"ui_threadApartment" : ["STA - Single Thread Apartment","MTA - Multi Thread Apartment"],
	"ui_prepareDebug" : false,
	"ui_noConsole" : false,
	"ui_UNICODEEncoding" : true,
	"ui_credentialGUI" : false,
	"ui_configFile" : false,
	"ui_noOutput" : false,
	"ui_noError" : false,
	"ui_noVisualStyles" : false,
	"ui_exitOnCancel" : false,
	"ui_DPIAware" : false,
	"ui_winFormsDPIAware" : false,
	"ui_requireAdmin" : false,
	"ui_supportOS" : true,
	"ui_virtualize" : false,
	"ui_longPaths" : false,
	"ui_extractable" : false,
	"tooltip_inputFile" : "Powershell script to convert to executable (file has to be UTF8 or UTF16 encoded)",
	"tooltip_outputFile" : "destination executable file name or folder, defaults to inputFile with extension '.exe'",
	"tooltip_iconFile" : "icon file name for the compiled executable",
	"tooltip_title" : "title information (displayed in details tab of Windows Explorer's properties dialog)",
	"tooltip_description" : "description information (not displayed, but embedded in executable)",
	"tooltip_company" : "company information (not displayed, but embedded in executable)",
	"tooltip_product" : "product information (displayed in details tab of Windows Explorer's properties dialog)",
	"tooltip_copyright" : "copyright information (displayed in details tab of Windows Explorer's properties dialog)",
	"tooltip_trademark" : "trademark information (displayed in details tab of Windows Explorer's properties dialog)",
	"tooltip_version" : "version information (displayed in details tab of Windows Explorer's properties dialog)",
	"tooltip_runtime" : "this switch forces PS2EXE to create a config file for the generated executable, for the selected setting",
	"tooltip_instructionSet" : "compile for 32-bit or 64-bit runtime",
	"tooltip_threadApartment" : "compile for Single- or Multithreaded Apartment mode",
	"tooltip_prepareDebug" : "create helpful information for debugging of generated executable. See parameter -debug there",
	"tooltip_noConsole" : "the resulting executable will be a Windows Forms app without a console window. You might want to pipe your output to Out-String to prevent a message box for every line of output (example: dir C:\\ | Out-String)",
	"tooltip_UNICODEEncoding" : "encode output as UNICODE in console mode, useful to display special encoded chars",
	"tooltip_credentialGUI" : "use GUI for prompting credentials in console mode instead of console input",
	"tooltip_configFile" : "write a config file (<outputfile>.exe.config)",
	"tooltip_noOutput" : "the resulting executable will generate no standard output (includes verbose and information channel)",
	"tooltip_noError" : "the resulting executable will generate no error output (includes warning and debug channel)",
	"tooltip_noVisualStyles" : "disable visual styles for a generated windows GUI application. Only applicable with parameter -noConsole",
	"tooltip_exitOnCancel" : "exits program when Cancel or 'X' is selected in a Read-Host input box. Only applicable with parameter -noConsole",
	"tooltip_DPIAware" : "if display scaling is activated, GUI controls will be scaled if possible. Only applicable with parameter -noConsole",
	"tooltip_winFormsDPIAware" : "if display scaling is activated, WinForms use DPI scaling (requires Windows 10 and .Net 4.7 or up)",
	"tooltip_requireAdmin" : "if UAC is enabled, compiled executable will run only in elevated context (UAC dialog appears if required)",
	"tooltip_supportOS" : "use functions of newest Windows versions (execute [Environment]::OSVersion to see the difference)",
	"tooltip_virtualize" : "application virtualization is activated (forcing x86 runtime)",
	"tooltip_longPaths" : "enable long paths ( > 260 characters) if enabled on OS (works only with Windows 10)",
	"tooltip_extractable" : "enables extract-Function (\u003Capplication.exe\u003e -extract:\u003CFILENAME\u003e)",
	"state_compile": false,
	"state_compiled": false,
	"state_inputFile": "#FFABADB3",
	"value_runtime":"[runtime40] .NET Framework 4.x for PowerShell 3.0",
	"value_instructionSet":"x86 - 32-Bit Application",
	"value_threadApartment":"STA - Single Thread Apartment",
	"value_console":"Console - PS2EXE-GUI`n",
	"value_console_command": "",
	"value_console_root": ""
}

"@

$DataContext = New-Object System.Collections.ObjectModel.ObservableCollection[Object]
FillDataContext @("TabIndex","ui_inputFile","ui_outputFile","ui_iconFile","ui_title","ui_description","ui_company","ui_product","ui_copyright","ui_trademark","ui_version","ui_runtime","ui_instructionSet","ui_threadApartment","ui_prepareDebug","ui_noConsole","ui_UNICODEEncoding","ui_credentialGUI","ui_configFile","ui_noOutput","ui_noError","ui_noVisualStyles","ui_exitOnCancel","ui_DPIAware","ui_winFormsDPIAware","ui_requireAdmin","ui_supportOS","ui_virtualize","ui_longPaths","ui_extractable","tooltip_inputFile","tooltip_outputFile","tooltip_iconFile","tooltip_title","tooltip_description","tooltip_company","tooltip_product","tooltip_copyright","tooltip_trademark","tooltip_version","tooltip_runtime","tooltip_instructionSet","tooltip_threadApartment","tooltip_prepareDebug","tooltip_noConsole","tooltip_UNICODEEncoding","tooltip_credentialGUI","tooltip_configFile","tooltip_noOutput","tooltip_noError","tooltip_noVisualStyles","tooltip_exitOnCancel","tooltip_DPIAware","tooltip_winFormsDPIAware","tooltip_requireAdmin","tooltip_supportOS","tooltip_virtualize","tooltip_longPaths","tooltip_extractable","state_compile","state_compiled","state_inputFile","value_runtime","value_instructionSet","value_threadApartment","value_console","value_console_command","value_console_root") 

$Window.DataContext = $DataContext
Set-Binding -Target $ui_dockpanel11 -Property $([System.Windows.Controls.TabControl]::SelectedIndexProperty) -Index 0 -Name "TabIndex"  
Set-Binding -Target $dom_textbox_inputFile -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 30 -Name "tooltip_inputFile"  
Set-Binding -Target $dom_textbox_inputFile -Property $([System.Windows.Controls.TextBox]::BorderBrushProperty) -Index 61 -Name "state_inputFile"  
Set-Binding -Target $dom_textbox_inputFile -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 1 -Name "ui_inputFile"  
Set-Binding -Target $dom_textbox_outputFile -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 31 -Name "tooltip_outputFile"  
Set-Binding -Target $dom_textbox_outputFile -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 2 -Name "ui_outputFile"  
Set-Binding -Target $dom_textbox_iconFile -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 32 -Name "tooltip_iconFile"  
Set-Binding -Target $dom_textbox_iconFile -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 3 -Name "ui_iconFile"  
Set-Binding -Target $dom_textbox_title -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 33 -Name "tooltip_title"  
Set-Binding -Target $dom_textbox_title -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 4 -Name "ui_title"  
Set-Binding -Target $dom_textbox_description -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 34 -Name "tooltip_description"  
Set-Binding -Target $dom_textbox_description -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 5 -Name "ui_description"  
Set-Binding -Target $dom_textbox_company -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 35 -Name "tooltip_company"  
Set-Binding -Target $dom_textbox_company -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 6 -Name "ui_company"  
Set-Binding -Target $dom_textbox_product -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 36 -Name "tooltip_product"  
Set-Binding -Target $dom_textbox_product -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 7 -Name "ui_product"  
Set-Binding -Target $dom_textbox_copyright -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 37 -Name "tooltip_copyright"  
Set-Binding -Target $dom_textbox_copyright -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 8 -Name "ui_copyright"  
Set-Binding -Target $dom_textbox_trademark -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 38 -Name "tooltip_trademark"  
Set-Binding -Target $dom_textbox_trademark -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 9 -Name "ui_trademark"  
Set-Binding -Target $dom_textbox_version -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 39 -Name "tooltip_version"  
Set-Binding -Target $dom_textbox_version -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 10 -Name "ui_version"  
Set-Binding -Target $dom_combobox_runtime -Property $([System.Windows.Controls.ComboBox]::ToolTipProperty) -Index 40 -Name "tooltip_runtime"  
Set-Binding -Target $dom_combobox_runtime -Property $([System.Windows.Controls.ComboBox]::ItemsSourceProperty) -Index 11 -Name "ui_runtime"  
Set-Binding -Target $dom_combobox_runtime -Property $([System.Windows.Controls.ComboBox]::SelectedValueProperty) -Index 62 -Name "value_runtime"  
Set-Binding -Target $dom_combobox_instructionSet -Property $([System.Windows.Controls.ComboBox]::ToolTipProperty) -Index 41 -Name "tooltip_instructionSet"  
Set-Binding -Target $dom_combobox_instructionSet -Property $([System.Windows.Controls.ComboBox]::ItemsSourceProperty) -Index 12 -Name "ui_instructionSet"  
Set-Binding -Target $dom_combobox_instructionSet -Property $([System.Windows.Controls.ComboBox]::SelectedValueProperty) -Index 63 -Name "value_instructionSet"  
Set-Binding -Target $dom_combobox_threadApartment -Property $([System.Windows.Controls.ComboBox]::ToolTipProperty) -Index 42 -Name "tooltip_threadApartment"  
Set-Binding -Target $dom_combobox_threadApartment -Property $([System.Windows.Controls.ComboBox]::ItemsSourceProperty) -Index 13 -Name "ui_threadApartment"  
Set-Binding -Target $dom_combobox_threadApartment -Property $([System.Windows.Controls.ComboBox]::SelectedValueProperty) -Index 64 -Name "value_threadApartment"  
Set-Binding -Target $dom_checkbox_prepareDebug -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 43 -Name "tooltip_prepareDebug"  
Set-Binding -Target $dom_checkbox_prepareDebug -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 14 -Name "ui_prepareDebug"  
Set-Binding -Target $dom_checkbox_noConsole -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 44 -Name "tooltip_noConsole"  
Set-Binding -Target $dom_checkbox_noConsole -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 15 -Name "ui_noConsole"  
Set-Binding -Target $dom_checkbox_UNICODEEncoding -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 45 -Name "tooltip_UNICODEEncoding"  
Set-Binding -Target $dom_checkbox_UNICODEEncoding -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 16 -Name "ui_UNICODEEncoding"  
Set-Binding -Target $dom_checkbox_credentialGUI -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 46 -Name "tooltip_credentialGUI"  
Set-Binding -Target $dom_checkbox_credentialGUI -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 17 -Name "ui_credentialGUI"  
Set-Binding -Target $dom_checkbox_configfile -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 47 -Name "tooltip_configFile"  
Set-Binding -Target $dom_checkbox_configfile -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 18 -Name "ui_configFile"  
Set-Binding -Target $dom_checkbox_noOutput -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 48 -Name "tooltip_noOutput"  
Set-Binding -Target $dom_checkbox_noOutput -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 19 -Name "ui_noOutput"  
Set-Binding -Target $dom_checkbox_noError -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 49 -Name "tooltip_noError"  
Set-Binding -Target $dom_checkbox_noError -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 20 -Name "ui_noError"  
Set-Binding -Target $dom_checkbox_noVisualStyles -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 50 -Name "tooltip_noVisualStyles"  
Set-Binding -Target $dom_checkbox_noVisualStyles -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 21 -Name "ui_noVisualStyles"  
Set-Binding -Target $dom_checkbox_exitOnCancel -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 51 -Name "tooltip_exitOnCancel"  
Set-Binding -Target $dom_checkbox_exitOnCancel -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 22 -Name "ui_exitOnCancel"  
Set-Binding -Target $dom_checkbox_DPIAware -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 52 -Name "tooltip_DPIAware"  
Set-Binding -Target $dom_checkbox_DPIAware -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 23 -Name "ui_DPIAware"  
Set-Binding -Target $dom_checkbox_winFormsDPIAware -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 53 -Name "tooltip_winFormsDPIAware"  
Set-Binding -Target $dom_checkbox_winFormsDPIAware -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 24 -Name "ui_winFormsDPIAware"  
Set-Binding -Target $dom_checkbox_requireAdmin -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 54 -Name "tooltip_requireAdmin"  
Set-Binding -Target $dom_checkbox_requireAdmin -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 25 -Name "ui_requireAdmin"  
Set-Binding -Target $dom_checkbox_supportOS -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 55 -Name "tooltip_supportOS"  
Set-Binding -Target $dom_checkbox_supportOS -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 26 -Name "ui_supportOS"  
Set-Binding -Target $dom_checkbox_virtualize -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 56 -Name "tooltip_virtualize"  
Set-Binding -Target $dom_checkbox_virtualize -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 27 -Name "ui_virtualize"  
Set-Binding -Target $dom_checkbox_longPaths -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 57 -Name "tooltip_longPaths"  
Set-Binding -Target $dom_checkbox_longPaths -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 28 -Name "ui_longPaths"  
Set-Binding -Target $dom_checkbox_extractable -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 58 -Name "tooltip_extractable"  
Set-Binding -Target $dom_checkbox_extractable -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 29 -Name "ui_extractable"  
Set-Binding -Target $dom_button_compile -Property $([System.Windows.Controls.Button]::IsEnabledProperty) -Index 59 -Name "state_compile"  
Set-Binding -Target $PS2EXE_Console -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 65 -Name "value_console"  
Set-Binding -Target $ui_dockpanel19 -Property $([System.Windows.Controls.Button]::IsEnabledProperty) -Index 60 -Name "state_compiled"  
$Global:SyncHash = [HashTable]::Synchronized(@{})
$SyncHash.Window = $Window
$Jobs = [System.Collections.ArrayList]::Synchronized([System.Collections.ArrayList]::new())
$initialSessionState = [initialsessionstate]::CreateDefault()

function Start-RunspaceTask {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, Position = 0)][ScriptBlock]$ScriptBlock,
        [Parameter(Mandatory = $True, Position = 1)][PSObject[]]$ProxyVars
    )

    $Runspace = [RunspaceFactory]::CreateRunspace($InitialSessionState)
    $Runspace.ApartmentState = 'STA'
    $Runspace.ThreadOptions = 'ReuseThread'
    $Runspace.Open()
    ForEach ($Var in $ProxyVars) { $Runspace.SessionStateProxy.SetVariable($Var.Name, $Var.Variable) }
    $Thread = [PowerShell]::Create('NewRunspace')
    $Thread.AddScript($ScriptBlock) | Out-Null
    $Thread.Runspace = $Runspace
    [Void]$Jobs.Add([PSObject]@{ PowerShell = $Thread ; Runspace = $Thread.BeginInvoke() })
}

$JobCleanupScript = {
    do {
        ForEach ($Job in $Jobs) {
            If ($Job.Runspace.IsCompleted) {
                [Void]$Job.Powershell.EndInvoke($Job.Runspace)
                $Job.PowerShell.Runspace.Close()
                $Job.PowerShell.Runspace.Dispose()
                $Job.Powershell.Dispose()
                $Jobs.Remove($Job)
            }
        }
        Start-Sleep -Seconds 1
    }
    while ($SyncHash.CleanupJobs)
}

Get-ChildItem Function: | Where-Object { $_.name -notlike "*:*" } |  Select-Object name -ExpandProperty name |
ForEach-Object {
    $Definition = Get-Content "function:$_" -ErrorAction Stop
    $SessionStateFunction = New-Object System.Management.Automation.Runspaces.SessionStateFunctionEntry -ArgumentList "$_", $Definition
    $InitialSessionState.Commands.Add($SessionStateFunction)
}


$Window.Add_Closed({
    Write-Verbose 'Halt runspace cleanup job processing'
    $SyncHash.CleanupJobs = $False
})

$SyncHash.CleanupJobs = $True
function Async($scriptBlock) { Start-RunspaceTask $scriptBlock @([PSObject]@{ Name = 'DataContext' ; Variable = $DataContext }, [PSObject]@{Name = "State"; Variable = $State }, [PSObject]@{Name = "SyncHash"; Variable = $SyncHash }) }

Start-RunspaceTask $JobCleanupScript @([PSObject]@{ Name = 'Jobs' ; Variable = $Jobs }, [PSObject]@{Name = "SyncHash"; Variable = $SyncHash})$Window.ShowDialog()


