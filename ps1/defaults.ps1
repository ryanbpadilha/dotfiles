@(
  "dev.ps1"
  "games.ps1"
  "media.ps1"
  "tools.ps1"
  "web-utils.ps1"
) | Foreach-Object {
    winget install `
        --id $_ `
        --source winget `
        --silent `
        --disable-interactivity `
        --accept-source-agreements `
        --accept-package-agreements
}