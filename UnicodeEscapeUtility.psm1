################################
##
## ModulName : 
##     UnicodeEscapeUtility
##
################################

function Unicode-UnEscape{
    param
    (
        [string]$InFile,
        [String]$OutFile
    )
    $text = Get-Content -Raw $InFile
}

function Unicode-Escape{
    param
    (
        [string]$InFile,
        [String]$OutFile
    )
    $text = Get-Content -Raw $InFile
}