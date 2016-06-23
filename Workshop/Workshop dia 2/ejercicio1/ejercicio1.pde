color a, c, na;

void setup() {
 size(600, 600);
 background(a);
  smooth();
 na = color (0,125,150);
 c = color (6, 189, 191);
 a = color (200,210,150); 
}

void draw() {
 for (int i=10; i<width; i+=20) {
   for (int j=10; j<height; j+=20) {
     if (i > 150 && i < 450 || j > 150 && j < 450) {
       na = color(200,210,150);
     }else if( i > 250 && i < 350 || j > 250 && j < 350){
       na = color(255);
     }
     else {
       c = color(random(255),random(255),random(255));
     }
 
     strokeWeight(2);
     stroke(c);
     fill(na);
     ellipse (i, j, 10, 10);
     
   }
 }
}