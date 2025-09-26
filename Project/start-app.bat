@echo off
echo ====================================
echo   REACT + DJANGO WEB APPLICATION
echo ====================================
echo.
echo Este script inicia o backend Django e frontend React simultaneamente.
echo.
echo Certifique-se de que:
echo - Python 3.8+ está instalado
echo - Node.js 16+ está instalado  
echo - pipenv está instalado (pip install pipenv)
echo.
pause

echo.
echo [1/3] Iniciando Backend Django...
echo.
start cmd /k "cd backend && pipenv shell && pipenv run python manage.py runserver"

timeout /t 3 /nobreak >nul

echo.
echo [2/3] Aguardando Django inicializar...
timeout /t 5 /nobreak >nul

echo.
echo [3/3] Iniciando Frontend React...
echo.
start cmd /k "cd frontend && npm start"

echo.
echo ====================================
echo   APLICAÇÃO INICIADA COM SUCESSO!
echo ====================================
echo.
echo Backend Django: http://localhost:8000
echo Frontend React: http://localhost:3000
echo.
echo Pressione qualquer tecla para fechar este script...
pause >nul