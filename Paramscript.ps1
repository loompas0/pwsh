# This script is an example of a script using parameters in entrey of the script
# 
<##>
Param
(
    [int]$Age = 0 ,
    [string] $Name = ""
)
$TypeAge = $Age.GetType()
Write-Host "I have $Age years and  my name is $Name. " -ForegroundColor Green
Write-Host "the parameter type of Age is $TypeAge"
