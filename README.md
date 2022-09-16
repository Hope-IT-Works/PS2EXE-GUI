![Logo](https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/main/resources/graphics/logo/logo_header_small.png?raw=true)

# PS2EXE-GUI
This project provides a advanced graphical user interface for [PS2EXE](https://github.com/MScholtes/Win-PS2EXE).<br><br>
_a release will be added soon_

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/c03fe42c3a28471dbc99e92918f4fc20)](https://www.codacy.com/gh/Hope-IT-Works/PS2EXE-GUI/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Hope-IT-Works/PS2EXE-GUI&amp;utm_campaign=Badge_Grade)
[![CodeFactor](https://www.codefactor.io/repository/github/hope-it-works/ps2exe-gui/badge)](https://www.codefactor.io/repository/github/hope-it-works/ps2exe-gui)

## Developement Progress

_due to major delays and inconsistency, PS2EXE-GUI will completely be refactored_

| Feature                          | Status | ETA |
|----------------------------------|--------|-----|
| add all p2exe fields             | ✅ | ✅ |
| add tooltip to all ps2exe fields | ✅ | ✅ |
| add about page                   | ⏳ | due 18.09.2022 |
| mark required ps2exe fields      | ⏳ | Q3/2022 |
| get ps2exe call done             | ⏳ | Q3/2022 |
| add ps2exe-script update         | ⏳ | Q3/2022 |
| release first build              | ⏳ | Q3/2022 |
| add save files                   | 🔜 | TBA |
| release second build             | 🔜 | TBA |
| integrate [PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) | 🔜 | TBA |
| release third build              | 🔜 | TBA |
| integrate [SignTool](https://docs.microsoft.com/de-de/dotnet/framework/tools/signtool-exe) | 🔜 | TBA |
| release fourth build             | 🔜 | TBA |

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

[^lcid-not-necessary]: Doesn't seem necessary. If it is needed, please open an [issue](https://github.com/Hope-IT-Works/PS2EXE-GUI/issues/new?assignees=&labels=enhancement&template=feature_request.md&title=lcid-parameter%20is%20necessary).
[^extractable]: Allows you to choose, if the user is able to extract the `.ps1` out of the `.exe` file.

## Screenshot
![Screenshot](https://i.gyazo.com/92f58f0ce691f38e6042537b1a938afd.png)

## About the project
This Project uses the further developed version of [PS2EXE](https://github.com/MScholtes/Win-PS2EXE/blob/master/ps2exe.ps1) by [Markus Scholtes](https://github.com/MScholtes) licensed under the Microsoft Public License (MC-PL).

The GUI of PS2EXE-GUI was made with [POSHGUI](https://poshgui.com) by [Maciej Obuchowski](https://twitter.com/poshgui).

PS2EXE was initially developed by [Ingo Karstein](https://github.com/ikarstein).

This project is licensed under the [Apache License 2.0](https://github.com/Hope-IT-Works/PS2EXE-GUI/blob/main/LICENSE).

## Stars over time
[![Stargazers over time](https://starchart.cc/Hope-IT-Works/PS2EXE-GUI.svg)](https://starchart.cc/Hope-IT-Works/PS2EXE-GUI)
