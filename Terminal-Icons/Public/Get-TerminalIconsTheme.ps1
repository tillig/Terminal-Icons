function Get-TerminalIconsTheme {
    <#
    .SYNOPSIS
        Get the currently applied color and icon theme.
    .DESCRIPTION
        Get the currently applied color and icon theme.
    .EXAMPLE
        PS> Get-TerminalIconsTheme

        Get the currently applied Terminal-Icons color and icon theme.
    .INPUTS
        None.
    .OUTPUTS
        System.Management.Automation.PSCustomObject

        An object representing the currently applied color and icon theme.
    .LINK
        Get-TerminalIconsColorTheme
    .LINK
        Get-TerminalIconsIconTheme
    #>
    [CmdletBinding()]
    param()

    [pscustomobject]@{
        PSTypeName = 'TerminalIconsTheme'
        Color      = [pscustomobject]$script:userThemeData.Themes.Color[$script:userThemeData.CurrentColorTheme]
        Icon       = [pscustomobject]$script:userThemeData.Themes.Icon[$script:userThemeData.CurrentIconTheme]
    }
}
