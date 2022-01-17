float rotx, roty;
PImage top, side, bottom;
PImage Htop, Hfront, Hbottom, Hback, Hlleft, Hright;
PImage blackstone;

void setup() {
  size(800, 800, P3D);

  top = loadImage("Grass_Block_Top.png");
  side = loadImage("Grass_Block_Side.png");
  bottom = loadImage("Grass_Block_Bottom.png");

  Htop = loadImage("st/top.jpg");
  Hbottom = loadImage("st/bottom.jpg");
  Hback = loadImage("st/back.jpg");
  Hlleft = loadImage("st/left.jpg");
  Hright = loadImage("st/right.jpg");
  Hfront = loadImage("st/front.jpg");

  blackstone = loadImage("blackstone.png");

  textureMode(NORMAL);
}


void draw() {
  background(0);
  block(width/2, height/2, 0, top, side, bottom, 150);
  head(100, height/2, 0, Hfront, Htop, Hback, Hbottom, Hlleft, Hlleft, 150);
  block(700, height/2, 0, blackstone, 150);
}


void mouseDragged() {
  rotx += (pmouseY - mouseY)*0.01;
  roty += (pmouseX - mouseX)*-0.01;
}

void block(float x, float y, float z, PImage block, float size) {
  pushMatrix();
  translate(x, y, z);
  scale(size);

  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);

  texture(block);
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  //left
  vertex(0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);

  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  //right
  vertex(1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);

  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);

  endShape();
  popMatrix();
}


void block(float x, float y, float z, PImage t, PImage s, PImage b, float size) {
  pushMatrix();
  translate(x, y, z);
  scale(size);

  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);

  //top
  texture(t);
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  endShape();
  beginShape(QUADS);

  //bottom
  texture(b);
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();
  beginShape(QUADS);

  //sides
  texture(s);

  //left
  vertex(0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);

  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  //right
  vertex(1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);

  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);

  endShape();
  popMatrix();
}

void head(float x, float y, float z, PImage f, PImage t, PImage back, PImage bottom, PImage l, PImage r, float size) {
  pushMatrix();
  translate(x, y, z);
  scale(size);

  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);

  //top
  texture(t);
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  endShape();
  beginShape(QUADS);

  //bottom
  texture(bottom);
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();
  beginShape(QUADS);

  //left
  texture(l);
  vertex(0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);

  endShape();
  beginShape(QUADS);

  //front
  texture(f);
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();
  beginShape(QUADS);

  //right
  texture(r);
  vertex(1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);

  endShape();
  beginShape(QUADS);

  //back
  texture(back);
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);

  endShape();
  popMatrix();
}
