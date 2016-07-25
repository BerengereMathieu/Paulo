---
title: Paulo le poulpe qui sait tout
layout: default
---

# Introduction à Processing - Paulo le poulpe qui sait tout

TODO schema (avec la vraie image du vrai poulpe)

## Introduction

### Consignes

* ajouter la fonction *setup*
* durant l'initialisation, afficher le message "Et les shadocks..."
* ajouter la fonction *draw*
* durant la phase de dessin, afficher le message "pompaient"

### Documentation utile

* *setup*
* *draw*
* *println*

### Notions utiles

Lorsque vous programmez une application avec Processing, vous créez généralement deux fonctions :
* *setup* : qui contient les instructions qui seront exécutées une seule fois au lancement de l'application ;
* *draw* :  qui contient les instructions qui seront exécutées en boucle par l'application tant qu'elle restera active.

La fonction *setup* est la fonction d'initialisation, *draw* est la fonction de dessin. 

La console est une zone spéciale permettant d'afficher des messages textuels.

## Dessin de l'interface

### Consignes

* Tracer en noir la zone où sera Paulo 
* Tracer en blanc la zone de saisie du texte par l'utilisateur
* Tracer en blanc la zone de réponse de Paulo

### Documentation utile

* *background*
* *fill*
* *stroke*
* *noStroke*
* *rect*

### Notions utiles

Processing utilise le système colorimétrique RGB pour représenter les couleurs. Une couleur est décrite par un triplet rouge-vert-bleu, chaque composante allant de 0 (sombre) à 255 (clair)

Pour savoir à quelle quantité de vert, rouge et bleu correspond une couleur donnée, Processing fournit un utilitaire accessible via *Tools > Color Selector*.
TODO screenshot screen-color_selector.png

## Affichage du poulpe Paulo

### Consignes

* Créer une variable de type *PImage*, nommée *pauloImg*
* Charger dans cette variable l'image représentant Paulo durant l'initialisation
* Afficher cette image dans la fonction de dessin 

### Documentation utile

* *PImage*
* *loadImage*
* *image*

### Notions utiles

Une variable est un espace mémoire dans lequel le programme conserve des informations. Une variable peut contenir un nombre, du texte, une image...

## L'oeil de Paulo

### Consignes 

* Tracer un cercle blanc, de rayon [[]] et dont le centre se situe à la position [[]]
* Tracer un cercle noir, de rayon [[]] et dont le centre se situe à la position [[]]

### Documentation utile

* *ellipse*
* *fill*
* *stroke*
* *noStroke*

### Notions utiles

Sous Processing, un cercle est une ellipse particulière dont la largeur est égale à la hauteur.

## Interroger Paulo \#1

### Consignes

* Créer une variable de type *String*, nommée *question*
* Dans la fonction *keyTyped* mettre à jour *question* en fonction de ce que l'utilisateur saisi au clavier
* Lorsque l'utilisateur appuie sur la touche *Entrée*, afficher le contenu de *question* dans la console, puis réinitialiser le contenu de *question* (en lui assignant la valeur "")

### Documentation utile

* *keyTyped*
* *key*

### Notions utiles

La fonction *keyTyped* permet de spécifier des instructions qui seront exécutées chaque fois que l'utilisateur presse une touche du clavier. La valeur de la touche pressée est stockée dans la variable *key*.

Le type *String* (en français "chaîne de caractères") sert à stocker du texte. Il est possible de créer une nouvelle chaîne de caractères à partir de deux chaînes en les joignant via l'opération "+" (on parle de "concatenation").