@echo off

rem V‚rifier que le r‚pertoire est au bon endroit
set "full_path=%cd%"
set "sub_path=steamapps\common\Wandersong\PC\PatchFR"

echo %full_path% | findstr /I /C:"%sub_path%" >nul

if %ERRORLEVEL%==0 (

rem Cr‚ation d'un r‚pertoire old pour contenir les fichiers modifi‚s
mkdir old

rem Applications des patchs pour data.win & wandersong.exe
.\tools\xdelta-3.1.0-x86_64.exe -v -d -s "..\data.win" ".\FR\data.win.fr" "..\data.win.patch"
move "..\data.win" old
ren "..\data.win.patch" "data.win"
.\tools\xdelta-3.1.0-x86_64.exe -v -d -s "..\wandersong.exe" ".\FR\wandersong.exe.fr" "..\wandersong.exe.patch"
move "..\wandersong.exe" old
ren "..\wandersong.exe.patch" "wandersong.exe"

rem Int‚grer les dialogues traduits
mkdir old\lang
move "..\lang\English.tsv" old\lang
copy .\FR\English.tsv ..\lang
move "..\ws_credits" old
copy .\FR\ws_credits ..

echo Patch appliqu‚ ! Bon jeu !
) else (
echo Le Patch ne se trouve pas dans le bon r‚pertoire
echo Le r‚pertoire "PatchFR" doit ˆtre plac‚ dans ".\steamapps\common\Wandersong"
)
@pause
