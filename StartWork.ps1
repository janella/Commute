Set-Location 'C:\Program Files\Docker\Docker'
& '.\Docker Desktop.exe'

Set-Location 'C:\Dev\Upstock\db'
git fetch
.\launch_database.ps1

Set-Location 'C:\Dev\Upstock\api'
git fetch

Start-Process 'C:\Users\Janella\AppData\Local\Programs\Notion\Notion.exe' &
Start-Process -FilePath Chrome -ArgumentList 'https://github.com/pulls?q=is%3Apr+team%3AUpstockApp%2Fapi-team'