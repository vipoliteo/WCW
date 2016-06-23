class Cara{
  
  float x;
  float y;
  color b;
  
  Cara( float posX, float posY, color col){
  this.x = posX;
  this.y = posY;
  this.b = col;
}


void display(){
  fill(b);
  ellipse(x, y, 150, 150);
  
  
}
void displai(){
   y = random(y-1, y+1); 
  }
}