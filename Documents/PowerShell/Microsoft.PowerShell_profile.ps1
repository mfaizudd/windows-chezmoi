oh-my-posh --init --shell pwsh --config $env:POSH_THEMES_PATH/spaceship.omp.json | Invoke-Expression
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-Alias lg lazygit
$hosts = "C:\Windows\System32\drivers\etc\hosts"
function refresh-path {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
                ";" +
                [System.Environment]::GetEnvironmentVariable("Path","User")
}