void setup() {
  size (300, 300);
  ellipseMode (CENTER);
  rectMode (CENTER);
}
 
void draw() {
  background(100,100,255);
  //Head
  ellipse (150, 60, 50, 50);
  point (140, 60);
  point (160, 60);
  //Body
  rect (150, 135, 50, 100);
  //Arms
  pushMatrix();
  translate(125,85);
  rotate(map(mouseX,0,width,-PI,PI));
  line (0,0, -25, 75);
  popMatrix();
  pushMatrix();
  translate(175,85);
  rotate(map(mouseX,0,width,-PI,PI));
  line (0,0, 25, 75);
  popMatrix();  
  //Legs
  pushMatrix();
  translate(130,185);
  rotate(map(mouseY,0,height,-PI,PI));
  line (0,0, 0, 65);
  line (0,65, -5, 65);
  popMatrix();
  pushMatrix();
  translate(170,185);
  rotate(map(mouseY,0,height,-PI,PI));
  line (0,0,0,65);
  line (0,65,5,65);
  popMatrix();
}
