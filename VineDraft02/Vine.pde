class Vine {
  float t = random(0, 1000);
  PVector pos;
  float growthRate;
  
  public Vine(PVector p) {
    pos = p;
  }
  
  //  Static time variable makes perlin noise identical every time.
  void draw() {
    stroke(4);
    
    float xSway = map(noise(t), 0f, 1f, -1, 1);
    stroke(25, random(255), random(255));
    point(pos.x, pos.y);
    pos.x += xSway;
    pos.y -= 1;
    t += 0.01; 
  }
}
