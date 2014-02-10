class Vine {
  float t = random(0, 1000);
  PVector pos;
  float growthRate;
  float yPos = 0;
  
  public Vine(PVector p) {
    pos = p;
  }
  
  // TODO:  Add physics library to build tuggable structures.
  // TODO:  Make it amazing.
  // TODO:  Stay up all night.
  
  //  Static time variable makes perlin noise identical every time.
  void draw() {
    lights();
    stroke(4);
    strokeWeight(map(noise(t), 0f, 1f, 1, 30));
    
    float xSway = map(noise(t), 0f, 1f, -1, 1);
    float zSway = map(noise(t), 0f, 1f, -100, 100);
//    stroke(25, random(255), random(255));
//    point(pos.x, pos.y);
    pushMatrix();
      noStroke();
      translate(pos.x, pos.y, pos.z);
      float sphereSize = map(noise(t), 0, 1, 1, 10);
      fill(255);
      sphere(sphereSize+random(5));
      fill(100);
      sphere(sphereSize);
    popMatrix();
    pos.x += xSway;
    pos.y -= 1;
    pos.z += zSway;
    t += 0.01;
    t += 0.1;  
  }
}
