# Wandersong en Français !!
Après plus d'un an de travail, la fan-traduction française de Wandersong est fini et désormais disponible à tous ! Cette traduction a été réalisée entièrement seul, soyez donc indulgent en cas d'erreur, j'essaierais de mettre à jour régulièrement le patch pour corriger les soucis rencontrés.

Cette traduction n'est pour le moment disponible que sur Windows & SteamDeck / Linux, je ne m'y connais hélas pas assez en Mac. Si des personnes sont volontaires pour m'aider à ce sujet, n'hésitez pas à me contacter ! 

Le patch a été prévu pour la version [Steam](https://store.steampowered.com/app/530320/Wandersong/) du jeu, si le besoin se fait savoir, j'essaierais d'également le rendre compatible avec la version GoG (dans l'hypothèse où c'est faisable). Le patch n'est pas compatible avec la version Itch.io (et ne le sera sans doute jamais — trop de contraintes techniques).

Ce patch n'est également pas compatible avec les versions consoles (beaucoup trop contraignant techniquement).

# Comment ça marche ?
- Premièrement, télécharger la dernière release : [https://github.com/TheFloFic/wandersong-fr/releases/download/V1.2.0/WandersongFR_V1.2.zip](https://github.com/TheFloFic/wandersong-fr/releases/download/V1.2.0/WandersongFR_V1.2.zip)
- *Si vous êtes sur SteamDeck, il faut impérativement passer en mode Bureau (Steam – Menu > Marche/Arrêt > Basculer vers le bureau).*
- Déposer le répertoire "PatchFR" dans le répertoire ".\steamapps\common\Wandersong\PC"
  - Allez sur Steam, clic droit sur le jeu, puis Propriétés
  - Dans "Fichiers installés" cliquez sur "Parcourir..."
  - Vous arrivez dans le répertoire "Wandersong"
  - Collez le répertoire "PatchFR" dans le répertoire "PC"
- *Dans le cas où vous avez une ancienne version du patch, vous pouvez l'écraser par la nouvelle*
### Cas Windows
- Si vous êtes sur Windows, exécutez simplement le fichier "Patcher le jeu.bat"
  - *Ça fonctionne également même si vous avez déjà installé une ancienne version du patch*
### Cas SteamDeck / Linux
- Si vous êtes sur SteamDeck / Linux, rendez exécutable le fichier "PatchSD.sh" :
  - Méthode 1 : Clic droit sur le fichier > Propriétés > Droits d'accès > Cocher "Autoriser l'exécution du fichier un programme".
  - Méthode 2 : Ouvrir un terminal dans le répertoire (Clic droit > Ouvrir un terminal ici) et saisir `chmod +x ./PatchSD.sh`
- Puis, exécuter le script :
  - Méthode 1 : Clic droit sur le fichier > Lancer dans Konsole
  - Méthode 2 : Double cliquer sur le fichier > Exécuter le Script *(cette méthode ne génère aucun log visuel - vous saurez que c'est OK en constatant l'absence de fichier "ErrLog.txt" et la présence du répertoire "Old")*
  - Méthode 3 : Depuis le terminal, depuis le répertoire, en saisissant `./PatchSD.sh`
  - *Toutes ces méthodes servent également pour mettre à jour le patch, même si vous avez déjà installé une ancienne version*
  
Et voilà, votre jeu est désormais patché ! Vos anciens fichiers ont été placés dans le répertoire "old" **(ne supprimez pas ce répertoire — ils servent au process de dépatch et de mise à jour)**.

# Problèmes
## "Le patch ne se trouve pas dans le bon répertoire"
### Le patch n'a pas été placé dans le bon répertoire
Assurez-vous de bien déposer le répertoire "PatchFR" dans le répertoire "PC", faites aussi bien attention à ne rien renommer !
### Mon chemin n'est pas exactement le même qu'indiqué
C'est peut-être car vous avez installé Wandersong dans un autre répertoire non-prévu par Steam. Une sécurité a été mise en place pour éviter que le patch ne soit installé n'importe où et ne cause des soucis.

Pour retirer cette sécurité, modifier le fichier "Patcher le jeu.bat", à la ligne 5, remplacer le contenu de la variable sub_path par "PatchFR"
* Avant : set "sub_path=steamapps\common\Wandersong\PC\PatchFR"
* Après : set "sub_path=PatchFR"
## Mon jeu ne se lance plus
Avez-vous bien exécuté votre patch sur la version Steam du jeu ? Le patch n'est actuellement pas compatible avec les version Itch.io et GoG

Il est toujours possible de récupérer vos fichiers d'origine dans le répertoire "old"
# "Dé-patcher" le jeu / Revenir à la version d'origine
Il y a 2 méthodes possibles :
## Remplacer les fichiers
Le patch a automatiquement réalisé des backups de vos anciens fichiers, présents dans le répertoire "PatchFR\old".

Les outils "Dépatcher le jeu.bat" (Windows) ou "DepatcherSD.sh" (SteamDeck/Linux) vous permettent d'automatiquement dépatcher votre jeu et de le rendre dans son état d'origine.
Concernant le script "DepatcherSD.sh", il faut utiliser la même méthodologie que pour le patcheur.

## Re-télécharger le contenu
Steam permet de vérifier l'intégrité des fichiers du jeu, en cas de différence, il va retélécharger les fichiers modifiés :
* Aller sur Steam, clic droit sur le jeu, puis Propriétés
* Dans "Fichiers installés", cliquer sur "Vérifier l'intégrité des fichiers du jeu"
* Steam va retélécharger les fichiers modifiés
* Votre jeu est de nouveau en Anglais

# Contenu manquant
Si vous êtes bien curieux, vous remarquerez peut-être que certains dialogues ne sont pas encore traduits. Le premier objectif était de traduire l'essentiel du jeu, ce qu'un joueur lambda rencontrera. Par la suite il reste :
* Dialogues alternatifs
* Dialogues secrets
* Commentaire de développeur

L'idée est bien sûre de tout traduire, tout sera fait au fur et à mesure, et le patch sera mis à jour en conséquence !

# Contact
Si besoin de me contacter pour quelconque raisons (questions, bugs, problèmes, etc.), je suis dispo sur [BlueSky](https://bsky.app/profile/theflofic.bsky.social).
Tous mes autres réseaux sont dispo sur ma page [Bento](https://bento.me/theflofic).

# Crédits
Le patcher a pu être rendu possible grâce à l'outil [xdelta3](https://github.com/Moodkiller/xdelta3-gui-2.0) (avec interface graphique)
