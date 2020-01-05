@echo off

REM This file was added by the BlocklandCEF installer.
REM Source: https://github.com/paperworx/BlocklandCEF-Installer

title BlocklandCEF Uninstaller

color 1f

echo Continuing will remove BlocklandCEF from the current Blockland directory, and revert your Blockland.exe to the state it was in prior to install.
echo.
echo ** If Blockland is running, the program will be terminated immediately. **
echo.

pause

cls

if not exist Blockland.exe (
  color cf
  echo Blockland.exe not found in current directory, are you sure you're running this from the right location!?
  echo.
  pause
  exit
)

if not exist Blockland.exe.backup (
  color cf
  echo Blockland.exe.backup not found in current directory, unable to restore Blockland.exe to prior state.
  echo.
  pause
  exit
)

taskkill /f /im Blockland.exe
timeout /t 3 /nobreak
echo.

del /q /f BlocklandCEFSubProcess.exe
del /q /f cef.pak
del /q /f cef_100_percent.pak
del /q /f cef_200_percent.pak
del /q /f cef_extensions.pak
del /q /f chrome_elf.dll
del /q /f d3dcompiler_43.dll
del /q /f d3dcompiler_47.dll
del /q /f devtools_resources.pak
del /q /f icudtl.dat
del /q /f libcef.dll
del /q /f libEGL.dll
del /q /f libGLESv2.dll
del /q /f natives_blob.bin
del /q /f snapshot_blob.bin
del /q /f v8_context_snapshot.bin
del /q /f Blockland.exe
copy /y Blockland.exe.backup Blockland.exe > nul
del /q /f Blockland.exe.backup
del /q /f modules\CEFHook.dll
if exist GPUCache (
  rmdir /s /q GPUCache
)
if exist VideoDecodeStats (
  rmdir /s /q VideoDecodeStats
)
if exist locales (
  rmdir /s /q locales
)

color 2f

echo BlocklandCEF has been uninstalled!

timeout /t 2 /nobreak

(goto) 2>nul & del "%~f0"