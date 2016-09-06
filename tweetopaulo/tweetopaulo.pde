
PImage pauloImg;
String question;

void setup() {
  size(500, 700);

  // chargement de Paulo
  pauloImg = loadImage("paulo.png");

  question = "";
}

void draw() {
  noStroke();

  // zone de Paulo
  fill(0, 0, 0);
  rect(0, 100, 500, 500);

  // zone de reponse
  fill(255, 255, 255);
  rect(0, 0, 500, 100);

  // zone de question
  fill(255, 255, 255);
  rect(0, 600, 500, 100);

  image(pauloImg, 0, 100, 500, 500);

  // affichage oeil de Paulo
  stroke(0, 0, 0);
  fill(255, 255, 255);
  ellipse(235, 235, 55, 55);
  fill(0, 0, 0);
  ellipse(235, 235, 35, 35);

  // affichage de la question
  textSize(20);
  fill(0, 0, 0);
  text(question, 0, 600, 500, 100);
}

void keyTyped() {
  if (key == ENTER) {
    question = "";
  } else {
    question += key;
  }
}