@echo off
title Private IP Address Viewer
color 0a

echo ========================================
echo       Private IP Address Viewer
echo ========================================
echo.

echo Fetching your private IP address...
echo.

:: Use ipconfig to retrieve the private IP address
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr "IPv4 Address"') do (
    set private_ip=%%A
)

:: Remove leading spaces from the result
for /f "tokens=* delims= " %%B in ("%private_ip%") do (
    set private_ip=%%B
)

if defined private_ip (
    echo Your private IP address is: %private_ip%
) else (
    echo Failed to retrieve your private IP address. Please check your network connection.
)

echo.
pause
