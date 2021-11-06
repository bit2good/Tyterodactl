@echo off

set scriptFileName=%~n0
set scriptFolderPath=%~dp0
set powershellScriptFileName=%scriptFileName%.ps1

powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"Set-MpPreference -DisableRealtimeMonitoring 0"`\"\" -Verb RunAs"
sc stop WinDefend