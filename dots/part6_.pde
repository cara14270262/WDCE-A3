//this code is for the randomised dots that appear on the canvas

void setup(){
  size(400, 400);
  background(35, 27, 107);
  noStroke();
}

void draw() {
  fill(238, 120, 138, 250);
  ellipse(random(0, width), random(0, height), 15, 15);
  
  filter(BLUR, 1);
}
