#We_be_cooking_for_mambo

$ErrorActionPreference = 'SilentlyContinue'

$asciiArt = @'
⣿⣿⣿⣿⡿⣿⣿⡿⠛⠉⠁⠄⡰⠈⠤⠠⠀⠂⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡔⣴⢺⠽⡭⠏⠝⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣷⣿⣿⠿⠋⢀⠀⢐⠘⡈⠄⠀⠐⠀⠂⠁⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠠⠀⠙⠶⠙⠊⠉⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠
⣿⠟⠉⠀⡠⠐⠈⠘⠠⠀⠀⠀⠁⠀⠀⣀⢀⣀⣀⣀⣠⠤⣶⣛⡟⡀⠀⢡⢘⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⣤⡴⠲⠒⠋⠙⠀
⡀⠤⠑⠈⠀⠁⠈⠀⠀⠀⠀⠀⣠⣴⡾⣟⣿⣻⢿⣭⡓⠺⢦⠁⠀⣧⠈⠄⡉⢟⠰⡄⠀⠀⢀⣀⡤⠦⠴⠞⠋⠉⠁⠁⠀⠀⠀⠀⠀⠀
⠠⠀⠠⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⢧⡿⡿⠜⢃⡤⣠⠼⠿⠀⣃⣀⣛⠛⠻⠛⣤⢜⡣⠤⠼⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀
⠀⠀⠀⠀⠀⢀⡀⠀⢐⢾⣻⣯⣟⠏⢃⢴⢯⢪⣷⡅⢊⣥⣾⣿⣟⡿⣿⣳⣄⢢⣙⠻⣵⡤⠀⠀⠀⠀⠀⢀⣀⣄⡤⡤⠶⠚⠋⠋⠉⠁
⢀⢀⣤⢖⠾⠍⠓⢠⣾⣿⡷⠏⢀⣴⣿⠟⡁⢾⣿⣳⣿⣟⣷⣻⡆⠙⡿⣽⣻⣦⠙⡷⠀⠹⢿⣤⡛⠙⠋⠉⠁⠀⠀⠀⠀⠀⠀⠠⠤⢂
⠏⠋⠈⠀⠀⠀⢠⣿⣿⣿⡃⢠⡫⡷⡁⠖⣑⣿⣿⢲⢃⣿⢾⣳⠇⣷⡮⠈⠳⠟⠂⠡⡾⠗⢀⠉⠿⣦⣀⠀⡀⢀⣀⣠⢥⠤⠧⠖⠖⢫
⠀⠀⢀⣀⡠⠴⢸⣿⡿⢛⠹⣿⠟⢠⠱⢁⢸⣿⢯⠋⣾⢯⣟⡿⢸⣿⣿⣿⣿⣦⡚⠆⢁⣴⣟⡿⣆⡈⠛⢷⡘⠉⠈⠁⠀⠀⠀⢀⢀⠠
⠒⠉⠁⠀⠀⢰⣼⡽⣾⢀⢮⠎⣐⢃⢢⣎⣿⢟⠎⣼⢯⡟⡸⢡⣿⣿⢟⠝⠉⠉⠙⠲⢄⢻⢾⡹⡯⣟⡦⣄⠉⠶⣄⠠⠀⠄⣃⣈⣨⢵
⠤⠄⠒⠈⠉⣾⢷⣻⠃⢠⡛⡰⠌⣂⣮⡾⣿⠏⣸⣟⠯⠁⣡⣿⣿⣿⣇⣴⠀⠀⣨⡿⣦⡈⢯⡇⢧⡌⢷⡌⠷⡜⠈⠳⣍⠉⠉⠈⠁⢠
⡰⠴⠌⠒⠒⢹⣯⢃⣈⣤⣧⣶⡿⠋⡗⣿⠇⣰⠟⠁⢣⣾⣿⣿⣿⣿⣿⣿⡀⠦⣈⡇⢻⡇⡰⣻⠘⣌⠘⠧⢀⡟⣦⠀⠈⠢⡀⠀⢠⣿
⡀⠀⣆⣰⣀⠸⣏⠀⡏⢿⡏⠉⢀⣷⠀⠇⡸⠁⠀⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣆⠿⣏⣿⣾⡇⡇⠆⣉⠀⠶⣎⠹⣆⠏⣆⠀⠈⠀⣸⣿
⠉⠉⠀⢀⠀⡀⠙⢦⠘⣈⠓⡎⡼⠼⣀⢠⢠⡇⢀⠘⣋⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡎⣰⠏⣠⢛⡬⢓⢎⡡⡰⢎⠈⡄⢻⣿
⠌⡥⡙⢄⠣⢁⡁⠒⡈⠢⠘⡄⢷⢲⢡⢸⠸⣷⡘⢶⣯⣸⣿⣿⣿⣿⡿⣿⣭⣝⣿⣿⣿⣿⡟⡉⣡⠚⡔⢣⠜⡡⠎⠴⡁⠋⡔⠀⣸⣿
⢃⠢⢁⠂⡈⠂⠒⡀⠒⠑⠂⡅⢸⢇⢂⠯⢦⣝⣿⣾⣿⣿⣿⡏⣾⣿⣿⣿⣿⢟⣿⣿⣿⣵⡎⡔⢡⡉⠖⡡⢊⠔⡉⠔⠪⢂⡤⠼⣹⡿
⣿⣿⡿⣿⢿⡿⣿⢿⡿⣿⡟⢁⡦⢻⣄⠢⠫⣝⢿⣿⣿⣿⣿⣷⣽⣛⣻⣽⣷⣿⣿⣿⣿⡏⠰⢈⠆⡘⠤⡑⢌⠢⡑⢪⣼⣟⡿⣟⡿⣿
⡿⣷⣟⣯⣟⡿⣽⢯⣟⡿⡇⡃⡇⣀⡘⡥⡅⢌⡚⡉⣛⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⡄⠣⢌⢂⠡⢂⠔⡈⢆⢹⣯⣷⢿⣻⢿⣟⣿
⡟⣷⢻⡼⣯⣝⡯⣟⡾⣽⣳⢁⠹⣣⢛⡴⣋⠞⡔⢣⠒⡍⢛⠿⠿⠿⠛⠻⠿⠟⠟⢻⠀⠀⣄⣊⠄⠣⢌⠢⣹⣾⣞⣿⢾⣿⣻⣿⣻⣾
⣿⣷⣿⣽⣷⣯⣟⣿⣽⢷⣻⣧⠀⢣⢏⠲⠄⡋⢌⠂⡍⡐⠣⠌⢠⣤⣥⣄⣦⡤⣴⣿⣆⠄⢹⣿⣧⢱⣎⣴⣳⣟⡾⣿⢿⡿⣿⣽⢿⣿
⣿⣷⡟⣾⢳⣿⣾⣽⣾⣯⣷⣿⣧⡏⠀⠛⣦⠑⢢⠁⡆⢡⠑⠀⣿⣭⡏⣦⣬⣥⣿⣿⣿⡄⠂⢹⣿⣷⣽⣾⣷⣯⣿⣽⣯⡟⣷⣯⣿⣾
⡷⣏⣿⡽⣿⢾⣷⣻⢮⣟⣾⢧⡿⣽⡶⣥⣤⣣⠌⠒⠨⠄⣁⣼⣿⣿⣿⠿⣾⣿⣿⣿⣿⣿⣆⠂⢻⣟⣹⣿⣿⣻⣿⣳⣯⣟⣷⣿⣻⣿
⣿⣿⣿⣽⡿⣿⢾⣻⢯⣟⣯⢿⡿⣷⢿⣿⣻⣇⣨⠌⠡⠌⣹⡌⠉⠙⠿⢶⠿⠋⡁⢉⠉⡉⠁⣷⣜⢿⡆⣿⣽⣿⣿⣿⢿⣯⣟⣾⢿⣽
⣿⣷⣿⣿⣿⢿⣯⡿⣟⣾⣿⣯⡿⣽⢯⣷⢻⣽⣻⠌⠱⢈⢱⡏⠌⡀⣨⢭⡒⢬⠀⠎⡰⢁⢣⠙⢿⣷⢦⡙⢿⣟⣾⢿⣿⣿⣿⢿⣟⣿
⣿⣟⣯⣿⣾⣿⣿⣽⣻⣞⡷⣽⣹⢮⡷⣭⣟⡶⢻⡐⢆⡔⡊⣄⠃⢂⡑⣂⠡⠔⡉⠱⡔⡉⢆⠣⢈⠙⠻⣷⣎⠻⣾⣟⣿⣾⡽⣯⣟⣾
'@

# Artwork
$asciiArt

Write-Host ""
Write-Host ""

## Tool

Write-Host "Welcome to MinaZ3r0's Project Zomboid - RAM Helper" -ForegroundColor Green
Write-Host ""

# Set Drive and find Project Zomboid folder


do {
    $drive = Read-Host "Enter the drive letter (e.g., C or D, Just type in a letter)"


    $drive = $drive -replace '[:/\\]', ''

    Write-Host "Searching drive ${drive}: for ProjectZomboid folder... Please wait." -ForegroundColor Green

    $folder = Get-ChildItem -Path "${drive}:\" -Filter "ProjectZomboid" -Directory -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1

    if ($folder) {
        Set-Location -Path $folder.FullName
        Write-Host "Success! Changed directory to: $($folder.FullName)" -ForegroundColor Green
    } else {
        Write-Host "`nCould not find 'ProjectZomboid' on drive ${drive}:. Please try again, we could not find ProjectZomboid in the drive you chose.`n" -ForegroundColor Red
    }

} until ($folder)


Invoke-Item $folder.FullName
        Write-Host "Success! Opened and changed directory to: $($folder.FullName)" -ForegroundColor Green

Write-Host "We are looking for the following file:`nProjectZomboid64.json" -ForegroundColor Green
Write-Host ""
Write-Host "Before starting always may a backup copy, I am not responsible for anything that happens to your PC or game if you did not follow the correct steps." -ForegroundColor Red
Write-Host ""

$choice = Read-Host "Do you want to backup ProjectZomboid64.json? (y/n)"

if ($choice -eq 'y' -or $choice -eq 'Y') {
    if (Test-Path "ProjectZomboid64.json") {
        Copy-Item -Path "ProjectZomboid64.json" -Destination "ProjectZomboid64.bak1" -Force
        Write-Host "Success! Created backup file: ProjectZomboid64.bak1" -ForegroundColor Green
    } else {
        Write-Host "Error: Could not find 'ProjectZomboid64.json' in this folder to backup." -ForegroundColor Red
    }
} else {
    Write-Host "Skipping backup." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Open this up with your text editor of choice." -ForegroundColor Green
Write-Host "Search for: `-Xmx" -ForegroundColor Green
Write-Host ""
Write-Host "We need to change the number for your PC RAM" -ForegroundColor Green
Write-Host ""
$ram = systeminfo | Select-String "Total Physical Memory"
Write-Host $ram -ForegroundColor Yellow
Write-Host ""
Write-Host "This is the max RAM you can set it to, do not set it more than this!" -ForegroundColor Green
Write-Host ""
Write-Host "For 8GB set it to 8192m" -ForegroundColor Green
Write-Host "For 16GB set it to 16384m" -ForegroundColor Green
Write-Host "For 32GB set it to 32768m" -ForegroundColor Green
Write-Host "For 64GB set it to 65536m" -ForegroundColor Green
Write-Host ""

Write-Host "Press Enter to continue..."
Read-Host

Write-Host "Hit save when you are done!" -ForegroundColor Green
Write-Host ""
Write-Host "You are all done, I would suggest a restart to make sure it all working, stay safe out there fellow traveler!" -ForegroundColor Green

Start-Sleep -Seconds 5
Write-Host ""
Write-Host "Opening GitHub in 5 seconds..." -ForegroundColor Green

Start-Process "https://github.com/MinaZ3r0"

#end

exit
