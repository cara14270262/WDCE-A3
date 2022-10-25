

void setup() {
  size(400, 400); 
  noStroke();  
}

 //define green, purple and yellow
color green = color(81, 142, 99);
color purple = color(170, 109,153);
color yellow = color(255, 255, 204); 
color orange = color(255, 178, 102);
  
  //define
  float x;
  float y;
  float easing = 0.05;
  
  
void draw() { 
  background(51);

//mouse trace - easing
  PVector[] ellipses = new PVector[60];
  for (int i = 0; i < ellipses.length; i++) {
    ellipses[i] = new PVector();
  }
 //difference between the position of symbol and cursor is set to 0.05
  PVector p = ellipses[frameCount % ellipses.length];
  if (mousePressed) 
    p.set (mouseX, mouseY);

  fill (yellow);
  stroke (yellow);
  ellipse(y, x, 70, 70);

    float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  //if the mouse is pressed then...
if (mousePressed) {
stroke (255, 255, 0);
fill (255, 255, 0);
ellipse (x , y,50, 50);

stroke (255, 0, 0);
fill (255, 0, 0);
ellipse (p.x -60, p.y +60,60, 60);

}
}
