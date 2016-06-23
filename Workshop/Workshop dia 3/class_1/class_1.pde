Cara carita;
Cara carita2;
Boca boquita;
Boca boquita2;
Ojo ojito;
Ojo ojito2;

void setup() {
  size(500, 500);
  smooth();
  carita = new Cara(width/2, height/2, color(200,210,150));
  boquita = new Boca(width/2, 280, 100,10);
  ojito = new Ojo(225, height/2, color(255));
  carita2 = new Cara(width/4, height/4, color(0,125,150));
  boquita2 = new Boca(width/4, 150, 100, 10);
  ojito2 = new Ojo(100, height/4, color(255));
 }

void draw() {
  background(255);
  carita.display();
  carita.displai();
  boquita.display();
  ojito.display();
  ojito.displei();
  carita2.display();
  carita2.displai();
  boquita2.display();
  ojito2.display();
  ojito2.displei();
  
}