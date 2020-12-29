int nums = 2000;
Particle[] particles_a = new Particle[nums];
PImage img;

void setup(){
  size(480, 640);
  background(0);
  for(int i=0; i<nums; i++){
    particles_a[i] = new Particle((int) random(0, width),(int) random(0,height));
  }  
}

void  draw(){
  //background(0);
  for(int i=0; i<nums; i++) {
    particles_a[i].move();
    particles_a[i].display();
    particles_a[i].checkEdge();
  }  
}
