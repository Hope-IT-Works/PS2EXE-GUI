<#
    THIS FILE IS USED TO CONFIGURE THE SCRIPT ANALYZER RULES FOR THE PROJECT.

    DOCUMENTATION FOR THIS CONFIGURATION FILE CAN BE FOUND AT:
    https://learn.microsoft.com/en-us/powershell/module/psscriptanalyzer/invoke-scriptanalyzer?view=ps-modules#-settings

    EXCLUDED RULES
    - PSAvoidTrailingWhitespace: This rule is disabled, because poshgui.com output always has trailing whitespaces.
    - PSAvoidUsingWriteHost: This rule is disabled, because it can be ignored for PowerShell 5 and later.
#>
@{
    ExcludeRules = @('PSAvoidTrailingWhitespace', 'PSAvoidUsingWriteHost')
}