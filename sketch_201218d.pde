PGraphics d1;
PGraphics d2;
float shad_=30;
int ball_num=10000;
float [] ball_x=new float[ball_num];
float [] ball_y=new float[ball_num];
int [] ball_col1=new color[ball_num];
int [] ball_col2=new color[ball_num];
int [] ball_col3=new color[ball_num];
void setup() {
  size(900, 900);
  d1=createGraphics(400, 400);
  d2=createGraphics(180, 100);
  background(255);
  for (int step=0; step<ball_num; step++) {
    ball_x[step]=(int)random(width);
    ball_y[step]=(int)random(height);
    ball_col1[step]=(int)random(200, 255);
    ball_col2[step]=(int)random(180, 255);
    ball_col3[step]=(int)random(0, 102);
  }
}


void draw() {
  background(255);
  sha_eff();
  d1_draw();
  tag();
  frame();
}

void frame() {
  noFill();
  strokeWeight(30);
  stroke(255);
  rect(270, 270, 370, 370);
  stroke(0);
  strokeWeight(20);
  rect(250, 250, 410, 410);
}
void sha_eff() {
  fill(0, 160);
  noStroke();
  rect(230+shad_-10, 230+shad_-10, 430, 430);
}

void d1_draw() {
  d1.beginDraw();
  //d1.background(#902ECE);

  for (int step=0; step<ball_num; step++) {
    d1.noStroke();
    d1.fill(ball_col1[step], ball_col2[step], ball_col3[step]);
    d1. rect(ball_x[step], ball_y[step], 1, 1);
    d1.fill(255, 100);
    // d1. rect(ball_x[step], ball_y[step], 1, 1);
    ball_x[step]+=(int)random(-2, 2);
    ball_y[step]+=(int)random(-2, 2);
  }
  d1.endDraw();
  image(d1, 250, 250);
}

void tag() {
  d2.beginDraw();
  d2.background(255);
  d2.noFill();
  d2.strokeWeight(5);
  d2.stroke(0, 180);
  d2.rect(-2.5, -2.5, 182.5, 102.5);
  d2.fill(0);
  d2.textSize(15);
  d2.text("Random", 10, 30);
  d2.textSize(8);
  d2.text("@gotpobot   @gotpobot   @gotpobot", 10, 65-20);
  d2.text("@gotpobot  @gotpobot  @gotpobot", 10, 65-10);
  d2.text("@gotpobot @gotpobot @gotpobot", 10, 65);
  d2.text("@gotpobot   @gotpobot   @gotpobot", 10, 65+10);
  d2.text("@gotpobot  @gotpobot  @gotpobot", 10, 65+10+10);
  d2.endDraw();
  image(d2, width/2-150+180, 730);
}

void keyPressed() {
  if (key==ENTER) saveFrame("paint_pcd1.png");
}
