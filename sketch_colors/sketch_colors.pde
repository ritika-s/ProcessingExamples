
import ddf.minim.*;
import processing.opengl.*;
 
AudioPlayer track;
Minim minim;

ArrayList<Brush> brushes;
 
void setup() {
  frameRate(40);
  size(500, 500);
  background(255);
  
  brushes = new ArrayList<Brush>();
  for (int i = 0; i < 2; i++) {
    brushes.add(new Brush(width/2+random(-10,10),height/2+random(-10,10),color(random(200), random(20), random(200), 20)));
  }
  
  
  minim = new Minim(this);
  track = minim.loadFile("sparks.mp3", 2048);
  track.loop();
}
 
void draw() {
  for (Brush brush : brushes) {
    brush.paint();
  }
}
 
void mouseClicked() {
  
  brushes.add(new Brush(mouseX,mouseY,color(random(200), random(20), random(200), 20)));
  println(brushes.size());
}

void keyPressed() {
  if (key == ' ')
    background(255);
}
