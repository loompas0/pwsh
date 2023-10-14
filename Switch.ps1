# la construction Switch construction est similaire à un construction If 
# comprenant plusieurs sections ElseIf. 
# La construction Switch évalue une variable ou un élément par rapport à plusieurs valeurs, 
# et a un bloc de script pour chaque valeur. 
# Le bloc de script pour chaque valeur est exécuté si celle-ci correspond à la variable. 
# Il existe également une section Par défaut qui s’exécute uniquement à défaut de correspondance.

$test = Read-Host -Prompt "Please enter an integer Value"

switch ($test) 
{
    0 { Write-Host " the number $test is zero" }    
    1 { Write-Host " the number $test is one" }
    {$_ -ge 2 -and $_ -le 9} {Write-Host " the number $test is between two and nine"}
    Default {Write-Host "The nummber $test is greater or equal to ten"}
}