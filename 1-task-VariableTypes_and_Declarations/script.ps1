#PowerShell Types and Declarations Homework

#1.      Create string variable with 19790525 value in it.

#2.      List user’s home directory file path and get datatype for it.

#3.      List some single file in user’s home directory and get datatype for it.

#4.      List some single directory in user’s home directory and get datatype for it.

#Declaration of string variable

$String_variable="19790525"

$Home_Directory=$env:UserProfile

$DataType=$Home_Directory.GetType()

Write-Host "String from variable $String_variable" 
Write-Host "Home directory path: $Home_Directory"
Write-Host "Data type of file: $DataType"

$Files=Get-ChildItem -Path $Home_Directory -File| Select-Object -First 1

$File_Type=$Files.GetType()

Write-Host "The first file from the list $Files"
Write-Host "The file type of the first file $File_Type"

$Directory=Get-ChildItem -Path $Home_Directory -Directory | Select-Object -First 1
$Directory_Type=$Directory.GetType()

Write-Host "The First directory of home $Directory"
Write-Host "The type of the directory $Directory_Type"