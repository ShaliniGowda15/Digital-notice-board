@echo off
echo ========================================
echo   Digital Notice Board - CLEAN RUN
echo ========================================

:: 1. Cleanup
if exist "bin" rmdir /s /q "bin"
mkdir bin

:: 2. Compile
echo Compiling...
:: Using ; for Windows classpath separator
:: Assumes mysql connector is in lib/
javac -cp "lib/*;src" -d bin src/util/DBConnection.java src/handlers/*.java src/WebServer.java

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Compilation failed!
    pause
    exit /b
)

:: 3. Run
echo Starting Server...
java -cp "lib/*;bin" WebServer

pause
