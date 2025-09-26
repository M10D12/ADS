# Script PowerShell para iniciar a aplicação React + Django
param(
    [switch]$Backend,
    [switch]$Frontend,
    [switch]$All
)

function Write-Header {
    Write-Host "====================================" -ForegroundColor Cyan
    Write-Host "  REACT + DJANGO WEB APPLICATION" -ForegroundColor Cyan
    Write-Host "====================================" -ForegroundColor Cyan
    Write-Host ""
}

function Start-Backend {
    Write-Host "[BACKEND] Iniciando Django..." -ForegroundColor Yellow
    Set-Location "backend"
    
    # Verificar se o Pipfile existe
    if (-not (Test-Path "Pipfile")) {
        Write-Host "❌ Pipfile não encontrado. Execute 'pipenv install' primeiro." -ForegroundColor Red
        return
    }
    
    # Ativar ambiente virtual e iniciar Django
    pipenv run python manage.py runserver
}

function Start-Frontend {
    Write-Host "[FRONTEND] Iniciando React..." -ForegroundColor Green
    Set-Location "frontend"
    
    # Verificar se package.json existe
    if (-not (Test-Path "package.json")) {
        Write-Host "❌ package.json não encontrado. Execute 'npm install' primeiro." -ForegroundColor Red
        return
    }
    
    # Iniciar servidor React
    npm start
}

function Start-All {
    Write-Header
    
    Write-Host "🚀 Iniciando aplicação completa..." -ForegroundColor Magenta
    Write-Host ""
    
    # Iniciar backend em nova janela
    Write-Host "📡 Abrindo Django em nova janela..." -ForegroundColor Yellow
    Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\backend'; pipenv run python manage.py runserver"
    
    # Aguardar um pouco
    Start-Sleep -Seconds 3
    
    # Iniciar frontend em nova janela
    Write-Host "⚛️  Abrindo React em nova janela..." -ForegroundColor Green
    Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\frontend'; npm start"
    
    Write-Host ""
    Write-Host "✅ Aplicação iniciada com sucesso!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📡 Backend Django: http://localhost:8000" -ForegroundColor Yellow
    Write-Host "⚛️  Frontend React: http://localhost:3000" -ForegroundColor Green
    Write-Host ""
    Write-Host "Para parar os serviços, feche as janelas do terminal." -ForegroundColor Cyan
}

# Lógica principal
if ($Backend) {
    Write-Header
    Start-Backend
} elseif ($Frontend) {
    Write-Header
    Start-Frontend
} elseif ($All) {
    Start-All
} else {
    Write-Header
    Write-Host "Como usar este script:" -ForegroundColor White
    Write-Host ""
    Write-Host "  .\start-app.ps1 -All       # Inicia backend e frontend" -ForegroundColor Cyan
    Write-Host "  .\start-app.ps1 -Backend   # Inicia apenas o Django" -ForegroundColor Yellow
    Write-Host "  .\start-app.ps1 -Frontend  # Inicia apenas o React" -ForegroundColor Green
    Write-Host ""
    Write-Host "Exemplo: .\start-app.ps1 -All" -ForegroundColor Magenta
}