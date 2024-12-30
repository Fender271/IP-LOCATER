@echo off
title Public IP Address Viewer
color 0a

echo ========================================
echo       Public IP Address Viewer
echo ========================================
echo.

echo Fetching your public IP address...
echo.

:: Use curl to query an API for the public IP address
curl -s https://api.ipify.org > public_ip.txt

:: Read the public IP address from the file and display it
set /p public_ip=<public_ip.txt

:: Clean up the temporary file
del public_ip.txt

if defined public_ip (
    echo Your public IP address is: %public_ip%
) else (
    echo Failed to retrieve your public IP address. Please check your internet connection.
)

echo.
pause
