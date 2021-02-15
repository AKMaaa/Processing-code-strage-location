void setup() {
  size(900, 600);
  //blendMode(ADD);
  background(#000203);
  //moon();
}


void draw() {
  strokeWeight(100);
  stroke(0);
  rectMode(CENTER);
  noFill();
  ellipse(150,150, 300,300);//円
  rect(450, 150, 300, 300);//rect
  arc(750, 150,300,300,PI,2*PI);//三角形
  rect(1050,150,300,300);
  ellipse(450,450,300,300);
  rect(150, 450, 300, 300,100);//スーパー楕円
  rect(750, 450, 300, 300);//
  sea(frameCount-120, 50*sin(frameCount*0.01)+400, (sin(frameCount*0.012)), 2);
  sea(frameCount-10, 50*sin(frameCount*0.02)+420, (sin(frameCount*0.01)), 1);
  sea(frameCount-50, 50*sin(frameCount*0.015)+380, (sin(frameCount*0.008)), 0.1);
  sea(frameCount-140, 50*sin(frameCount*0.011)+430, (sin(frameCount*0.015)), 3);
  sea(frameCount-20, 50*sin(frameCount*0.009)+490, (sin(frameCount*0.02)), 2);
  sea(frameCount-120, 50*sin(frameCount*0.01)+530, (sin(frameCount*0.012)), 2);
  sea(frameCount-10, 50*sin(frameCount*0.02)+500, (sin(frameCount*0.01)), 1);
  sea(frameCount-50, 50*sin(frameCount*0.015)+450, (sin(frameCount*0.008)), 0.1);
  sea(frameCount-140, 50*sin(frameCount*0.011)+480, (sin(frameCount*0.015)), 3);
  sea(frameCount-20, 50*sin(frameCount*0.009)+490, (sin(frameCount*0.02)), 2);
  sea(frameCount-30, 50*sin(frameCount*0.012)+510, (sin(frameCount*0.007)), 0.5);
  sea(frameCount-140, 50*cos(frameCount*0.011)+480, (cos(frameCount*0.015)), 3);
  sea(frameCount-20, 50*cos(frameCount*0.019)+490, (cos(frameCount*0.02)), 2);
  sea(frameCount-30, 50*cos(frameCount*0.013)+510, (-sin(frameCount*0.007)), 2);
  sea(frameCount-120, 50*sin(frameCount*0.01)+300, (sin(frameCount*0.012)), 2);
  sea(frameCount-10, 50*sin(frameCount*0.02)+280, (sin(frameCount*0.01)), 1);
  sea(frameCount-50, 50*sin(frameCount*0.015)+200, (sin(frameCount*0.008)), 0.1);
  sea(frameCount-140, 50*sin(frameCount*0.011)+100, (sin(frameCount*0.015)), 3);
  sea(frameCount-20, 50*sin(frameCount*0.009)+50, (sin(frameCount*0.02)), 2);
  sea(frameCount-120, 50*sin(frameCount*0.01)+00, (sin(frameCount*0.012)), 2);
  sea(frameCount-10, 50*sin(frameCount*0.02)+290, (sin(frameCount*0.01)), 1);
  sea(frameCount-50, 50*sin(frameCount*0.015)+380, (sin(frameCount*0.008)), 0.1);
  sea(frameCount-140, 50*sin(frameCount*0.011)+330, (sin(frameCount*0.015)), 3);
  sea(frameCount-20, 50*sin(frameCount*0.009)+230, (sin(frameCount*0.02)), 2);
  sea(frameCount-30, 50*sin(frameCount*0.012)+120, (sin(frameCount*0.007)), 0.5);
  sea(frameCount-140, 50*cos(frameCount*0.011)+40, (cos(frameCount*0.015)), 3);
  sea(frameCount-20, 50*cos(frameCount*0.019)+20, (cos(frameCount*0.02)), 2);
  sea(frameCount-30, 50*cos(frameCount*0.013)+210, (-sin(frameCount*0.007)), 2);
}

void moon() {
  for (float r=0; r<600; r+=0.5) {
    strokeWeight(1);
    noFill();
    stroke(255, 255, map(r, 0, 600, 0, 255));
    ellipse(width, 0, r, r);
  }
}

void drawPolygon(int x, int y, int r, int vertexNum) {
  pushMatrix();
  translate(x, y);
  beginShape();
  for (int i = 0; i < vertexNum; i++) {
    vertex(r*cos(radians(360*i/vertexNum)), r*sin(radians(360*i/vertexNum)));
  }
  endShape(CLOSE);
  popMatrix();
}
void sea(float x, float y, float r_step, float wg) {
  push();
  translate(x+50, y+50);
  rotate(r_step);
  strokeWeight(wg);
  stroke(255*abs(cos(x)), 255, 255, 40-wg*10);
  line(-100, 0, 100, 0);
  //line(-50,2,50,2);
  pop();
}

void keyPressed() {
  if(keyPressed==true)saveFrame("b2.png");
}
