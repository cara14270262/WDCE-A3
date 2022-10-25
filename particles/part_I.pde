//set canvas size
 void setup (){
 size (400, 400); smooth(); noStroke();
background (0, 25, 51);
  textAlign(CENTER);
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
  int numiterations = 2500;
 
 
//particles 4000
  Particle[] particles = new Particle [numiterations];
  
 
void draw (){
  if (mousePressed){
    
  //dots
ellipse(random(0, width), random(0, height), 10, 10);{
filter (BLUR, 1);
}
//particles sun
      translate(width/2, height/2);
  for (Particle p : particles) {
    p.move();
    p.show();
  }
  
        translate(1200, 8);
  for (Particle p : particles) {
    p.move();
    p.show();
  }
}
}
  class Particle {
    float x, y, size, directionX, directionY;
    public Particle() {
      this.size = random(0.5, 4);
      this.directionX = random(-1, 1);
      this.directionY = random(-1, 1);
    }
  
    public void move() {
      this.x += directionX;
      this.y += directionY;
    }
  
    public void show() {
      fill(purple, this.size * 30);
      ellipse(this.x, this.y, this.size, this.size);
    }
  }
