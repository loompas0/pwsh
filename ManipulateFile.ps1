# Read a text file
# each line is an element of an array
$TextFile = Get-Content -Path "./*" -Include "*.md"
Write-Host $TextFile -ForegroundColor Yellow # this is an array 
$TextFile = ""
Write-Host ""

# Import-Csv  can import data in a CSV format. 
# When the CSV file is imported, each line in the file becomes an element of a table 
# except the first line. 
# The first line of the CSV file is a header line used 
# to name the properties of each element in the table.
$CsvFile = Import-Csv -Path "C:\Users\htc1r\Dropbox\LewagonPy\Challenge/tips.csv" -Delimiter ','
Write-Host $CsvFile[0..4]
$CsvFile =""
Write-Host ""


