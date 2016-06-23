float posX;
float posY;

void setup() {
  size(1445, 800 );
  
  posX = width/2;
  posY = height/2;
}

void draw() {
  //frameRate(60);
  background(random(255), random(255), random(255));
  //posX = posX +1;
  noStroke();
  stroke(random(255), random(255), random(255));
  strokeWeight(random(200));
  rect(250,250,random(200), random(200));
  rect(250,550,random(200), random(200));
  rect(1250,250,random(200), random(200));
  rect(1250,550,random(200), random(200));
  fill(random(255), random(255), random(255));
  rectMode(CENTER);
  rect(posX, posY, random(1000), random(800));
  rect(posX, posY, random(1000), random(800));

}