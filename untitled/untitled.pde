void setup() {
	size(512, 512);
	background(255, 255, 255, 100);
}

void draw() {
	noStroke();
	fill(60, 200, 200,80);
ellipse(width/2, height/2, width, height);
fill(200, 60, 200, 255);	
ellipse(200, 300, 150, 150);
}