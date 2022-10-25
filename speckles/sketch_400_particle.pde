//this code is for the randomised speckles that follow the cursor whilst changing colours

void setup() {
  size(400, 400); background(0, 25, 51); noStroke();
  
  colorMode(HSB);
  
}

void draw(){
  filter(BLUR, 1);
 
//create points for center and mouse positions
PVector center = new PVector(width/2, height/2);
PVector mouse = new PVector (mouseX, mouseY);
//angle between center and mouse 
float angle = PVector.sub(mouse,center).heading();
//radians to degrees 
angle = degrees(angle);
//convert degrees to hue value
float hue = map(angle, -180, 180, 0, 255);
//move drawing position to mouse position
    translate(mouseX, mouseY);
    //5 blobs per frame
    for(int i = 0; i < 5; i ++) {
      fill(random(hue-20, hue+20) % 100, 40, 255);
      PVector pos = new PVector(random(-20, 20), 
      random(-20, 20));
      //blob size distance from mouse
      float size = 20 - dist(0, 0, pos.x, pos.y);
      ellipse(pos.x, pos.y, size, size);
    }
  }
