
ArrayList<Vine> vines = new ArrayList<Vine>();

void setup() {
  size(1000, 800, OPENGL);
}

void draw() {
  for(int i = 0; i < vines.size(); i++) {
    Vine v = vines.get(i);
    v.draw();
  }
}

void mousePressed() {
  Vine v = new Vine(new PVector(mouseX, mouseY));
  vines.add(v);
}
