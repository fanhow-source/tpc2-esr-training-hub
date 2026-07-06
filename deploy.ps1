# OAIC ESR AutoDoc Hub - Deployment Script

$ErrorActionPreference = "Stop"

$siteUrl = "https://fanhow-source.github.io/tpc2-esr-training-hub/"
$timestamp = Get-Date -Format "yyyyMMddHHmmss"

Write-Host ""
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host " OAIC ESR AutoDoc Hub Deployment" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""

# Make sure site/ is ignored
if (-not (Test-Path ".gitignore")) {
    "site/" | Out-File ".gitignore" -Encoding utf8
} elseif (-not (Select-String -Path ".gitignore" -Pattern "^site/$" -Quiet)) {
    Add-Content ".gitignore" "`nsite/"
}

# Remove site/ from Git tracking if it was tracked before
git ls-files site | Out-Null
if ($LASTEXITCODE -eq 0) {
    $trackedSite = git ls-files site
    if ($trackedSite) {
        Write-Host "Removing site/ from Git tracking..." -ForegroundColor Yellow
        git rm -r --cached site
    }
}

Write-Host "Building MkDocs site..." -ForegroundColor Cyan
python -m mkdocs build --clean

Write-Host ""
Write-Host "Checking Git status..." -ForegroundColor Cyan
git status --short

$changes = git status --porcelain

if (-not $changes) {
    Write-Host ""
    Write-Host "No source changes to commit." -ForegroundColor Yellow
} else {
    Write-Host ""

$date = Get-Date -Format "yyyy-MM-dd HH:mm"
$commitMessage = "Update ESR AutoDoc Hub - $date"

    Write-Host ""
    Write-Host "Committing source files..." -ForegroundColor Cyan
    git add .
    git commit -m "$commitMessage"

    Write-Host ""
    Write-Host "Pushing source to GitHub main branch..." -ForegroundColor Cyan
    git push
}

Write-Host ""
Write-Host "Deploying MkDocs site to GitHub Pages..." -ForegroundColor Cyan
python -m mkdocs gh-deploy --force --clean

Write-Host ""
Write-Host "Deployment completed." -ForegroundColor Green
Write-Host "Opening GitHub Pages with cache bypass..." -ForegroundColor Cyan

$finalUrl = "$($siteUrl)?v=$timestamp"
Start-Process $finalUrl

Write-Host ""
Write-Host "Website:" -ForegroundColor Cyan
Write-Host $finalUrl
Write-Host ""
Write-Host "==================================================" -ForegroundColor Cyan