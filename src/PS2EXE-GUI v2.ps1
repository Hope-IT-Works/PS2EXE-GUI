
#-------------------------------------------------------------#
#----Initial Declarations-------------------------------------#
#-------------------------------------------------------------#

Add-Type -AssemblyName PresentationCore, PresentationFramework

$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" Width="640" Height="590" Title="PS2EXE-GUI" ResizeMode="NoResize">
<!--d9102811-1fab-4eca-a3f6-f5b6db64722b-->
<TabControl Margin="0,0,0,0" SelectedIndex="{Binding TabIndex}" BorderThickness="0,0,0,0" Name="ui_dockpanel11">
<TabItem Header="Main" Visibility="Collapsed">
<Grid>
    <!-- GUI Elements -->
        <!--rambo-->
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="PS2EXE-GUI" Margin="15,15,0,0" Name="ui_title" FontWeight="Bold" FontSize="14"/>
		<TextBlock HorizontalAlignment="Right" VerticalAlignment="Top" TextWrapping="Wrap" Text="Hope-IT-Works/PS2EXE-GUI" Margin="0,15,15,0"/>
        <Rectangle HorizontalAlignment="Left" VerticalAlignment="Top" Stroke="Gray" Height="475" Width="1" Margin="470,40,0,0"/>
        <Rectangle HorizontalAlignment="Left" VerticalAlignment="Top" Stroke="Gray" Height="1" Width="455" Margin="15,440,0,0"/>
        <Image HorizontalAlignment="Left" Height="74" VerticalAlignment="Top" Width="455" Margin="15,441,0,0" Source="https://github.com/Hope-IT-Works/PS2EXE-GUI/raw/main/resources/graphics/logo/logo_header_small.png?raw=true" Stretch="Uniform"/>
    <!-- inputFile → FILEPATH.ps1 -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,40,0,0" ToolTip="{Binding tooltip_inputFile}" Text="{Binding ui_inputFile}" Name="l87tm1i9opepo"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,40,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="inputFile" Margin="355,40,0,0"/>
    <!-- outputFile → FILEPATH.exe -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,70,0,0" ToolTip="{Binding tooltip_outputFile}" Text="{Binding ui_outputFile}" Name="l87tm1i959pwl"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,70,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="outputFile" Margin="355,70,0,0"/>
    <!-- iconFile → FILEPATH.ico -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="300" TextWrapping="Wrap" Margin="15,100,0,0" ToolTip="{Binding tooltip_iconFile}" Text="{Binding ui_iconFile}" Name="l87tm1i9xmefq"/>
        <Button Content="..." HorizontalAlignment="Left" VerticalAlignment="Top" Width="25" Margin="320,100,0,0"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="iconFile" Margin="355,100,0,0"/>
    <!-- title → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,130,0,0" ToolTip="{Binding tooltip_title}" Text="{Binding ui_title}" Name="l87tm1i9j8iql"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="title" Margin="355,130,0,0"/>
    <!-- description → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,160,0,0" ToolTip="{Binding tooltip_description}" Text="{Binding ui_description}" Name="l87tm1i9utvpy"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="description" Margin="355,160,0,0"/>
    <!-- company → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,190,0,0" ToolTip="{Binding tooltip_company}" Text="{Binding ui_company}" Name="l87tm1i9zdw6r"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="company" Margin="355,190,0,0"/>
    <!-- product → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,220,0,0" ToolTip="{Binding tooltip_product}" Text="{Binding ui_product}" Name="l87tm1i9863lw"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="product" Margin="355,220,0,0"/>
    <!-- copyright → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,250,0,0" ToolTip="{Binding tooltip_copyright}" Text="{Binding ui_copyright}" Name="l87tm1i9s1023"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="copyright" Margin="355,250,0,0"/>
    <!-- trademark → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,280,0,0" ToolTip="{Binding tooltip_trademark}" Text="{Binding ui_trademark}" Name="l87tm1i93ed81"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="trademark" Margin="355,280,0,0"/>
    <!-- version → TEXTBOX -->
        <TextBox HorizontalAlignment="Left" VerticalAlignment="Top" Height="20" Width="330" TextWrapping="Wrap" Margin="15,310,0,0" ToolTip="{Binding tooltip_version}" Text="{Binding ui_version}" Name="l87tm1i9mc1f6"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="version" Margin="355,310,0,0"/>
    <!-- runtime → COMBOBOX
        - runtime20
        - runtime40
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,340,0,0" ToolTip="{Binding tooltip_runtime}" ItemsSource="{Binding ui_runtime}" SelectedIndex="1" Name="l87tm1i94w59g"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="runtime" Margin="355,340,0,0"/>
    <!-- instructionSet → COMBOBOX
        - x86
        - x64
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,370,0,0" ToolTip="{Binding tooltip_instructionSet}" ItemsSource="{Binding ui_instructionSet}" SelectedIndex="0" Name="l87tm1i9bwfm4"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="instructionSet" Margin="355,370,0,0"/>
    <!-- threadApartment → COMBOBOX
        - STA
        - MTA
    -->
        <ComboBox HorizontalAlignment="Left" VerticalAlignment="Top" Width="330" Margin="15,400,0,0" ToolTip="{Binding tooltip_threadApartment}" ItemsSource="{Binding ui_threadApartment}" SelectedIndex="0" Name="l87tm1ia48hco"/>
        <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="threadApartment" Margin="355,400,0,0"/>
    <!-- prepareDebug → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="prepareDebug" Margin="490,40,0,0" ToolTip="{Binding tooltip_prepareDebug}" IsChecked="{Binding ui_prepareDebug}" Name="l87tm1ia81jyo"/>
    <!-- noConsole → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noConsole" Margin="490,70,0,0" ToolTip="{Binding tooltip_noConsole}" IsChecked="{Binding ui_noConsole}" Name="l87tm1iaidbd5"/>
    <!-- UNICODEEncoding → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="UNICODEEncoding" Margin="490,100,0,0" ToolTip="{Binding tooltip_UNICODEEncoding}" IsChecked="{Binding ui_UNICODEEncoding}" Name="l87tm1ia03z4c"/>
    <!-- credentialGUI → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="credentialGUI" Margin="490,130,0,0" ToolTip="{Binding tooltip_credentialGUI}" IsChecked="{Binding ui_credentialGUI}" Name="l87tm1iaf0m7f"/>
    <!-- configFile → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="configFile" Margin="490,160,0,0" ToolTip="{Binding tooltip_configFile}" IsChecked="{Binding ui_configFile}" Name="l87tm1ia7gr6b"/>
    <!-- noOutput → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noOutput" Margin="490,190,0,0" ToolTip="{Binding tooltip_noOutput}" IsChecked="{Binding ui_noOutput}" Name="l87tm1iaiskhx"/>
    <!-- noError → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noError" Margin="490,220,0,0" ToolTip="{Binding tooltip_noError}" IsChecked="{Binding ui_noError}" Name="l87tm1iabmtcy"/>
    <!-- noVisualStyles → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="noVisualStyles" Margin="490,250,0,0" ToolTip="{Binding tooltip_noVisualStyles}" IsChecked="{Binding ui_noVisualStyles}" Name="l87tm1iagcwvy"/>
    <!-- exitOnCancel → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="exitOnCancel" Margin="490,280,0,0" ToolTip="{Binding tooltip_exitOnCancel}" IsChecked="{Binding ui_exitOnCancel}" Name="l87tm1ia6t3vw"/>
    <!-- DPIAware → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="DPIAware" Margin="490,310,0,0" ToolTip="{Binding tooltip_DPIAware}" IsChecked="{Binding ui_DPIAware}" Name="l87tm1iattc08"/>
    <!-- requireAdmin → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="requireAdmin" Margin="490,340,0,0" ToolTip="{Binding tooltip_requireAdmin}" IsChecked="{Binding ui_requireAdmin}" Name="l87tm1iav7jkr"/>
    <!-- supportOS → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="supportOS" Margin="490,370,0,0" ToolTip="{Binding tooltip_supportOS}" IsChecked="{Binding ui_supportOS}" Name="l87tm1iadt9ly"/>
    <!-- virtualize → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="virtualize" Margin="490,400,0,0" ToolTip="{Binding tooltip_virtualize}" IsChecked="{Binding ui_virtualize}" Name="l87tm1ia1k8wy"/>
    <!-- longPaths → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="longPaths" Margin="490,430,0,0" ToolTip="{Binding tooltip_longPaths}" IsChecked="{Binding ui_longPaths}" Name="l87tm1iaptxp3"/>
    <!-- extractable → CHECKBOX -->
        <CheckBox HorizontalAlignment="Left" VerticalAlignment="Top" Content="extractable" Margin="490,460,0,0" ToolTip="{Binding tooltip_extractable}" IsChecked="{Binding ui_extractable}" Name="l87tm1iarbcbv"/>
    <!-- Compile-Button -->
        <Button Content="Compile" HorizontalAlignment="Left" VerticalAlignment="Top" Width="120" Margin="490,490,0,0" Height="25"/>
</Grid>
</TabItem>
<TabItem Header="About" Visibility="Collapsed">
<Grid>
    <TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Margin="15,15,0,0" FontSize="14">
        <Bold>PS2EXE GUI</Bold>
        <LineBreak/>
        a project by Tobias Meyer
        <LineBreak/>
        <LineBreak/>
        Version 1.0.0.0
        <LineBreak/>
        <LineBreak/>
        This Project uses the further developed version of PS2EXE by <Hyperlink Name="ui_dockpanel12">Markus Scholtes</Hyperlink> licensed under the Microsoft Public License (MC-PL).
        <LineBreak/>
        The GUI of PS2EXE-GUI was made with <Hyperlink Name="ui_dockpanel13">POSHGUI</Hyperlink> by <Hyperlink Name="ui_dockpanel14">Maciej Obuchowski</Hyperlink>.
        <LineBreak/>
        PS2EXE was initially developed by <Hyperlink Name="ui_dockpanel15">Ingo Karstein</Hyperlink>.
        <LineBreak/>
        <LineBreak/>
        This project is licensed under the <Hyperlink Name="ui_dockpanel16">Apache License 2.0</Hyperlink>.
    </TextBlock>
    <Button HorizontalAlignment="Right" VerticalAlignment="Bottom" Width="100" Height="25" Margin="0,0,15,12" Content="← Back" Name="ui_dockpanel17"/>
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
    Write-Host "This function is not implemented right now."
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
            <MenuItem Header="_New" Name="ui_dockpanel01"/>
            <MenuItem Header="_Open" Name="ui_dockpanel02"/>
            <Separator />
            <MenuItem Header="_Save" Name="ui_dockpanel03"/>
            <MenuItem Header="_Save As..." Name="ui_dockpanel04"/>
            <Separator />
            <MenuItem Header="_Exit" Name="ui_dockpanel05"/>
        </MenuItem>
        <MenuItem Header="_Help">
            <MenuItem Header="_View Help" Name="ui_dockpanel06"/>
            <MenuItem Header="_Send Feedback" Name="ui_dockpanel07"/>
            <Separator />
            <MenuItem Header="_Check for PS2EXE-GUI Update" Name="ui_dockpanel08"/>
            <MenuItem Header="_Check for ps2exe.ps1 Update" Name="ui_dockpanel09"/>
            <Separator />
            <MenuItem Header="_About P2EXE-GUI" Name="ui_dockpanel10"/>
        </MenuItem>
    </Menu>
'@)
$Xaml = $Xaml.Replace('<!--039aaa3d-1014-4b1d-b7ae-6aedd03aa21b-->','</DockPanel>')

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)
[xml]$xml = $Xaml
$xml.SelectNodes("//*[@Name]") | Where-Object {$_.Name -match "ui_dockpanel\d\d"} | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }

$ui_dockpanel01.Add_Click({Invoke-Dummy $this $_})
$ui_dockpanel02.Add_Click({Invoke-Dummy $this $_})
$ui_dockpanel03.Add_Click({Invoke-Dummy $this $_})
$ui_dockpanel04.Add_Click({Invoke-Dummy $this $_})
$ui_dockpanel05.Add_Click({Stop-PS2EXEGUI $this $_})
$ui_dockpanel06.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/wiki" $this $_})
$ui_dockpanel07.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/issues" $this $_})
$ui_dockpanel08.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/releases" $this $_})
$ui_dockpanel09.Add_Click({Invoke-Hyperlink -URL "https://github.com/MScholtes/Win-PS2EXE/commits/master/ps2exe.ps1" $this $_})
$ui_dockpanel10.Add_Click({Switch-Page -Page 1 $this $_})
#endregion 


#-------------------------------------------------------------#
#----Script Execution-----------------------------------------#
#-------------------------------------------------------------#

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)

[xml]$xml = $Xaml

$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }


$ui_dockpanel12.Add_Click({Invoke-Hyperlink -URL "https://github.com/MScholtes" $this $_})
$ui_dockpanel13.Add_Click({Invoke-Hyperlink -URL "https://poshgui.com" $this $_})
$ui_dockpanel14.Add_Click({Invoke-Hyperlink -URL "https://twitter.com/poshgui" $this $_})
$ui_dockpanel15.Add_Click({Invoke-Hyperlink -URL "https://github.com/ikarstein" $this $_})
$ui_dockpanel16.Add_Click({Invoke-Hyperlink -URL "https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/master/LICENSE" $this $_})
$ui_dockpanel17.Add_Click({Switch-Page -Page 0 $this $_})

$State = [PSCustomObject]@{}


Function Set-Binding {
    Param($Target,$Property,$Index,$Name,$UpdateSourceTrigger)
 
    $Binding = New-Object System.Windows.Data.Binding
    $Binding.Path = "["+$Index+"]"
    $Binding.Mode = [System.Windows.Data.BindingMode]::TwoWay
    if($UpdateSourceTrigger -ne $null){$Binding.UpdateSourceTrigger = $UpdateSourceTrigger}


    [void]$Target.SetBinding($Property,$Binding)
}

function FillDataContext($props){

    For ($i=0; $i -lt $props.Length; $i++) {
   
   $prop = $props[$i]
   $DataContext.Add($DataObject."$prop")
   
    $getter = [scriptblock]::Create("Write-Output `$DataContext['$i'] -noenumerate")
    $setter = [scriptblock]::Create("param(`$val) return `$DataContext['$i']=`$val")
    $State | Add-Member -Name $prop -MemberType ScriptProperty -Value  $getter -SecondValue $setter
               
       }
   }



$DataObject =  ConvertFrom-Json @"

{
	"TabIndex" : 0,
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
	"tooltip_requireAdmin" : "if UAC is enabled, compiled executable will run only in elevated context (UAC dialog appears if required)",
	"tooltip_supportOS" : "use functions of newest Windows versions (execute [Environment]::OSVersion to see the difference)",
	"tooltip_virtualize" : "application virtualization is activated (forcing x86 runtime)",
	"tooltip_longPaths" : "enable long paths ( > 260 characters) if enabled on OS (works only with Windows 10)",
	"tooltip_extractable" : "enables extract-Function (\u003Capplication.exe\u003e -extract:\u003CFILENAME\u003e)"
}

"@

$DataContext = New-Object System.Collections.ObjectModel.ObservableCollection[Object]
FillDataContext @("TabIndex","ui_inputFile","ui_outputFile","ui_iconFile","ui_title","ui_description","ui_company","ui_product","ui_copyright","ui_trademark","ui_version","ui_runtime","ui_instructionSet","ui_threadApartment","ui_prepareDebug","ui_noConsole","ui_UNICODEEncoding","ui_credentialGUI","ui_configFile","ui_noOutput","ui_noError","ui_noVisualStyles","ui_exitOnCancel","ui_DPIAware","ui_requireAdmin","ui_supportOS","ui_virtualize","ui_longPaths","ui_extractable","tooltip_inputFile","tooltip_outputFile","tooltip_iconFile","tooltip_title","tooltip_description","tooltip_company","tooltip_product","tooltip_copyright","tooltip_trademark","tooltip_version","tooltip_runtime","tooltip_instructionSet","tooltip_threadApartment","tooltip_prepareDebug","tooltip_noConsole","tooltip_UNICODEEncoding","tooltip_credentialGUI","tooltip_configFile","tooltip_noOutput","tooltip_noError","tooltip_noVisualStyles","tooltip_exitOnCancel","tooltip_DPIAware","tooltip_requireAdmin","tooltip_supportOS","tooltip_virtualize","tooltip_longPaths","tooltip_extractable") 

$Window.DataContext = $DataContext
Set-Binding -Target $ui_dockpanel11 -Property $([System.Windows.Controls.TabControl]::SelectedIndexProperty) -Index 0 -Name "TabIndex"  
Set-Binding -Target $l87tm1i9opepo -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 29 -Name "tooltip_inputFile"  
Set-Binding -Target $l87tm1i9opepo -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 1 -Name "ui_inputFile"  
Set-Binding -Target $l87tm1i959pwl -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 30 -Name "tooltip_outputFile"  
Set-Binding -Target $l87tm1i959pwl -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 2 -Name "ui_outputFile"  
Set-Binding -Target $l87tm1i9xmefq -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 31 -Name "tooltip_iconFile"  
Set-Binding -Target $l87tm1i9xmefq -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 3 -Name "ui_iconFile"  
Set-Binding -Target $l87tm1i9j8iql -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 32 -Name "tooltip_title"  
Set-Binding -Target $l87tm1i9j8iql -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 4 -Name "ui_title"  
Set-Binding -Target $l87tm1i9utvpy -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 33 -Name "tooltip_description"  
Set-Binding -Target $l87tm1i9utvpy -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 5 -Name "ui_description"  
Set-Binding -Target $l87tm1i9zdw6r -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 34 -Name "tooltip_company"  
Set-Binding -Target $l87tm1i9zdw6r -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 6 -Name "ui_company"  
Set-Binding -Target $l87tm1i9863lw -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 35 -Name "tooltip_product"  
Set-Binding -Target $l87tm1i9863lw -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 7 -Name "ui_product"  
Set-Binding -Target $l87tm1i9s1023 -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 36 -Name "tooltip_copyright"  
Set-Binding -Target $l87tm1i9s1023 -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 8 -Name "ui_copyright"  
Set-Binding -Target $l87tm1i93ed81 -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 37 -Name "tooltip_trademark"  
Set-Binding -Target $l87tm1i93ed81 -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 9 -Name "ui_trademark"  
Set-Binding -Target $l87tm1i9mc1f6 -Property $([System.Windows.Controls.TextBox]::ToolTipProperty) -Index 38 -Name "tooltip_version"  
Set-Binding -Target $l87tm1i9mc1f6 -Property $([System.Windows.Controls.TextBox]::TextProperty) -Index 10 -Name "ui_version"  
Set-Binding -Target $l87tm1i94w59g -Property $([System.Windows.Controls.ComboBox]::ToolTipProperty) -Index 39 -Name "tooltip_runtime"  
Set-Binding -Target $l87tm1i94w59g -Property $([System.Windows.Controls.ComboBox]::ItemsSourceProperty) -Index 11 -Name "ui_runtime"  
Set-Binding -Target $l87tm1i9bwfm4 -Property $([System.Windows.Controls.ComboBox]::ToolTipProperty) -Index 40 -Name "tooltip_instructionSet"  
Set-Binding -Target $l87tm1i9bwfm4 -Property $([System.Windows.Controls.ComboBox]::ItemsSourceProperty) -Index 12 -Name "ui_instructionSet"  
Set-Binding -Target $l87tm1ia48hco -Property $([System.Windows.Controls.ComboBox]::ToolTipProperty) -Index 41 -Name "tooltip_threadApartment"  
Set-Binding -Target $l87tm1ia48hco -Property $([System.Windows.Controls.ComboBox]::ItemsSourceProperty) -Index 13 -Name "ui_threadApartment"  
Set-Binding -Target $l87tm1ia81jyo -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 42 -Name "tooltip_prepareDebug"  
Set-Binding -Target $l87tm1ia81jyo -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 14 -Name "ui_prepareDebug"  
Set-Binding -Target $l87tm1iaidbd5 -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 43 -Name "tooltip_noConsole"  
Set-Binding -Target $l87tm1iaidbd5 -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 15 -Name "ui_noConsole"  
Set-Binding -Target $l87tm1ia03z4c -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 44 -Name "tooltip_UNICODEEncoding"  
Set-Binding -Target $l87tm1ia03z4c -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 16 -Name "ui_UNICODEEncoding"  
Set-Binding -Target $l87tm1iaf0m7f -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 45 -Name "tooltip_credentialGUI"  
Set-Binding -Target $l87tm1iaf0m7f -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 17 -Name "ui_credentialGUI"  
Set-Binding -Target $l87tm1ia7gr6b -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 46 -Name "tooltip_configFile"  
Set-Binding -Target $l87tm1ia7gr6b -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 18 -Name "ui_configFile"  
Set-Binding -Target $l87tm1iaiskhx -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 47 -Name "tooltip_noOutput"  
Set-Binding -Target $l87tm1iaiskhx -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 19 -Name "ui_noOutput"  
Set-Binding -Target $l87tm1iabmtcy -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 48 -Name "tooltip_noError"  
Set-Binding -Target $l87tm1iabmtcy -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 20 -Name "ui_noError"  
Set-Binding -Target $l87tm1iagcwvy -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 49 -Name "tooltip_noVisualStyles"  
Set-Binding -Target $l87tm1iagcwvy -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 21 -Name "ui_noVisualStyles"  
Set-Binding -Target $l87tm1ia6t3vw -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 50 -Name "tooltip_exitOnCancel"  
Set-Binding -Target $l87tm1ia6t3vw -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 22 -Name "ui_exitOnCancel"  
Set-Binding -Target $l87tm1iattc08 -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 51 -Name "tooltip_DPIAware"  
Set-Binding -Target $l87tm1iattc08 -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 23 -Name "ui_DPIAware"  
Set-Binding -Target $l87tm1iav7jkr -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 52 -Name "tooltip_requireAdmin"  
Set-Binding -Target $l87tm1iav7jkr -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 24 -Name "ui_requireAdmin"  
Set-Binding -Target $l87tm1iadt9ly -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 53 -Name "tooltip_supportOS"  
Set-Binding -Target $l87tm1iadt9ly -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 25 -Name "ui_supportOS"  
Set-Binding -Target $l87tm1ia1k8wy -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 54 -Name "tooltip_virtualize"  
Set-Binding -Target $l87tm1ia1k8wy -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 26 -Name "ui_virtualize"  
Set-Binding -Target $l87tm1iaptxp3 -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 55 -Name "tooltip_longPaths"  
Set-Binding -Target $l87tm1iaptxp3 -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 27 -Name "ui_longPaths"  
Set-Binding -Target $l87tm1iarbcbv -Property $([System.Windows.Controls.CheckBox]::ToolTipProperty) -Index 56 -Name "tooltip_extractable"  
Set-Binding -Target $l87tm1iarbcbv -Property $([System.Windows.Controls.CheckBox]::IsCheckedProperty) -Index 28 -Name "ui_extractable"  
$Window.ShowDialog()


