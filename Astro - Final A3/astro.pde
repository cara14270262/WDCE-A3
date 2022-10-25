PImage img;
//set canvas size, background, add stronaut image and randomised particles
void setup() {
  size(1200,565);
  background(0, 25, 51);
  img = loadImage("astronaut.png");
for (int i = 0; i < numiterations; i++) {
    particles[i] = new Particle();
  }
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
  
  //define constant
  int numiterations = 4000;
 
 
//particles 4000
  Particle[] particles = new Particle [numiterations];
  
 
void draw (){

  
  // draw a triangle - left, purple one
  if (mousePressed) {
stroke (purple);
fill (purple);
triangle (225, 562, 435, 150, 645, 562);
stroke (196, 155,183);
fill (196, 155,183);
triangle (700, 562, 435, 150, 645, 562);

  //circle inside left triangle - eye
  stroke (0, 0, 0);
  fill (255, 255, 255);
  ellipse (435, 300, 100, 100);
    //pupils
    stroke (0, 0, 0);
    fill (0, 0, 0);
    ellipse (435, 302, 40, 50);
    
// draw a triangle - right, green one
stroke (109, 170, 127);
fill (109, 170, 127);
triangle (1050, 562, 870, 200, 720, 562);
stroke (green);
fill (green);
triangle (1000, 562, 870, 200, 720, 562);

  //circle inside right triangle - eye
  stroke (0, 0, 0);
  fill (255, 255, 255);
  ellipse (870, 350, 80, 80);
    //pupils
    stroke (0, 0, 0);
    fill (0, 0, 0);
    ellipse (870, 352, 35, 45);
    
  }
  //astronaut image appearing when mouse is pressed
  if (mousePressed) {
  image(img, mouseX, mouseY, width/10, height/8);
  }
//randomised speckling dots 
  //dots
ellipse(random(0, width), random(0, height), 10, 10);{
  filter (BLUR, 3);
  

}

  //particles - 'stars', draw from top left of canvas
      translate(width/1200, height/565);
  for (Particle p : particles) {
    p.move();
    p.show();
  }
    //particles - 'stars', draw from top right of canvas
        translate(1200, 8);
  for (Particle p : particles) {
    p.move();
    p.show();
  }
  
   //mouse trace, easing
  PVector[] ellipses = new PVector[60];
  for (int i = 0; i < ellipses.length; i++) {
    ellipses[i] = new PVector();
  }
 
  PVector p = ellipses[frameCount % ellipses.length];
  if (mousePressed) 
    p.set (mouseX, mouseY);
    
     fill (yellow);
  stroke (yellow);
  ellipse(p.x, p.y, 200, 200);

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
ellipse (x , y,150, 150);

} 

}

 
