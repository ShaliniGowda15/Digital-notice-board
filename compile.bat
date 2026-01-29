@echo off
REM Compile script for Digital Notice Board
REM This script compiles all Java source files with the MySQL connector in classpath

echo ========================================
echo Compiling Digital Notice Board
echo ========================================
echo.

REM Set the MySQL connector JAR path
set MYSQL_JAR=src\lib\mysql-connector-j-9.5.0 (1)\mysql-connector-j-9.5.0\mysql-connector-j-9.5.0.jar

REM Create bin directory if it doesn't exist
if not exist bin mkdir bin

REM Compile all Java files
echo Compiling Java files...
javac -d bin -cp "%MYSQL_JAR%" src\Main.java src\model\*.java src\dao\*.java src\util\*.java

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo Compilation Successful!
    echo ========================================
    echo.
    echo Compiled classes are in the 'bin' directory.
    echo Run 'run.bat' to execute the application.
) else (
    echo.
    echo ========================================
    echo Compilation Failed!
    echo ========================================
    echo Please check the errors above.
)

echo.
pause
