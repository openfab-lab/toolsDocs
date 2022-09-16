# Utilisation de la Lasersaur :

_Todo: Mise à jour des explications via LightBurn_  
En attendant, voici le [**LightBurn beginner Tour**](https://docs.lightburnsoftware.com/BeginnerUITour.html)

![softwareUI](https://docs.lightburnsoftware.com/img/MainWindow.png)

# Maintenace

### Fiches entretien :
Fichette _(à mettre à jour depuis le changement de controleur)_ qui rapelle les principaux éléments à surveiller pour le fonctionnement optimale de la machine Lasersaur.  

#### Nettoyage des trous d'aspiration des fumées. 
  1. démonter le tube vers le filtre. Nous ne voulons pas envoyer toute la crasse dans le filtre, branchez y l'aspirateur à la place. 
  2. alumer l'aspirateur et dégager chaque trou de l'accumulation de poussière/colle/résidus.   
  3. remettre tout en place, enfin.   
  _Perso, j'utilise une mèche étagée pour ce nettoyage. Elles sont dans la boite "FORER" bien sûr_   
   ![image](https://user-images.githubusercontent.com/12049360/190647729-d9fca39e-0481-447a-a7e5-1b48f4d157b1.png)
#### Calibration des optiques *lentilles et mirroirs*

![fiche calibration des optiques](https://github.com/Lisa-oraa/toolsDocs/blob/master/Laser/Lasersaur/img/fiches-explicatives/calibration%20optique%20fiche%20entretien%20d%C3%A9but.jpg)
![fiche calibration des optiques](https://github.com/Lisa-oraa/toolsDocs/blob/master/Laser/Lasersaur/img/fiches-explicatives/calibration%20optique%20fiche%20entretien%20d%C3%A9but2.jpg)

#### Nettoyage de la boite
Avec l'aspirateur, il est important de maintenir le fond de la machine libre des débris de coupe pour éviter le feu.
#### Rangement materiaux https://github.com/openfab-lab/toolsDocs/issues/12
1. Ne pas laisser des chutes non nettoyée des débris.
2. Faire des tests ou un job en plein milieu d'une planche = zones gâchées = Nooooob = le mal :japanese_goblin:
3. **Diviser en plaques faciles à ranger et jeter, en petit morceaux, les chutes trop petites. **

![img_20180927_102641_dro](https://user-images.githubusercontent.com/12049360/46133788-a0214d80-c241-11e8-8865-908046e79048.jpg)

---
# Les détails techniques
## Calibration
Alignement, alignement et alignement. Tout doit être parfait, c'est simple en fait. 

![image](https://user-images.githubusercontent.com/12049360/190655379-43428a16-a02d-4c93-9cf8-992712229cef.png)

_TODO_

- Réassemblage du porte lentille. **C'EST A CE MOMENT QUE C'EST DELICAT, il faut bien ajuster les bagues du tube filleté pour obtenir une hauteur précise de la lentille**  

## Point de focale
![image](https://user-images.githubusercontent.com/12049360/190654232-17a0de34-ba7a-4669-8005-f487257e2042.png)

Dans notre cas :   
![Position Lentille](https://github.com/openfab-lab/toolsDocs/blob/master/Laser/Lasersaur/img/LasersaurLensAdjust.jpg)  



### Ajustement de la lentille 

J'ai donc modélisé le support de lentille avec un calcul "auto" des distances en jeux.  
La dimension du tube est connue, la longueur focale aussi (dépend de la lentille), je veux une distance facile à mesurer entre le point de focale et le bas du tube, ici 15mm. Ce qui me donne la valeur de 5,4mm comme position du bas de la lentille.  
Pour plus d'info ([voir le wiki laseraur](https://github.com/nortd/lasersaur/wiki/optics_setup))  
*note: la lentille se place face courbe vers le haut*  

- step 1: Fixer la dimension désirée de 5,4 sur le pied à coulisse. La vis au dessus et là pour fixer le pied en position. 
![pied à coulisse](https://github.com/openfab-lab/toolsDocs/blob/master/Laser/Lasersaur/img/IMG_20170214_094633.jpg)  
- step 2: Placer la première bague de réglage à la bonne hauteur en utilisant le pied à coulisse.   
![première bague](https://github.com/openfab-lab/toolsDocs/blob/master/Laser/Lasersaur/img/IMG_20170214_094801.jpg)  
- step 3: Placer délicatement la lentille. Ne pas utiliser ses mains nues. 
- step 4: Visser la bague de serrage et vérifier sa stabilité. 
- step 5: Remettre en place sur le chariot. 
