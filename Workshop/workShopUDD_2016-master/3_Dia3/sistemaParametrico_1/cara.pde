class Cara {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;

  public Cara(float posX, float posY, float sizeX, float sizeY) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }

  public void display() {
    //rostro
    fill(255,255,255, random(150,250));
    noStroke();
    ellipse(posX, posY, sizeX, sizeY);
  }
}