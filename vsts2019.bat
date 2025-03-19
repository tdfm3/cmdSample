@echo off
setlocal EnableDelayedExpansion

:: UAC対策（管理者として実行）
cd /D "%~dp0"

:: VSTSのパスを通す
IF "%PROCESSOR_ARCHITECTURE%"=="x86" (
    :: 環境変数を組み込む
    call "%ProgramFiles%\Microsoft Visual Studio\2019\Professional\Common7\Tools\VsDevCmd.bat"
) ELSE (
    :: 環境変数を組み込む
    call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\VsDevCmd.bat"
)
echo on
title %~nx0

rem サンプル１
set SAMPLE1="あああ"
echo %SAMPLE1%

set SAMPLE2="いいい"
echo %SAMPLE2%

pause:

:: vim:tw=0:
