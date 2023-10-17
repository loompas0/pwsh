# This script uses an entry parameter file

param (
    $Path
)

if (-not $Path -eq ''){
    New-Item $Path 
    Write-Host "File $Path has been created"
}
else {
    Write-Error "The file name `$Path Cannot be empty"
}





