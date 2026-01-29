@echo off
REM Run script for Digital Notice Board
REM This script runs the compiled application with MySQL connector in classpath

echo ========================================
echo Running Digital Notice Board
echo ========================================
echo.

REM Set the MySQL connector JAR path
set MYSQL_JAR=src\lib\mysql-connector-j-9.5.0 (1)\mysql-connector-j-9.5.0\mysql-connector-j-9.5.0.jar

REM Check if compiled classes exist
if not exist bin\Main.class (
    echo Error: Compiled classes not found!
    echo Please run 'compile.bat' first.
    echo.
    pause
    exit /b 1
)

REM Run the application
java -cp "bin;%MYSQL_JAR%" Main

echo.
echo ========================================
echo Application Finished
echo ========================================
echo.
pause
