################################
##
## ModulName : 
##     UnicodeEscapeUtility
##
################################


function Unicode-UnEscape
{
    param
    (
        [string]$InFile,
        [String]$OutFile
    )
    $text = Get-Content -Raw $InFile
    [Regex]::Unescape($text) | Set-Content -Path $OutFile -Encoding UTF8
}

function Unicode-Escape
{
    param
    (
        [string]$InFile,
        [String]$OutFile
    )
    $text = Get-Content -Raw $InFile
    $callback = {
        param($m)
        "\u" + '{0:x}' -f [Convert]::ToInt32([Convert]::ToChar($m.Value))
    }
    [Regex]::Replace($text, "[^\x00-\x7F]", $callback) | Set-Content -Path $OutFile -Encoding UTF8

}

