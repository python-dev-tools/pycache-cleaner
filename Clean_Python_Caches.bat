@echo off
title Clean Python Caches
SET rpath=%*
IF DEFINED rpath CD %rpath%
echo Operating Folder : %rpath%
echo.
echo Cleaning caches inside the folder recursively ...
For /R %%f IN (*.pyc) DO echo "%%f" & del "%%f"
echo.
echo COMPLETED!!
cmd /k