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

public class untitled extends PApplet {

public void setup() {
	
	background(255, 255, 255, 100);
}

public void draw() {
	noStroke();
	fill(60, 200, 200,80);
ellipse(width/2, height/2, width, height);
fill(200, 60, 200, 255);	
ellipse(200, 300, 150, 150);
}
  public void settings() { 	size(512, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "untitled" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
