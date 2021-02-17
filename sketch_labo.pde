float star_size=0;
float star_x=0;
float star_y=0;
float star_x2=0;
float star_y2=0;
float add=0;//星の光
int randn=0;
float alp=0;
int num_xpyp=900;
int numm=5000;
float[] xp=new float[num_xpyp];
float[] yp=new float[num_xpyp];
float[] xp2=new float[numm];
float[] yp2=new float[numm];

void setup() {
  size(900, 900);
  background(#020015);
  colorMode(HSB);
  stars();
  for (int i=0; i<num_xpyp; i+=1) {
    xp[i]=i;
    yp[i]=i;
  }
  for (int i=0; i<numm; i+=1) {
    xp2[i]=random(width);
    yp2[i]=random(height);
    strokeWeight(0.8);
    stroke(255, 100);
    point(xp2[i], yp2[i]);
  }
  for (int step=0; step<=900; step+=1) {
    stroke(0);
    line(i, height, i, height-100*abs(noise(step)));
  }
}


void draw() {
  crowd();
}

void stars() {
  for (float step=0; step<900; step+=1) {
    stroke(map(step, 0, 900, 300, 250), map(step, 0, 900, 100, 0), 20, 180);
    line(0, step, width, step);
  }

  for (int number_s=0; number_s<300; number_s+=1) {
    star_size=random(6);
    add=random(0, 3);
    star_x=random(width);
    star_y=random(height);
    star_x2=random(width);
    star_y2=random(height);
    randn=(int)random(1, 3);

    for (float stepe=0; stepe<10; stepe+=1) {
      noFill();
      stroke(random(0, 360), 20, 99, 255-stepe*25);
      strokeWeight(0.1);
      ellipse(star_x, star_y, star_size+stepe*0.8, star_size+stepe*0.8);
    }
    if (randn%2==0) {
      stroke(255, random(255, 200));
    } else {
      stroke(#BFE9FF, random(255, 200));
    }
    strokeWeight(star_size);
    point(star_x, star_y);
    push();
    translate(star_x2, star_y2);
    if (randn%2==0) {
      rotate(PI/4);
    }
    noStroke();
    fill(255);
    rect(0, 0, star_size/2, star_size/2);
    pop();
  }
}

void crowd() {
  strokeWeight(1);
  for (int i=0; i<num_xpyp; i+=1) {
    stroke(random(360), 10, 100, 2);
    point(xp[i], yp[i]);
    xp[i]+=(int)random(-2, 2);
    yp[i]+=(int)random(-2, 2);
  }
}


void keyPressed() {
  if (keyPressed==true)saveFrame("b3.png");
}
