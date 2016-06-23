class Imagen {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;
  float rot;
  PShape [] imagenSvg = new PShape[16];

  Imagen(float posX, float posY, float sizeX, float sizeY, float rotacion) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.rot = radians(rotacion);
    imagenSvg[0] = loadShape("moomin.svg");
    imagenSvg[1] = loadShape("moomin2.svg");
    imagenSvg[2] = loadShape("moomin3.svg");
    imagenSvg[3] = loadShape("moomin4.svg");
    imagenSvg[4] = loadShape("moomin5.svg");
    imagenSvg[5] = loadShape("moomin6.svg");
    imagenSvg[6] = loadShape("moomin7.svg");
    imagenSvg[7] = loadShape("moomin8.svg");
    imagenSvg[8] = loadShape("moomin9.svg");
    imagenSvg[9] = loadShape("moomin10.svg");
    imagenSvg[10] = loadShape("moomin11.svg");
    imagenSvg[11] = loadShape("moomin12.svg");
    imagenSvg[12] = loadShape("moomin13.svg");
    imagenSvg[13] = loadShape("moomin14.svg");
    imagenSvg[14] = loadShape("moomin15.svg");
    imagenSvg[15] = loadShape("moomin16.svg");
    //imagenSvg[0].disableStyle();
    //imagenSvg[1].disableStyle();
    //imagenSvg[2].disableStyle();
    //imagenSvg[3].disableStyle();
    //imagenSvg[4].disableStyle();
    //imagenSvg[5].disableStyle();
    //imagenSvg[6].disableStyle();
    //imagenSvg[7].disableStyle();
    //imagenSvg[8].disableStyle();
    //imagenSvg[9].disableStyle();
    //imagenSvg[10].disableStyle();
    //imagenSvg[11].disableStyle();
    //imagenSvg[12].disableStyle();
    //imagenSvg[13].disableStyle();
    //imagenSvg[14].disableStyle();
    //imagenSvg[15].disableStyle();
    
  }

  void display() {
    pushMatrix();
    translate(posX, posY);
    rotate(rot/2);
    shapeMode(CENTER);
    shape(imagenSvg[(int)random(16)], 0, 0, sizeX, sizeY);
    
    noLoop();
    popMatrix();
  }
}