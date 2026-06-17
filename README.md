![Logo](https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/main/resources/graphics/logo/logo_header_small_colored.png?raw=true)

# PS2EXE-GUI

This project provides a advanced graphical user interface for [PS2EXE](https://github.com/MScholtes/Win-PS2EXE), which is a PowerShell-script to Windows-executable converter (`ps1`→`exe`).<br><br>

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/c03fe42c3a28471dbc99e92918f4fc20)](https://www.codacy.com/gh/Hope-IT-Works/PS2EXE-GUI/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Hope-IT-Works/PS2EXE-GUI&amp;utm_campaign=Badge_Grade)
[![CodeFactor](https://www.codefactor.io/repository/github/hope-it-works/ps2exe-gui/badge)](https://www.codefactor.io/repository/github/hope-it-works/ps2exe-gui)

## Development Progress

PS2EXE-GUI is still in development but is usable.

As you may have noticed, the project has not been updated for a while. I will get back to it as soon as possible. I'm sorry for the inconvenience.

| Feature                          | Status | ETA |
|----------------------------------|--------|-----|
| add all p2exe fields             | ✅ | ✅ |
| add tooltip to all ps2exe fields | ✅ | ✅ |
| add about page                   | ✅ | ✅ |
| mark required ps2exe fields      | ✅ | ✅ |
| get ps2exe call done             | ✅ | ✅ |
| add ps2exe-script update         | ✅ | ✅ |
| release first build              | ⏳ | *not specified* |
| add save files                   | ✅ | ✅ |
| release second build             | ⏳ | *not specified* |
| integrate [PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) | 🔜 | *not specified* |
| release third build              | 🔜 | *not specified* |

## Parameter Support Comparison

| Parameter | PS2EXE-GUI | [Win-PS2EXE](https://github.com/MScholtes/Win-PS2EXE) |
| - | :-: | :-: |
| inputFile        | ✅ | ✅ |
| outputFile       | ✅ | ✅ |
| iconFile         | ✅ | ✅ |
| title            | ✅ | ❌ |
| description      | ✅ | ✅ |
| company          | ✅ | ❌ |
| product          | ✅ | ✅ |
| copyright        | ✅ | ✅ |
| trademark        | ✅ | ❌ |
| version          | ✅ | ✅ |
| runtime          | ✅ | ❌ |
| instructionSet   | ✅ | ✅ |
| threadApartment  | ✅ | ✅ |
| prepareDebug     | ✅ | ❌ |
| noConsole        | ✅ | ✅ |
| UNICODEEncoding  | ✅ | ❌ |
| credentialGUI    | ✅ | ❌ |
| configFile       | ✅ | ✅ |
| noOutput         | ✅ | ✅ |
| noError          | ✅ | ✅ |
| noVisualStyles   | ✅ | ❌ |
| exitOnCancel     | ✅ | ❌ |
| DPIAware         | ✅ | ❌ |
| winFormsDPIAware | ✅ | ❌ |
| requireAdmin     | ✅ | ✅ |
| supportOS        | ✅ | ❌ |
| virtualize       | ✅ | ❌ |
| longPaths        | ✅ | ❌ |
| **BONUS:** extractable[^extractable] | ⏳(TODO) | ❌ |

[^extractable]: Allows you to choose, if the user can extract the `.ps1` out of the `.exe` file. Is and will not be supported by [PS2EXE](https://github.com/MScholtes/Win-PS2EXE/blob/master/ps2exe.ps1) by default ([issue](https://github.com/MScholtes/TechNet-Gallery/issues/3)), but PS2EXE-GUI takes care of this.

## Screenshot

<img alt="Screenshot from the Main Page" src="https://user-images.githubusercontent.com/52013820/192851884-003dac29-bece-4964-bef8-9948bd0a8494.png" width="50%" style="display: inline; margin: 0; padding: 0;"><img alt="Screenshot from the Console Page" src="https://user-images.githubusercontent.com/52013820/196063461-90e4f9a0-71f7-4c0d-b536-4c9756b4bee2.png" width="50%" style="display: inline; margin: 0; padding: 0;">

## Usage

1. Clone this repository
2. Download the latest version of [`ps2exe.ps1`](https://github.com/MScholtes/Win-PS2EXE/blob/master/ps2exe.ps1) into the `.\src\` directory
3. Open PowerShell and navigate to the `.\src` directory
4. Run `.\PS2EXE-GUI.ps1`
5. Select a `.ps1` file and configure the settings as you like
6. Click on `Compile` and wait for the process to finish
7. The `.exe` file will be saved in the same directory as the selected `.ps1` file
8. Finished! 🎉

## About the project

This Project uses the further developed version of [PS2EXE](https://github.com/MScholtes/Win-PS2EXE/blob/master/ps2exe.ps1) by [Markus Scholtes](https://github.com/MScholtes) licensed under the Microsoft Public License (MC-PL).

The GUI of PS2EXE-GUI was made with [POSHGUI](https://poshgui.com) by [Maciej Obuchowski](https://twitter.com/poshgui).

PS2EXE was initially developed by [Ingo Karstein](https://github.com/ikarstein).

This project is licensed under the [Apache License 2.0](https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/main/LICENSE).

## Stars over time

[![Stargazers over time](https://starchart.cc/Hope-IT-Works/PS2EXE-GUI.svg)](https://starchart.cc/Hope-IT-Works/PS2EXE-GUI)
