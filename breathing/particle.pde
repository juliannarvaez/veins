public class Particle {
  
  PVector vel;
  PVector dir;
  PVector pos;
  float speed;
  int radius;
  int scale;
  float red=0;
  
  Particle(int x, int y) {
    dir = new PVector(0, 0);
    vel = new PVector(0, 0);
    pos = new PVector(x, y);
    radius = (int) random(3,5);
    scale = 30;
    speed = 7/radius;
  }
  
  void move() {
    float angle = noise(pos.x/scale, pos.y/scale)*TWO_PI;
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
      pos.x = width;//random(0, width);
      pos.y = random(0, height);
      red=255;
    }
  }

  void display(){
        
    red-=.5;
    if(red<0) {
      red=0;
    }
    
    stroke(red,0,45-red/10);
    fill(red,0,45-red/10);
    ellipse(pos.x, pos.y, radius, radius);
  }
  
}
