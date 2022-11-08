﻿# Projet Echolocation : l'Oeil

Lyna Saoucha
Hela Menzli
Alexandre Janin

Ce projet vise a recréer l’écholocation utilisée par les chauve-souris (ainsi que certains cétacés) pour se repérer dans leur environnement. Une demi sphère qu'on peut attraper, mesure la distance à laquelle on est à un obstacle et fait vibrer la main en fonction de la distance : plus on se rapproche, plus les vibrations sont importantes.

[Page du wiki fablab](http://fablab.sorbonne-universites.fr/wiki/doku.php?id=wiki:projets:echolocation)

## Maquette finale et test


## Suivi du projet

### Présentation du projet : concept, idée et conception primaire de la prothèse.


Lors de cette séance, nous avons présenté une première idée de notre projet. Nous voulons travailler sur un dispositif qui permettrait de recréer la vision de nuit des chauve souris. Ces dernières ont une vision qui fonctionnent grâce à l'écholocation : une onde est émise par l'animal et lui revient lorsqu'elle rencontre un obstacle. Grace au temps pris par l'onde, la chauve souris peut savoir à quelle distance se trouvent les différents obstacles.
La présentation avait pour support le powerpoint présent dans le dossier ainsi que l'affiche.


### Initiation à Processing, un environnement de développement libre specialisé dans l'interface graphique.


Nous avons aussi pris en main Processing, grâce à des programmes basiques qui nous ont permis d'apprendre les fonctions setup et draw et de comprendre les différents objets de l'environnement (construire un point, choisir des couleurs, jouer avec la souris...).

### Conception d'une première prothèse : dessin et test en carton

![Dessin](https://github.com/alexandrejanin/echolocation/blob/master/DessinConception1.jpg)

![Test de maquette en carton](https://github.com/alexandrejanin/echolocation/blob/master/DessinConception2.jpg)

Nous sommes d'abord parti sur une première idée de boîtier pour cacher l'Arduino. On doit trouver un moyen d'avoir quelque chose de petit, transportable, qui tiendrait sur la main ou le bras.


### Ecriture du notre premier code sur Processing


Nous avons visualisé le phénomène de l’écholocation (aspect visuel). Nous avons crée un “jeu” où une balle rebondit sur un rectangle invisible et avec le rebondi, on doit retrouver où le rectangle se situe.
(Programme [Cercle](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/Cercle) et [Point](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/Point) dans le dossier Programmes)




### Initiation à Arduino:


Cette fois, c'est Arduino que nous avons découvert à l'aide d'une série d'exercice proposé par les encadreurs [lien](https://github.com/chevalvert/workshop-upmc-II/tree/master/2-Arduino)




Différent test des capteurs:


Photoresistor → Lumière → capteurLDR


Force Sensitive Resistor → Force (pression) → capteurFSR


Flex sensor → Flexion → capteurFLEX


Pulse sensor → Pouls → capteurPOULS


Ultrasonic Range Finder → Distance → capteurSONAR


Humidity sensor → Humidité → humidity et temperature


Après avoir changé le code fourni (un programme qui permet d'utiliser tout les capteurs), nous avons commencé à travailler sur ce qui intéressait notre sujet. On s'est rendu compte qu'on avait besoin d'un sonar pour emettre et envoyer des ondes et la réfléxion portait sur la manière de prévenir l'utilsateur. Est-ce -qu'on utilise de la lumière ? du son ? Autre chose ? Pour s'entraîner, on a crée un premier programme qui contrôle la fréquence du son à l'aide d'un potentiomètre. (Programme [BuzzerPotentiometre](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/BuzzerPotentiometre) dans le dossier Programmes)





Rappel sur la manipulation de l'Arduino et sa liaison à Processing.




On a enfin le sonar donc on peut commencer à écrire notre propre code. Le Sonar avec lequel on travaille est le capteur Sonar (modele Ultrasonic Range Finder - LV-MaxSonar-EZ1 SEN-00639 RoHS) qu'on associera avec un buzzer pour l'instant (Programme [SonarPitch](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/SonarPitch), [SonarLed](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/SonarLed), [SonarBips](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/SonarBips) dans le dossier Programme).


### Conception de la forme de la prothese :

![montage_sonar_vibreur](https://user-images.githubusercontent.com/46900484/200603614-8881526b-4efd-4090-b095-2ed2dbd49e43.png)


On a plusieurs idées : on pourrait partir sur un arc de cercle avec une forme d'oeil, qu'on tiendrait avec la main dans lequel on cacherait l'Arduino et le sonar. On a aussi pensé à un bracelet qu'on porterait au poignet ou sur le bras, en forme de boîte simple.
On a decidé de donner la perception de l'obstacle grâce à un vibreur : plus l'obstacle est proche, plus la fréquence de la vibration est rapide. (Programme [SonarVibration](http://wwww.github.com/alexandrejanin/echolocation/Programmes/SonarVibration) dans le dossier Programmes)

### Passage au fablab et travail sur la finition de la maquette aprés avoir choisi les points d'inspiration de départ :

![moodboard](https://user-images.githubusercontent.com/46900484/200603784-8e541ee6-384e-4a77-8e92-ccc41972907a.png)

![whatsapp_image_2019-05-08_at_23 37 32](https://user-images.githubusercontent.com/46900484/200604086-038b4b0d-20fc-4a5a-b60a-2f74b65286ca.jpeg)

