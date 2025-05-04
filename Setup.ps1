Write-Host "Installing commonly used applications..." -ForegroundColor Green

$appsToInstall = @(
    "Vencord.Vesktop",
    "Proton.ProtonVPN",
    "VideoLAN.VLC",
    "7zip.7zip",
    "Discord.Discord",
    "Microsoft.VisualStudioCode",
    "Waterfox.Waterfox",
    "OBSProject.OBSStudio",
    "Valve.Steam",
    "qBittorrent.qBittorrent",
    "Bitwarden.Bitwarden",
    "Notion.Notion",
    "amir1376.ABDownloadManager",
    "Brave.Brave",
    "Figma.Figma",
    "Figma.FigmaAgent",
    "GitHub.GitHubDesktop",
    "Spotify.Spotify",
    "Microsoft.VisualStudioCode",
    )

foreach ($app in $appsToInstall) {
    Write-Host "Installing $($app)..." -ForegroundColor Cyan
    winget install $app
    if ($LASTEXITCODE -ne 0) {
        Write-Warning "Failed to install $($app). Check for errors."
    }
}

Write-Host "Installation complete!" -ForegroundColor Green
Read-Host "Press Enter to exit"