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

public void setup() {
	 
	
}

public void draw() {

		
}
public void keyPressed(){
		if(key == 'a'){
		    linea(10, 80, 10, 40);
		}
			 if (key == 'b'){
				linea2(10, 80, 10, 40);
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
