class Wilker{

int x, y;

Wilker() {
  x = width/2;
  y = height/2;
}

void display() {
  noStroke();
  fill(255,255,255,50);
  ellipse(x,y,20,20);
  
}

void step(){
  int choice = int(random(4));
  if (choice == 0){
    x+=20;
  } else if (choice == 1){
    x-=20;
  } else if (choice == 2){
    y+=20;
  } else {
    y-=20;
  }
  if (x > width){
      x-=20;
  }
   if (x < 0){
      x+=20;
  }
  if (y > height){
      y-=20;
  }
   if (y < 0){
      y+=20;
  }
}
}