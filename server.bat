@echo off
chcp 65001 >nul
echo ===================================
echo  คำนวณค่างวด - Local HTTP Server
echo ===================================
echo.
echo เปิดเบราว์เซอร์ไปที่: http://localhost:8080
echo กด Ctrl+C เพื่อหยุด server
echo.

cd /d "%~dp0"

python -m http.server 8080 2>nul
if errorlevel 1 (
  python3 -m http.server 8080 2>nul
  if errorlevel 1 (
    echo ไม่พบ Python - กรุณาติดตั้ง Python จาก https://python.org
    pause
  )
)
