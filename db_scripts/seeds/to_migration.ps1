# directory of the current script
$scriptDirectory =  Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# output file
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# verifying if output file exists, if yes, remove it
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# get all .sql files
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

# concatenate all .sql files into one
foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "migration script created at: $outputFile"