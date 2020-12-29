int nums = 1600;
Particle[] particles_a = new Particle[nums];
int noiseScale = 8000;

void setup(){
  size(800, 800);
  background(0);
  for(int i=0; i<nums; i++){
    particles_a[i] = new Particle((int) random(0, width),(int) random(0,height));
  }
}

void  draw(){
  //background(0);
  stroke(255);
  for(int i=0; i<nums; i++) {
    int radius = (int) map(i,0,nums,1,2);
    fill(255);
    particles_a[i].move();
    particles_a[i].display(radius);
    particles_a[i].checkEdge();
  }  
}
