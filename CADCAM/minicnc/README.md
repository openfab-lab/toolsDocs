
# Tutoriel pour la minicnc

1. [Introduction](#hello-world-)
1. [Inkscape, préparation fichier](#1-ouvrir-inkscape)
1. [Sur la machine cnc](#sur-la-machine-)


## Hello world! ㋡

    name: Justine Boudeville
    job: Graphic Designer
    date: 04/09/2009 
    


### PREMIER TEST MANUEL :
![Capture d’écran 2019-09-05 à 11 52 21](https://user-images.githubusercontent.com/54895357/64331800-c0ba6180-cfd3-11e9-9b52-30a5128ebc4c.png)


### PREMIER TEST NUMERIQUE (avec application encre argenté) :
![IMG_20190904_141643](https://user-images.githubusercontent.com/54895357/64332190-666dd080-cfd4-11e9-9578-620307a98cad.jpg)

### INTRODUCTION : 
« La machine outil à commande numérique » CNC ou « computer numerical control » en anglais est une machine-outil dotée d'une commande numérique assurée par un ordinateur. La fonction d’usinage est déterminée par un programme, qui commande les déplacements des outils sur la masse à usiner. Il définit l’axe de rotation de la fraise en fraisage, et l’axe de rotation de la pièce en tournage. La machine, une fraiseuse à trois ou cinq axes, est entièrement automatisée et contrôlée par ordinateur.

### CONTEXTE :
Création de tampons dans le cadre du workshop BOOM Festival par le collectif fais le toi-même.
Création personnalisée de drapeaux à envoyer dans le monde. 
### OBJECTIFS : 
Apprendre le processus d’impression sur tampon.
Manipuler le tampon, l’encre, et avoir un rendu net.
Communiquer par le biais d’un langage graphique à travers le monde. 

### MATERIEL :
- Carré de linogravure
- Encrier
- Inkscape
- Extension g-code
- Extension EggBot
- CNC

_Un autre tutoriel qui m'a bien aidé!_
[tutoriel, gcode](http://wiki.funlab.fr/index.php/Gcode_avec_Inkscape)


### Commençons! ☺

#### 1. Ouvrir Inkscape.

#### 2. S’assurer que la dimension du fichier est  ≤ sur la masse à usiner.

![Capture d’écran 2019-09-05 à 11 54 09](https://user-images.githubusercontent.com/54895357/64331894-e8a9c500-cfd3-11e9-8a42-43f1d33fc81b.png)

Ici la surface du carré de lino est de 75 x 75 mm + Vérifier l’échelle (notamment quand on importe un fichier SVG dans Inkscape)

#### 3. Mettre un contour de différentes couleurs pour chaque objet.


#### 4. Vérifier que les  objets soient en chemin, objet vectoriel. « Chemin → Objet en chemin ».
![Capture d’écran 2019-09-05 à 11 54 41](https://user-images.githubusercontent.com/54895357/64331934-f8290e00-cfd3-11e9-9987-384dbc2b44af.png)  
Combiner les chemins (Ctrl+K) si votre design en comporte plusieurs.

#### 6. Mettre l’illustration en effet miroir (uniquement pour l’usage de tampon).
#### 7. Le rayon de l"outil.

Ajuster les contours de votre dessin, par rapport au rayon de l'outil. Ici 1 mm, pour venir enlever la matière avec une mèche universelle. Je mets donc le contour de ma forme à 1 mm.  
_Pour une mèche en V, c'est un peu plus casse-tête! Cette dernière me sert ici, pour nettoyer ma forme, que j'utilise en dernier._
Jettes un coup d'oeil ici si tu ne sais pas calculer le rayon de ta mèche en v : [issue_mèche](https://github.com/justineboudeville/minicnc/issues/2)

#### 8. Extension EggBot  


Télécharger l'extension ⬇️  
[EggBot_extensions_v281.zip](https://github.com/justineboudeville/minicnc/files/3578694/EggBot_extensions_v281.zip)   



Ici, nous allons nous servir de la focntion Hatchfill.   
![Capture d’écran 2019-09-05 à 12 01 39](https://user-images.githubusercontent.com/54895357/64332527-0592c800-cfd5-11e9-9cfa-27dab2ae4a92.png)   


Cocher la case "Connect nearby ends?"  


Cela vas générer un chemin avec des noeuds, ce qui permettra de gagner du temps. La fraiseuse vas faire qu'un seul tracé. 
![Capture d’écran 2019-09-05 à 12 01 44](https://user-images.githubusercontent.com/54895357/64332529-062b5e80-cfd5-11e9-906e-cd5da7f72d65.png)

Résultat :   

![Capture d’écran 2019-09-05 à 12 01 49](https://user-images.githubusercontent.com/54895357/64332528-0592c800-cfd5-11e9-9c5f-730e9038b4e2.png)


#### 9. Extension G-Code
Les versions d'Inkscape 0.91 et ultérieures disposent nativement de cette extension, traduite en français par "programmation de commande numérique".  
Dans le cas contraire, voici le fichier ⬇️  


[gcodetools.tar.gz](https://github.com/justineboudeville/minicnc/files/3578703/gcodetools.tar.gz)

#### 10. Les points d’orientations
Sous Inkscape, sans sélectionner votre dessin, lancer « Extensions → Programmation de commande numérique → Points d’orientation... ». Il s’agit de choisir les origines pour gérer les déplacements de l’outil selon le tracé de votre dessin.  


![Capture d’écran 2019-09-05 à 12 14 08](https://user-images.githubusercontent.com/54895357/64333449-d3826580-cfd6-11e9-84ff-4dda70decf11.png)  

Laissez tous les réglages par défaut et indiquez une valeur pour « Profondeur sur l’axe Z ».
Ici, il consiste à graver d’une profondeur de 1 mm un parapluie dans du lino d’épaisseur 3 mm, (et de surface 750 x 750 mm).
Choisir donc « Profondeur sur l’axe Z : 1 »
Appliquer
Les points de coordonnées apparaissent. 
Ne touchez pas celui du (0.0 ; 0.0 ; 0.0), et positionnez l’autre coordonnée de fait qu’il soit sur la partie droite.  


![Capture d’écran 2019-09-05 à 12 14 15](https://user-images.githubusercontent.com/54895357/64333461-d8dfb000-cfd6-11e9-9e36-f5cdd6047ddd.png)

![Capture d’écran 2019-09-05 à 12 14 22](https://user-images.githubusercontent.com/54895357/64333464-dbdaa080-cfd6-11e9-8528-56f88d46678a.png)


#### 11. La blibliothèque d'outils  



![Capture d’écran 2019-09-05 à 12 14 26](https://user-images.githubusercontent.com/54895357/64333474-ded59100-cfd6-11e9-936f-63fd427129b1.png)

![Capture d’écran 2019-09-05 à 12 14 31](https://user-images.githubusercontent.com/54895357/64333480-e137eb00-cfd6-11e9-8860-048fa92f663c.png)  



Le cadre est modifiable avec l’outil texte. 
Changez vos paramètres selon votre design et outil. 

- diameter (diamètre de l’outil en mm) 
- feed (vitesse d’avance horizontale de l’outil en mm/min.) 
- penetration feed (vitesse de pénétration de l’outil dans le matériau en mm/min.) 
- depth step (profondeur de passe en mm) ;

#### 12. Générer le code
« Extensions → Programmation de commande numérique → Chemin vers G-code... »

![Capture d’écran 2019-09-05 à 12 14 36](https://user-images.githubusercontent.com/54895357/64333487-e39a4500-cfd6-11e9-9d66-c1cbf7bc2dd4.png)
  

Renommer fichier + Indiquez l’emplacement du code
Remplacer par .ngc (pour que la machine du lac puisse lire le code)

  ![Capture d’écran 2019-09-05 à 12 14 44](https://user-images.githubusercontent.com/54895357/64333488-e5640880-cfd6-11e9-8125-a5aaa94a5fea.png)

#### SUR LA MACHINE : 


![Capture d’écran 2019-09-05 à 12 19 39](https://user-images.githubusercontent.com/54895357/64334016-011bde80-cfd8-11e9-812a-b3a9d51460b9.png)  

- Placer le matériel sur lequel vous allez travailler (Ici cadre de bois pour maintenir le lino)
- Allumer l’ordinateur
- Entrer le MDP
- Ouvrir Launch my-minicnc sur le bureau
- Déplacer votre G-code dans le fichier minicnc
- L’ouvrir 

![IMG_20190904_134942](https://user-images.githubusercontent.com/54895357/64334043-0da03700-cfd8-11e9-8441-171dd8212591.jpg)

![IMG_20190904_134955](https://user-images.githubusercontent.com/54895357/64334052-1264eb00-cfd8-11e9-8b6f-91fb08db486e.jpg)

Faire les mise au point de X, Y et Z, en utilisant Shift + Home pour définir un point d’origine.
  
![IMG_20190904_135149](https://user-images.githubusercontent.com/54895357/64334055-155fdb80-cfd8-11e9-9218-2d9394597cf0.jpg)

**Attention de bien régler le Z !!!**  


![IMG_20190904_134640](https://user-images.githubusercontent.com/54895357/64334080-1f81da00-cfd8-11e9-941e-09886b76dd67.jpg)
![Capture d’écran 2019-09-05 à 12 22 26](https://user-images.githubusercontent.com/54895357/64334092-227cca80-cfd8-11e9-8e8b-a1488c518ccc.png)


Si tout est ok, tu peux alors lancer le code (F2)
  
![IMG_20190904_135010](https://user-images.githubusercontent.com/54895357/64334112-2c063280-cfd8-11e9-932b-095a8a3c00ed.jpg)


