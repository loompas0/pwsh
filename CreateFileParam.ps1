# Parameter help description
param(
    [Parameter(Mandatory, HelpMessage = "Please enter a valid path")]
    [string]
$Path
)
New-Item $Path
Write-Host "A new file using `$Path : value $Path has been created"