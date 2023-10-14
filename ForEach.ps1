# Quand vous effectuez une combinaison, les commandes du pipeline sont appliquées à chaque objet. 
# Dans certains cas, vous pouvez être amené à utiliser 
# l’applet de commande ForEach-Object pour traiter les données du pipeline. 
# Quand vous stockez des données dans un tableau, 
# la construction ForEach vous permet de traiter chaque élément du tableau.

# First define an array as a variable
$members = @('Zero','One','Two','Three','Four')
$iteration = 0
# Second define the loop it self
ForEach ($member in $members)

# Third define action for each iteration
{
    Write-Host "We are in the iteration $member in the loop "
# another way to do
    $position = $members[$iteration]
    Write-Host "We are in the position $position in the loop "
    $iteration ++
}

