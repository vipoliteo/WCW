boolean b,n,g,h;

void setup() {
	 size(512, 512);
	b = true;
	n = false;
	g = false;
	h = false;
}

void draw() {
	if (b = true){
		linea(10, 80, 10, 40);
	}
	else if (b = false){
		background(10);
	}

	if (n = true){
		linea2(10, 80, 10, 40);
	}
	else if (n = false){
		background(10);
	}

	if (g = true){
		linea3(10, 80, 10, 40);
	}
	else if (g = false){
		background(10);
	}

	if (h = true){
		linea4(10, 80, 10, 40);
	}
	else if (h = false){
		background(10);
	}


		
}
void keyPressed(){
		if(key == 'a'){
		    b =! b;
		}
			else if (key == 'b'){
				n =! n;
			}
			
			 else if (key == 'c'){
				g =! g;
			}
			else if (key == 'd'){
				h =! h;
			}
	}
