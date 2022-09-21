void setup() {
  background(255, 0, 0);
  size(1000, 1000);
}
boolean yes;
void draw() {
  fill(0, 0, 0);
  rect(0, 0, 1000, 1000);
  for (int a=0; a<5; a++) {
    strokeWeight((int)(Math.random()*5));
    int startX=(int)(Math.random()*600)+200;
    int startY=0;
    int endX=startX;
    int endY=0;
    stroke(#F7F255);
    while (startY<=1000) {
      endX=startX+(int)(Math.random()*19)-9;
      endY=startY+(int)(Math.random()*10);
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
    }
    fill(#5A5A5A);
    noStroke();
    ellipse(10, 10, 300, 200);
    ellipse(70, 50, 300, 200);
    ellipse(810, 190, 300, 200);
    ellipse(330, 210, 250, 200);
    ellipse(430, 120, 250, 200);
    ellipse(500, 140, 300, 200);
    ellipse(200, 160, 200, 200);
    ellipse(720, 170, 300, 200);
    ellipse(630, 130, 300, 200);
    ellipse(10, 200, 300, 200);
    ellipse(70, 50, 300, 200);
    ellipse(810, 10, 300, 200);
    ellipse(330, 20, 300, 200);
    ellipse(430, 10, 200, 200);
    ellipse(500, 10, 300, 200);
    ellipse(200, 10, 200, 200);
    ellipse(720, 10, 300, 200);
    ellipse(630, 10, 300, 200);
    ellipse(920, 10, 300, 200);
    ellipse(930, 100, 300, 200);

    fill(255, 255, 255);
  }
  if (yes) {
    x--;
  }
  textSize(64);
  text("Counter:"+x, 40, 120);
  textSize(32);
  if (x>0) {
    text("What happens when you get to 0?", 40, 220);
  } else if (x>-10) {
    text("Nothing...", 40, 220);
  } else if (x>-20) {
    text("Seriously...", 40, 220);
  } else if (x>-30) {
    text("Why are you still clicking???", 40, 220);
  } else if (x>-900) {
    text("Okay, seriously nothing else now.", 40, 220);
  } else
    text("Are you insane??? You clicked 1000 times........", 40, 220);
  int startX=300;
  int startY=500;
  int endX=300;
  int endY=500;
  int b=0;
  stroke((float)(Math.random()*256), (float)(Math.random()*256), (float)(Math.random()*256));
  strokeWeight((int)(Math.random()*5));
  while (startX<=1000 && yes) {
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*19)-9;
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
    if (endX>=500&&b==0) {
      int sX=endX;
      int sY=endY;
      int eX=endX;
      int eY=endY;
      while (sX<=1000) {
        eX=sX+(int)(Math.random()*10);
        eY=sY+(int)(Math.random()*19)-10;
        line(sX, sY, eX, eY);
        sX=eX;
        sY=eY;
      }
    }
  }
    noStroke();
    fill(#989898);
    rect(0, 400, 300, 200);
    rect(110, 390, 80, 10);
    fill(#3E2600);
    rect(115, 600, 70, 250);
    fill(#989898);
    rect(115, 620, 70, 10);
    rect(115, 660, 70, 10);
    rect(115, 700, 70, 10);
    rect(115, 740, 70, 10);
    rect(115, 780, 70, 10);
    rect(115, 820, 70, 10);
    yes=false;
    delay(50);
  }
  int x=100;
  void mousePressed() {
    yes=true;
    redraw();
  }
