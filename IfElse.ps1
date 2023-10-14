# Vous pouvez utiliser la construction If dans Windows PowerShell pour prendre des décisions. 
# Vous pouvez également l’utiliser pour évaluer les données 
# que vous avez interrogées ou les entrées utilisateur.

$test = Read-Host -Prompt "Please enter an integer Value"

if ($test -eq 0)
{
    Write-Host " the number $test is zero"
}
elseif ($test -eq 1) 
{
    Write-Host " the number $test is one"
}
elseif ($test -ge 2 -and $test -le 9)
{
    Write-Host " the number $test is between two and nine"
}
else {
    Write-Host "The nummber $test is greater or equal to ten"
}
