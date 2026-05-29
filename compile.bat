@echo off
title Cloudflare Pages Status Compiler
echo ==============================================================
echo  Cloudflare Pages Status Desktop Monitor Executable Compiler
echo ==============================================================
echo.
echo Installing dependencies (Pillow, pystray, pyinstaller)...
pip install -r requirements.txt pyinstaller
echo.
echo Compiling cloudflare_pages_status.py to a standalone executable...
echo (No-console mode: the app will run entirely in your system tray)
echo.
pyinstaller --onefile --noconsole --name="Cloudflare Pages Status" cloudflare_pages_status.py
echo.
echo ==============================================================
echo  Compilation Complete! 
echo  Your standalone executable is available in:
echo  .\dist\Cloudflare Pages Status.exe
echo ==============================================================
echo.
pause
