import java.util.Collections;
import paulib.Paulo;

Paulo paulo;

String question;
String answer;

int textQuestionPosX;
int textQuestionPosY;
int textQuestionWidth;
int textQuestionHeight;

int textAnswerPosX;
int textAnswerPosY;
int textAnswerWidth;
int textAnswerHeight;

PImage pauloImg;

int eyeWidth = 50;
int eyeHeight = 50;
int pupilRadius = 35;

BufferedReader answersFile;
ArrayList<String> answers;

void setup() {
  size(500, 700);

  question="";
  textQuestionPosX = 0;
  textQuestionPosY = width;
  textQuestionWidth = width;
  textQuestionHeight = height - width;

  answer="";
  textAnswerPosX = 0;
  textAnswerPosY = 0;
  textAnswerWidth = width;
  textAnswerHeight = height - width;

  pauloImg = loadImage("octopus.png");
  pauloImg.resize(500, 500);

  answersFile = createReader("data.txt");
  answers = new ArrayList<String>();
  try {
    String line;
    while ((line = answersFile.readLine()) != null) {
      answers.add(line);
    }
  }
  catch(IOException e) {
    println("problem reading data.txt " + e.getMessage());
    exit();
  }

  paulo = new Paulo(answers);
}

void draw() {
  clear();
  noStroke();
  fill(255);

  // question area
  rect(textQuestionPosX, textQuestionPosY, textQuestionWidth, textQuestionHeight);
  fill(0);
  textSize(20);
  text(question, textQuestionPosX, textQuestionPosY, textQuestionWidth, textQuestionHeight);

  // draw Paulo

  color speakerColor = color(0);
  switch(paulo.getSpeaker()) {
  case "@fhollande":
    speakerColor = color(255, 100, 100);
    break;
  case "@NicolasSarkozy":
    speakerColor = color(0, 0, 255);
    break;
  default:
    speakerColor = color(0);
  }

  // draw body
  image(pauloImg, 0, 0);

  // draw eye
  noStroke();
  fill(255);
  ellipse(width/2 - 15, width/2 + 25 -15, eyeWidth, eyeHeight);

  // draw pupil
  PVector dir = new PVector(mouseX - width/2, mouseY - (width/2 + 25));
  dir.normalize().mult(5);
  fill(speakerColor);
  ellipse(width/2  - 15 + dir.x, width/2 + 25 -15 + dir.y, pupilRadius, pupilRadius);

  // answer area
  fill(speakerColor);
  textSize(20);
  text(answer, textAnswerPosX, textAnswerPosY, textAnswerWidth, textAnswerHeight);
}


void keyTyped() {
  if (key == ENTER) {
    answer = paulo.getAnswer(question);
    question = "";
  } else if (key == DELETE || key == BACKSPACE) {
    if (question.length() > 0) {
      question=question.substring(0, question.length()-1);
    }
  } else {
    question=question + key;
  }
}
