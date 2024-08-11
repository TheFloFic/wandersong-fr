@echo off
mkdir old
.\tools\xdelta-3.1.0-x86_64.exe -v -d -s "..\data.win" ".\FR\data.win.fr" "..\data.win.patch"
move "..\data.win" old
ren "..\data.win.patch" "data.win"
.\tools\xdelta-3.1.0-x86_64.exe -v -d -s "..\wandersong.exe" ".\FR\wandersong.exe.fr" "..\wandersong.exe.patch"
move "..\wandersong.exe" old
ren "..\wandersong.exe.patch" "wandersong.exe"
mkdir old\lang
move "..\lang\English.tsv" old\lang
copy .\FR\English.tsv ..\lang
move "..\ws_credits" old
copy .\FR\ws_credits ..
echo Patch appliqu‚ ! Bon jeu !
@pause
