#!/bin/sh

# Vérifier l'emplacement du dossier
full_path="$(pwd)"
sub_path="steamapps/common/Wandersong/PC/PatchFR"

if [[ "$full_path" == *"$sub_path"* ]]; then

    if [ -d "old" ]; then
        mv old/* ../ 2>/dev/null
        mv old/lang/* ../lang/ 2>/dev/null
        rm -rf old
        echo "Le jeu a correctement été dépatché."
    else
        echo "Le répertoire 'old' n'a pas été trouvé."
        echo "Le patch n'a pas encore été appliqué ou le répertoire a été supprimé."
        echo "Dans un tel cas, veuillez passer par Steam. Voir la documentation."
        echo "Le répertoire 'old' n'a pas été trouvé." > ErrLog.txt
        echo "Le patch n'a pas encore été appliqué ou le répertoire a été supprimé." >> ErrLog.txt
        echo "Dans un tel cas, veuillez passer par Steam. Voir la documentation." >> ErrLog.txt
    fi

else
    echo "Le fichier ne se trouve pas dans le bon répertoire."
    echo "Le dossier 'PatchFR' doit être placé dans :"
    echo "\"steamapps/common/Wandersong/PC/\""
    echo "Le fichier ne se trouve pas dans le bon répertoire." > ErrLog.txt
    echo "Le dossier 'PatchFR' doit être placé dans :" >> ErrLog.txt
    echo "\"steamapps/common/Wandersong/PC/\"" >> ErrLog.txt
fi
