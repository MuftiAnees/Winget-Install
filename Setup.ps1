Write-Host "Installing commonly used applications..." -ForegroundColor Green

$appsToInstall = @(
    "Waterfox.Waterfox",
    "Bitwarden.Bitwarden",
    "amir1376.ABDownloadManager",
    "7zip.7zip",
    "Brave.Brave",
    "Discord.Discord",
    "EpicGames.EpicGamesLauncher",
    "Figma.Figma",
    "Figma.FigmaAgent",
    "GitHub.GitHubDesktop",
    "Microsoft.VisualStudioCode",
    "Notion.Notion",
    "OBSProject.OBSStudio",
    "Proton.ProtonVPN",
    "qBittorrent.qBittorrent",
    "Spotify.Spotify",
    "Valve.Steam",
    "Vencord.Vesktop",
    "VideoLAN.VLC"
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