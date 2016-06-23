int tamano;
void setup() {
  size(500, 500);
  background(255, 0, 0);
  tamano = 101;
  //smooth();
}

void draw() {
  
  fill(0, 255, 0);
  rect(0, 0, tamano, tamano);
  fill(0, 0, 255);
  rect(400, 0, tamano, tamano);
  fill(255, 255, 0);
  rect(0, 400, tamano, tamano);
  fill(0, 255, 255);
  rect(400, 400, tamano, tamano);
  fill(255);
  ellipse(width/2, height/2, tamano, tamano);
}