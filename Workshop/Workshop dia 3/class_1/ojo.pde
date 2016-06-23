class Ojo{
  
  float x;
  float y;
  color b;
  
  Ojo( float posX, float posY, color col){
  this.x = posX;
  this.y = posY;
  this.b = col;
}


void display(){
  fill(b);
  ellipse(x, y, 30, 30);
  ellipse(x + 50, y, 30, 30);
  fill(0);
  ellipse(x, y, 10, 10);
  ellipse(x + 50, y, 10, 10);
  
  
}
void displei(){
   x = random(x-1, x+1); 
  }
}