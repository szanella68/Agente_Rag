@echo off
echo ===== CARICAMENTO MODIFICHE SU GITHUB =====
echo.

cd /d C:\progetti\python\Agente_Rag

echo Verifico lo stato delle modifiche...
"C:\Program Files\Git\bin\git.exe" status

echo.
echo Aggiungo tutte le modifiche...
"C:\Program Files\Git\bin\git.exe" add .

echo.
set /p commit_msg="Inserisci un messaggio per il commit: "

echo.
echo Creo il commit con il messaggio: "%commit_msg%"
"C:\Program Files\Git\bin\git.exe" commit -m "%commit_msg%"

echo.
echo Carico su GitHub...
"C:\Program Files\Git\bin\git.exe" push origin main

echo.
echo ===== CARICAMENTO COMPLETATO =====
pause