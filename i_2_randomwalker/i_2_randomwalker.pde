
Walker a;
Wolker o;
Wulker u;
Welker e;
Wilker i;

void setup() {
  size(500, 500);
  a = new Walker();
  o = new Wolker();
  u = new Wulker();
  e = new Welker();
  i = new Wilker();
  background(0,125,150);
}

void draw(){
  a.step();
  a.display();
  o.step();
  o.display();
  u.step();
  u.display();
  e.step();
  e.display();
  i.step();
  i.display();
}