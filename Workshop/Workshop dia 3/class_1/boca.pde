class Boca {

  float x, y, sX, sY;

  Boca(float posX, float posY, float sX, float sY) {

    this.x = posX;
    this.y = posY;
    this.sX = sX;
    this.sY = sY;
    
  }

  void display() {
    fill(0);
    rectMode(CENTER);
    rect(x, y, sX, sY);
 
  }
  
}