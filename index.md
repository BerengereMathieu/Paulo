---
title: Paulo le poulpe qui sait tout
layout: default
---

# Document de travail 


## Objectifs 
Le but de cet atelier est de vous faire découvrir le langage Processing, au travers de la réalisation d'une application : Paulo, un poulpe savant capable de répondre aux questions qu'on lui pose en citant des tweets de politiciens. 

![Dimensions et coordonnées des différents éléments de notre application]({{ site.url }}/Paulo/assets/schema.svg)
*Dimensions et coordonnées des différents éléments de notre application*

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

* Redimensionner le canevas pour qu'il correspondent aux dimensions indiquées sur le schéma
* Tracer en noir la zone où sera Paulo 
* Tracer en blanc la zone de saisie du texte par l'utilisateur
* Tracer en blanc la zone de réponse de Paulo

### Documentation utile

* *size*
* *fill*
* *stroke*
* *noStroke*
* *rect*

### Notions utiles

Processing utilise le système colorimétrique RGB pour représenter les couleurs. Une couleur est décrite par un triplet rouge-vert-bleu, chaque composante allant de 0 (sombre) à 255 (clair)

Pour savoir à quelle quantité de vert, rouge et bleu correspond une couleur donnée, Processing fournit un utilitaire accessible via *Tools > Color Selector*.

![Utilitaire de sélection de couleurs]({{ site.url }}/Paulo/assets/screen-color_selector.png)

*Utilitaire de sélection de couleurs*

## Affichage du poulpe Paulo

### Consignes

* Créer une variable de type *PImage*, nommée *pauloImg*
* Charger dans cette variable l'image représentant Paulo durant l'initialisation
* Afficher cette image dans la fonction de dessin, de manière ce que son coin supérieur gauche coïncide avec les coordonnées données dans le schéma

### Documentation utile

* *PImage*
* *loadImage*
* *image*

### Notions utiles

Une variable est un espace mémoire dans lequel le programme conserve des informations. Une variable peut contenir un nombre, du texte, une image...

## L'oeil de Paulo

### Consignes 

* Tracer un cercle blanc, de rayon 55 et dont le centre se situe à la position (238,235)
* Tracer un cercle noir, de rayon 35 et dont le centre se situe à la position (238,235)

### Documentation utile

* *ellipse*
* *fill*
* *stroke*
* *noStroke*

### Notions utiles

Sous Processing, un cercle est une ellipse particulière dont la largeur est égale à la hauteur.

## Interroger Paulo

### Consignes

* Créer une variable de type *String*, nommée *question*
* Dans la fonction *keyTyped* mettre à jour *question* en fonction de ce que l'utilisateur saisi au clavier
* Lorsque l'utilisateur appuie sur la touche *Entrée*, afficher le contenu de *question* dans la console, puis réinitialiser le contenu de *question* (en lui assignant la valeur "")

### Documentation utile

* *keyTyped*
* *key*
* *text*

### Notions utiles

La fonction *keyTyped* permet de spécifier des instructions qui seront exécutées chaque fois que l'utilisateur presse une touche du clavier. La valeur de la touche pressée est stockée dans la variable *key*.

Le type *String* (en français "chaîne de caractères") sert à stocker du texte. Il est possible de créer une nouvelle chaîne de caractères à partir de deux chaînes en les joignant via l'opération "+" (on parle de "concaténation").

## Afficher la question posée

### Consignes

* Tracez un rectangle blanc, de manière ses coins coïncident avec les coordonnées de la zone "Question à Paulo" du schéma
* Dans la même zone, affichez en noir le texte contenu dans la variable *question*
* Modifiez le code pour que le texte soit affiché en taille 20 

### Documentation utile

* *rect*
* *fill*
* *textSize*
* *text*

### Notions utiles

La fonction *text* permet de définir un rectangle à l'intérieur duquel le texte sera affiché. Le retour à la ligne est alors géré automatiquement, en fonction de la taille du rectangle.

Le texte fonctionne comme n'importe toutes les primitives de dessin de Processing : on précise d'abord son apparence (par exemple avec les fonctions *fill*, *textsize*, etc.) puis on le trace grâce à la fonction *text*.

## Charger le fichier contenant les réponses possibles de Paulo

### Consignes

* Créez une variable *answersFile* de type *BufferedReader*
* Créez une variable *answers* de type *ArrayList<String>* 

### Documentation utile

### Notions utiles

## Afficher la réponse de Paulo

### Consignes 

* Créez le dossier *code*
* Placez le fichier  *paulib.jar* correspondant à la bibliothèque *paulib* dans ce dossier

### Documentation utile

### Notions utiles

## Changer la couleur de la réponse

### Consignes

### Documentation utile

### Notions utiles


