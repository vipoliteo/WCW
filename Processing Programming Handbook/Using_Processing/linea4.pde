void linea4(int x, int x2, int y, int y2){

int b = 0;
int n = 55;

// void setup(){
//  size(100, 100); 
// }

 // void draw(){
//   background(204);
  line(b, n, b+20, n-40);
  line(b+10, n, b+30, n-40);
  line(b+20, n, b+40, n-40);
  b = b- 1;
  if ( b < -40) {
    b = 100;
  }

}