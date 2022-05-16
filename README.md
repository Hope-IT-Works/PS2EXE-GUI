![Logo](https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/main/resources/graphics/logo/logo_header_small.png?raw=true)

# PS2EXE-GUI
This project provides a advanced graphical user interface for [PS2EXE](https://github.com/MScholtes/TechNet-Gallery/tree/master/PS2EXE-GUI).<br><br>
_a release will be added shortly_

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/fc8ed47195754619a1c99179ba1e11a7)](https://app.codacy.com/manual/Hope-IT-Works/PS2EXE-GUI?utm_source=github.com&utm_medium=referral&utm_content=Hope-IT-Works/PS2EXE-GUI&utm_campaign=Badge_Grade_Settings)
[![CodeFactor](https://www.codefactor.io/repository/github/hope-it-works/ps2exe-gui/badge)](https://www.codefactor.io/repository/github/hope-it-works/ps2exe-gui)

## Developement Progress
| Feature                          | Status | ETA |
|----------------------------------|--------|-----|
| add all p2exe fields             | ✅     | ✅ |
| add tooltip to all ps2exe fields | ✅     | ✅ |
| add about page                   | ✅     | ✅ |
| mark required ps2exe fields      | ✅     | ✅ |
| get ps2exe call done             | ✅     | ✅ |
| add ps2exe-script update         | ⏳     | Q2/2022 |
| release first build              |        | Q2/2022 |
| add save files                   |        | TBA |
| release second build             |        | TBA |
| integrate [PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) |  | TBA |
| release third build              |        | TBA |
| integrate [SignTool](https://docs.microsoft.com/de-de/dotnet/framework/tools/signtool-exe) |  | TBA |
| release fourth build             |        | TBA |

## Parameter Support
| Parameter | Available |
| --- | :---: |
| inputFile | ✅ |
| outputFile | ✅ |
| prepareDebug | ⏳ |
| runtime20 | ✅ |
| runtime40 | ✅ |
| x86/x64 | ✅ |
| lcid[^lcid-not-necessary] | ❌ |
| STA/MTA | ✅ |
| noConsole | ✅ |
| UNICODEEncoding | ⏳ |
| credentialGUI | ✅ |
| iconFile | ✅ |
| title | ✅ |
| description | ✅ |
| company | ✅ |
| product | ✅ |
| copyright | ✅ |
| trademark | ✅ |
| version | ✅ |
| configFile | ✅ |
| noOutput | ✅ |
| noError | ✅ |
| noVisualStyles | ⏳ |
| exitOnCancel | ⏳ |
| DPIAware | ⏳ |
| requireAdmin | ✅ |
| supportOS | ✅ |
| virtualize | ✅ |
| longPaths | ✅ |
| **BONUS:** extractable[^extractable] | ✅ |

[^lcid-not-necessary]: Doesn't seem necessary. If it is needed, please open an [issue](https://github.com/Hope-IT-Works/PS2EXE-GUI/issues/new).
[^extractable]: Allows you to choose, if the user is able to extract the ps1 out of the `.exe` file.

## Screenshot
![Screenshot](https://i.gyazo.com/92f58f0ce691f38e6042537b1a938afd.png)

## About the project
This Project uses the further developed version of PS2EXE by [Markus Scholtes](https://github.com/MScholtes) licensed under the Microsoft Public License (MC-PL).

The GUI of PS2EXE-GUI was made with [POSHGUI](https://poshgui.com) by [Maciej Obuchowski](https://twitter.com/poshgui).

PS2EXE was initially developed by [Ingo Karstein](https://github.com/ikarstein).

This project is licensed under the [Apache License 2.0](https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/main/LICENSE).

## Stars over time
[![Stargazers over time](https://starchart.cc/Hope-IT-Works/PS2EXE-GUI.svg)](https://starchart.cc/Hope-IT-Works/PS2EXE-GUI)
