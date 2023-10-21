# exercice 17 Ecrire un programme qui demande l’âge d’un enfant à l’utilisateur. 
# Ensuite il l’informe de sa catégorie :
# 		”Poussin” de 6 à 7 ans
# 		”Pupille” de 8 à 9 ans
# 		”Minime” de 10 à 11 ans
# 		”Cadet” après 12 ans


# param
# (
#     [Parameter(Mandatory)]
#     [Int]$age
# )
# Write-Host $age

$EnfantAge = Read-Host -Prompt "Quel est l'age de cet enfant ?"

if($EnfantAge -is [Int]){
    Write-Host "Age $age is an integer"
}else{
    try{
        $EnfantAge = $EnfantAge -as [Int]
    }catch{
        Write-Output "Input is a string, could not be converted."
        $EnfantAge = 0
    
    }
}

switch ($EnfantAge) 
{
    {$_ -lt 6 -and $_ -ge 0} { Write-Host " the children is a baby no sport" }    
    {$_ -ge 6 -and $_ -le 7} { Write-Host " the children is Poussin" }
    {$_ -ge 8 -and $_ -le 9} { Write-Host " the children is Pupille" }
    {$_ -ge 10 -and $_ -le 11} { Write-Host " the children is Minime" }
    {$_ -ge 12 -and $_ -le 17} { Write-Host " the children is Cadet" }
    {$_ -ge 18} { Write-Host " the children is no longer a Child it is an adult" }
    Default {Write-Host "The It is not an age"}
}