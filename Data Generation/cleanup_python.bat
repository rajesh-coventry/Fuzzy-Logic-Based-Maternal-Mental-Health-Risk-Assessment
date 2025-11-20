@echo off
echo ==========================================
echo Cleaning up all Python installations...
echo ==========================================

:: 1. Remove standard Python installation directories
echo Deleting Python installation directories...
rmdir /s /q "%LocalAppData%\Programs\Python"
rmdir /s /q "%ProgramFiles%\Python*"
rmdir /s /q "%ProgramFiles(x86)%\Python*"

:: 2. Remove Python user directories
echo Deleting Python user directories...
rmdir /s /q "%AppData%\Python"
rmdir /s /q "%LocalAppData%\pip"
rmdir /s /q "%UserProfile%\.virtualenvs"

:: 3. Remove pip cache
echo Deleting pip cache...
rmdir /s /q "%LocalAppData%\pip\cache"

:: 4. Remove environment variables (User & System) if present
echo Removing Python-related environment variables...
setx PYTHONPATH ""
setx PYTHONHOME ""

:: Remove Python from PATH (User variables)
for /f "tokens=*" %%i in ('reg query "HKCU\Environment" /v PATH 2^>nul ^| findstr /i "Python"') do (
    reg delete "HKCU\Environment" /v PATH /f
)

:: Remove Python from PATH (System variables)
for /f "tokens=*" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PATH 2^>nul ^| findstr /i "Python"') do (
    reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PATH /f
)

:: 5. Optional: Delete cached Jupyter files
echo Deleting Jupyter cached files...
rmdir /s /q "%AppData%\jupyter"
rmdir /s /q "%LocalAppData%\jupyter"
rmdir /s /q "%UserProfile%\.jupyter"

echo ==========================================
echo Python cleanup complete.
echo Please restart your PC before reinstalling Python.
echo ==========================================
pause
