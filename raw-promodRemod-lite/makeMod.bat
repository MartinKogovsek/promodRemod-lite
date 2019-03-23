@echo off
set modname=raw-promodRemod-lite
set COMPILEDIR=%CD%
color f5
title "promodRemod-lite 2018"

:MAKEOPTIONS
cls

:MAKEOPTIONS



echo ____________________________________
echo                                     \   Active mod: %modname%                        
echo  Developer:                           \________________________
echo       __    __                              ___                \ 
echo     _/  /_ /__/  ____    ____  ___  ___  __/ _/                 \       
echo     \   __\:  : /    \ _/ ___\ \  \/  / / __ /                  /
echo      :  /  :  :/   :  \\  \___  :    : / /_/ :                  \
echo      :__:  :__::___\  / \___  //__/\_ \\____ \                  /
echo                     \/      \/       \/     \/                  \
echo.                          dev@tincxd.com                        /
echo.                                                                \
echo.                                                                /
echo  Please select an option:                                       \
echo    1. Start mod                                                 /
echo                                                                 \
echo    2. Build Fast File                                           /
echo    3. Build IWD File                                            \
echo.                                                                \
echo    0. Exit                                                      / 
echo _______________________________________________________________/
echo.

set /p make_option=:
set make_option=%make_option:~0,1%
if "%make_option%"=="1" goto startmod
if "%make_option%"=="2" goto build_ff
if "%make_option%"=="3" goto build_iwd
if "%make_option%"=="0" goto FINAL
goto :MAKEOPTIONS


:build_iwd
cls
cd
echo _________________________________________________________________
echo.
echo  Building promodlive.iwd:
del z_custom_ruleset.iwd
del z_z_pR.iwd
del z_c_r.iwd

7za a -r -tzip z_pR.iwd images
7za a -r -tzip z_pR.iwd sound
7za a -r -tzip z_pR.iwd weapons
7za a -r -tzip z_c_r.iwd promod_ruleset
echo.
echo Completed: %time%
echo.
echo _________________________________________________________________
echo.
pause
goto :MAKEOPTIONS

:build_ff
cls
cd
echo _________________________________________________________________
echo.
echo  Building mod.ff:
echo    Deleting old mod.ff file...
del mod.ff

echo    Copying rawfiles...
xcopy shock ..\..\raw\shock /SY
xcopy images ..\..\raw\images /SY
xcopy materials ..\..\raw\materials /SY
xcopy material_properties ..\..\raw\material_properties /SY
xcopy sound ..\..\raw\sound /SY
xcopy soundaliases ..\..\raw\soundaliases /SY
xcopy fx ..\..\raw\fx /SY
xcopy mp ..\..\raw\mp /SY
xcopy weapons\mp ..\..\raw\weapons\mp /SY
xcopy xanim ..\..\raw\xanim /SY
xcopy xmodel ..\..\raw\xmodel /SY
xcopy xmodelparts ..\..\raw\xmodelparts /SY
xcopy xmodelsurfs ..\..\raw\xmodelsurfs /SY
xcopy ui ..\..\raw\ui /SY
xcopy ui_mp ..\..\raw\ui_mp /SY
xcopy english ..\..\raw\english /SY
xcopy vision ..\..\raw\vision /SY

echo    Copying source code...
xcopy maps ..\..\raw\maps /SY
xcopy promod ..\..\raw\promod /SY
xcopy promod_ruleset ..\..\raw\promod_ruleset /SY

echo    Copying MOD.CSV...
xcopy mod.csv ..\..\zone_source /SY

echo    Compiling mod...

cd ..\..\bin
linker_pc.exe -language english -compress -cleanup mod
cd %COMPILEDIR%
copy ..\..\zone\english\mod.ff


echo  New mod.ff file successfully built!
echo.
echo Completed: %time%
echo.
echo _________________________________________________________________
echo.
pause
goto :MAKEOPTIONS

:startmod
cls
cd ..\..\
START server.exe +set developer 1 +g_gametype sd +set fs_game mods/%modname% +devmap mp_crash 
cd %COMPILEDIR%
pause
goto :MAKEOPTIONS
:FINAL