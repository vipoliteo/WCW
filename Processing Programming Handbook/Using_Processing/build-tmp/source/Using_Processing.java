import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Using_Processing extends PApplet {

boolean b,n,g,h;

public void setup() {
	 
	b = true;
	n = false;
	g = false;
	h = false;
}

public void draw() {
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
public void keyPressed(){
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
public void linea(int x, int x2, int y, int y2){
	line(x, x2, y*3, y2);
	line(x*2, x2, y*4, y2);
	line(x*3, x2, y*5, y2);
	line(x*4, x2, y*6, y2);
	line(x*5, x2, y*7, y2);	
}
public void linea2(int x, int x2, int y, int y2){
	background(0);
	stroke(255);
	strokeWeight(5);
	line(x, x2, y*3, y2);
	line(x*2, x2, y*4, y2);
	line(x*3, x2, y*5, y2);
	line(x*4, x2, y*6, y2);
	line(x*5, x2, y*7, y2);	
}
public void linea3(int x, int x2, int y, int y2){
	int h = 5;
int j = 60;

line(h, j, h+20, j-40);
line(h+10, j, h+30, j-40);
line(h+20, j, h+40, j-40);
line(h+30, j, h+50, j-40);
line(h+40, j, h+60, j-40);
}
public void linea4(int x, int x2, int y, int y2){

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
  public void settings() {  size(512, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Using_Processing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
