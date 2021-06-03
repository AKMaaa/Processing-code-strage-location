class Ball {

  float x;
  float y;

  Ball(float xp, float yp) {
    this.x=xp;
    this.y=yp;
  }

  void display() {
    fill(0);
    stroke(0);
    ellipse(x,y,2,2);
  }
}
