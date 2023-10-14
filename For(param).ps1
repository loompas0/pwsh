param(
    [Parameter (HelpMessage = "Please enter the number of vm to be created")]
    [int]
$MaxValue = 3 )

$Type = $MaxValue.GetType()
Write-Host "$Type"
# Boucle de base
for ($i = 0; $i -le $MaxValue; $i++)
{
    $VmName = "ConferenceDemo"+$i
    Write-Host "Creating Vm name : $VmName"
    
}

