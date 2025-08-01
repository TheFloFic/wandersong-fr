#!/bin/sh

chmod +x tools/xdelta3
full_path=$(pwd)
sub_path="steamapps/common/Wandersong/PC/PatchFR"

if [[ "$full_path" == *"$sub_path"* ]]; then

    if [ -d "old" ]; then
        mv old/* .. 2>/dev/null
        mv old/lang/* ../lang 2>/dev/null
        rm -rf old
    fi

# Création d'un répertoire old pour contenir les fichiers modifiés

mkdir -p old
mkdir -p old/lang
    mv ../lang/English.tsv old/lang/
    cp ./FR/English.tsv ../lang/
    mv ../ws_credits old/
    cp ./FR/ws_credits ../

# Applications des patchs pour data.win & wandersong.exe
    ./tools/xdelta3 -v -d -s ../data.win ./FR/data.win.fr ../data.win.patch
    mv ../data.win old/
    mv ../data.win.patch ../data.win

    ./tools/xdelta3 -v -d -s ../wandersong.exe ./FR/wandersong.exe.fr ../wandersong.exe.patch
    mv ../wandersong.exe old/
    mv ../wandersong.exe.patch ../wandersong.exe

    echo "Patch appliqué ! Bon jeu !"

else
    echo "Le Patch ne se trouve pas dans le bon répertoire" > ErrLog.txt
    echo "Le répertoire 'PatchFR' doit être placé dans './steamapps/common/Wandersong'" >> ErrLog.txt
    echo "Le Patch ne se trouve pas dans le bon répertoire"
    echo "Le répertoire 'PatchFR' doit être placé dans './steamapps/common/Wandersong'"
fi
