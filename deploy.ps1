# OAIC ESR AutoDoc Hub deployment script

Write-Host "Building MkDocs site..." -ForegroundColor Cyan
python -m mkdocs build --clean

if ($LASTEXITCODE -ne 0) {
    Write-Host "MkDocs build failed. Deployment stopped." -ForegroundColor Red
    exit 1
}

Write-Host "Checking Git status..." -ForegroundColor Cyan
git status

$commitMessage = Read-Host "Enter commit message"

if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $date = Get-Date -Format "yyyy-MM-dd HH:mm"
    $commitMessage = "Update ESR AutoDoc Hub - $date"
}

Write-Host "Committing source files..." -ForegroundColor Cyan
git add .
git commit -m "$commitMessage"

Write-Host "Pushing source to GitHub..." -ForegroundColor Cyan
git push

Write-Host "Deploying MkDocs site to GitHub Pages..." -ForegroundColor Cyan
python -m mkdocs gh-deploy --force --clean

if ($LASTEXITCODE -ne 0) {
    Write-Host "GitHub Pages deployment failed." -ForegroundColor Red
    exit 1
}

Write-Host "Deployment completed." -ForegroundColor Green
Write-Host "Opening GitHub Pages..." -ForegroundColor Cyan

Start-Process "https://fanhow-source.github.io/tpc2-esr-training-hub/?v=$(Get-Date -Format 'yyyyMMddHHmmss')"