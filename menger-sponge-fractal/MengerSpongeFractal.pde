float a = 0;

ArrayList<Box> sponge;

void setup() {
  size(window.innerWidth, window.innerHeight, P3D);
  sponge = new ArrayList<Box>();
  int r = window.innerHeight / 2;
  if (window.innerHeight > window.innerWidth) {
    r = window.innerWidth / 2;
  }
  Box b = new Box(0, 0, 0, r);
  sponge.add(b);
}

void mousePressed() {
  ArrayList<Box> next = new ArrayList<Box>();
  for (Box b : sponge) {
    ArrayList<Box> newBoxes = b.generate();
    next.addAll(newBoxes);
  }
  sponge = next;
}

void draw() {
  background(255);
  lights();

  translate(width / 2, height / 2);
  rotateX(a);
  rotateY(a * 0.4);
  rotateZ(a * 0.1);
  for (Box b : sponge) {
    b.show();
  }

  a += 0.01;
}
