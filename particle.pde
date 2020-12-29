public class Particle {
  
  PVector vel;
  PVector dir;
  PVector pos;
  float speed;
  
  Particle(int x, int y) {
    dir = new PVector(0, 0);
    vel = new PVector(0, 0);
    pos = new PVector(x, y);
    speed = 1.2;
  }
  
  void move() {
    float angle = noise(pos.x/60, pos.y/60)*TWO_PI;
    dir.x = cos(angle);
    dir.y = sin(angle);
    vel.add(dir);
    vel.mult(speed);
    pos.add(vel);
    vel.x=0;
    vel.y=0;
  }
  
  void checkEdge(){
    if(pos.x > width || pos.x < 0 || pos.y > height || pos.y < 0){
      pos.x = random(0, width);
      pos.y = random(0, height);
    }
  }

  void display(int r){
    ellipse(pos.x, pos.y, r, r);
  }
  
}
