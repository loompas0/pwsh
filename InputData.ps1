# To improve the usability of your scripts, 
# you must learn to accept user input. 
# This skill allows you to create scripts that can be used for multiple purposes. 
# Additionally, accepting user input allows you to create scripts that are easier 
# for other users to use. This module describes several methods for accepting user input in a script.

# Read-Host can be used to enter a value from the keyboard to a variable

[int]$NbDays  = Read-Host -Prompt "How many days " 
$NbDays.GetType()
$NbDays
# if you want to enter a variable without the format above
Write-Host "How many days? " -NoNewline
$NbOfDays = Read-Host
$NbOfDays

# Now try to enter a password using the option AsSecureString

$SecretText = Read-Host -Prompt "Enter the Password please" -AsSecureString
$clearText = ConvertFrom-SecureString -SecureString $SecretText -AsPlainTex

Write-Host "Converted From SecureString  $clearText" -ForegroundColor Red
# try to use all credentials in one command using Get-Credentials command
# More Information
# One way to elevate privileges when you run a script is to use the 
# Run as administrator option when opening the Windows PowerShell prompt. 
# When you use the Run as administrator option, you are prompted for credentials. 
# So all actions performed from this Windows PowerShell 
# prompt use the provided credentials.
Write-Host "Get the admin credentials " -ForegroundColor DarkGreen -BackgroundColor Red -NoNewLine
$Credential = Get-Credential -Message "Enter the Name First"
$UserName = $Credential.UserName
$Password = $Credential.Password 

$ClearPassword = ConvertFrom-SecureString -SecureString $Password -AsPlainText
Write-Host "The User name is $UserName " -ForegroundColor Green
Write-Host " The Password is  $ClearPassword   " -ForegroundColor Magenta