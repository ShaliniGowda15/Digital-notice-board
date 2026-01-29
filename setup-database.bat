@echo off
REM Database setup script for Digital Notice Board
REM This script imports the schema.sql file into MySQL

echo ========================================
echo Setting up Database
echo ========================================
echo.

REM Prompt for MySQL password
set /p MYSQL_PASSWORD="Enter MySQL root password (default: root@123): "

REM Use default password if none provided
if "%MYSQL_PASSWORD%"=="" set MYSQL_PASSWORD=root@123

echo.
echo Importing database schema...
echo.

REM Import the schema file
mysql -u root -p%MYSQL_PASSWORD% < database\schema.sql

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo Database Setup Successful!
    echo ========================================
    echo.
    echo The 'notice_board' database has been created.
    echo Tables: users, admins, notices
    echo Sample data has been inserted.
) else (
    echo.
    echo ========================================
    echo Database Setup Failed!
    echo ========================================
    echo Please check:
    echo   1. MySQL is running
    echo   2. Password is correct
    echo   3. You have admin privileges
)

echo.
pause
