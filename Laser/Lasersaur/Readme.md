# Lasersaur Setup

## Point de focale

**Contexte**  
![contimac CM240](http://www.contimac.be/Repository/Cached/Producten/25150-canvas-290.jpg)  
Le compresseur de puissance qu'on utilise ([Contimac CM240](http://www.contimac.be/fr/produit/4111211125/compresseurs-professional/sans-huile-coaxiaux/cm-240-10-5-w)) au bureau a accumulé de la condensation dans sa réserve d'air. En le déplaçant pour x raison à l'instant t, l'eau pleine de rouille s'est engagée dans le circuit d'air du laser.  
Aboutissant à une belle diarhée brune sur le panneau en cours de découpe et dans le tube support de lentille ainsi que dans le circuit d'air comprimé.   
Yumm  

**Résolution**
- Couper d'urgence la machine. Le bouton d'arrêt d'urgence est à droite. Il est rouge. 
- Nettoyage du compresseur et vidange du mieux qu'on peut de la réserve d'air. 
- Nettoyage du porte lentille et de la lentille, à l'eau sans savon puis à l'alcool isopropylique (aka isopropanol, aka rubbing alcohol) 
- Nettoyage du circuit d'air comprimé, les tubes dès la sortie du compresseur. J'ai utilisé une seringue 50ml pour injecter plusieurs doses d'eau robinet, puis d'eau distillée, puis d'eau distillée + isopropanol (pour accélérer l'évaporation) 
- Faire tourner le second compresseur d'aérographe du lab un long moment jusqu'à satisfaction que le système est sec. 
- Nettoyage de la machine, à l'intérieur et le chariot pour les éclabousures.
- Réassemblage du porte lentille. **C'EST A CE MOMENT QUE C'EST DELICAT, il faut bien ajuster les bagues du tube filleté pour obtenir une hauteur précise de la lentille**  
- Réassemblage de l'ensemble et test de fonctionnement. 

### Ajustement de la lentille 

![Position Lentille](https://github.com/openfab-lab/toolsDocs/blob/master/Lasersaur/img/LasersaurLensAdjust.jpg)  

J'ai donc modélisé le support de lentille avec un calcul "auto" des distances en jeux.  
La dimension du tube est connue, la longueur focale aussi (dépend de la lentille), je veux une distance facile à mesurer entre le point de focale et le bas du tube, ici 15mm. Ce qui me donne la valeur de 5,4mm comme position du bas de la lentille.  
Pour plus d'info ([voir le wiki laseraur](https://github.com/nortd/lasersaur/wiki/optics_setup))  
*note: la lentille se place face courbe vers le haut*  

- step 1: Fixer la dimension désirée de 5,4 sur le pied à coulisse. La vis au dessus et là pour fixer le pied en position. 
![pied à coulisse](https://github.com/openfab-lab/toolsDocs/blob/master/Lasersaur/img/IMG_20170214_094633.jpg)  
- step 2: Placer la première bague de réglage à la bonne hauteur en utilisant le pied à coulisse.   
![première bague](https://github.com/openfab-lab/toolsDocs/blob/master/Lasersaur/img/IMG_20170214_094801.jpg)  
- step 3: Placer délicatement la lentille. Ne pas utiliser ses mains nues. 
- step 4: Visser la bague de serrage et vérifier sa stabilité. 
- step 5: Remettre en place sur le chariot. 

# Dossier comprenant les fiches explicatives pour l'utilisation de la Lasersaur :

## Fiches Explicatives :
Fiches A5 qui explique **le fonctionnement élémentaire de la machine**, peut être utilisé par les novices

## Fiches Rappel :
Fiches *Checklist* qui rappel tous les points à ne surtout pas oublié lors de l'utilisation de la machine laser. Cette fiche est déstivé aux **utilisateurs qui ont déja eu une introduction à la machine.** 

## Fiches entretien :
Fichette qui explique comment réparer, ou entretenir la machine Lasersaur. Répertoir à utilisé en cas de problème ou de lors de la maintenance de la machine. 
- Remplacement du filtre
- Calibration des optiques *lentilles et mirroirs*
- Netoyage compresseur
- Rangement materiaux
