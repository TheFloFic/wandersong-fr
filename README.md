# Wandersong en Français !!
Après plus d'un an de travail, la fan-traduction française de Wandersong est fini et désormais disponible à tous ! Cette traduction a été réalisée entièrement seul, soyez donc indulgent en cas d'erreur, j'essaierais de mettre à jour régulièrement le patch pour corriger les soucis rencontrés.

Cette traduction n'est pour le moment disponible que sur Windows, je ne m'y connais hélas pas assez en Linux & MAC. Si des personnes sont volontaires pour m'aider à ce sujet, n'hésitez pas à me contacter ! 

Le patch a été prévu pour la version Steam du jeu, si le besoin se fait savoir, j'essaierais d'également le rendre compatible avec la version GoG. Le patch n'est pas compatible avec la version Itch.io.

Ce patch n'est également pas compatible avec les versions consoles (beaucoup trop contraignant techniquement)

# Comment ça marche ?
- Premièrement, télécharger la dernière release [Lien à venir]
- Déposer le répertoire "PatchFR" dans le répertoire ".\steamapps\common\Wandersong\PC"
  - Allez sur Steam, clic droit sur le jeu, puis Propriétés
  - Dans "Fichiers installés" cliquer sur "Parcourir..."
  - Vous arrivez dans le répertoire "Wandersong"
  - Coller le répertoire "PatchFR" dans le répertoire "PC"
- Lancer le fichier "Patcher le jeu.bat"

Et voilà, votre jeu est désormais patché ! Vos anciens fichiers ont été placés dans le répertoire "old"

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

Vous pouvez déplacer le contenu de ce répertoire dans le répertoire "PC" et vous retrouverez votre jeu non-patché, en Anglais.
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
