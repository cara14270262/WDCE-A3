
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
      fill(yellow, this.size * 30);
      ellipse(this.x, this.y, this.size, this.size);
    }
  }
