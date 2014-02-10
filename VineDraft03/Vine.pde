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
    strokeWeight(map(noise(t), 0, 1, 1, 30));
    
//    
//    translate(width/2, height/2);
//    rotateY(yPos);
//    yPos += 1;
    
    float xSway = map(noise(t), 0f, 1f, -1, 1);
//    stroke(25, random(255), random(255));
//    point(pos.x, pos.y);
    pushMatrix();
      translate(pos.x, pos.y);
      sphere(map(noise(t), 0, 1, 1, 50));
    popMatrix();
    pos.x += xSway;
    pos.y -= 1;
    t += 0.01; 
  }
}
