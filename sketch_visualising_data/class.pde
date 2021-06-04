class Ball {

  float x;
  float y;
  float vx;
  float vy;
  float xg1=0;
  float xg2=0;
  float yg1=0;
  float yg2=0;
  Ball(float xp, float yp, float vx, float vy) {
    this.x=xp;
    this.y=yp;
    this.vx=vx;
    this.vy=vy;
  }

  void display() {
    fill(0);
    stroke(0);
    ellipse(x, y, 5, 5);
    x+=vx;
    y+=vy;
    if (x>width||x<0) {
      vx=-vx;
    }
    if (y>height||y<0) {
      vy=-vy;
    }
  }

  void line_b(float x1, float y1, float x2, float y2) {
    strokeWeight(0.3);
    line(x1+xg1, y1+yg1, x2+xg2, y2+yg2);
  }
}
