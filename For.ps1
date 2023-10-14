# La construction For effectue une série de boucles similaires à une construction ForEach. 
# Toutefois, lors de l’utilisation de la construction For, 
# vous devez définir le nombre de boucles qui se produisent, 
# ce qui est utile lorsque vous souhaitez qu’une action soit exécutée un nombre spécifique de fois. 

# First define an array as a variable
$members = @('Zero','One','Two','Three','Four')

for ($i = 0; $i -le $members.Count-1; $i++) 
{
    Write-Host "We are in the iteration $i in the loop "
    $position = $members[$i]
    Write-Host "We are in the position $position in the loop "
}