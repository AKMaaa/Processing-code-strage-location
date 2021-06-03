int bnum=200; //<>// //<>// //<>// //<>// //<>// //<>//
Ball[] ball=new Ball[bnum];
float[] xsp=new float[bnum];
float[] ysp=new float[bnum];
float rx, ry;
float solve_r=1000;
float road=0;
float store_mx1, store_my1;
float store_mx2, store_my2;
int  y  =  year( ) ;          //  2017
int  m  =  month( ) ;    //  1 – 12
int  d  =  day( ) ;           //  1 – 31
int  h  =  hour( ) ;         //  1 – 23
int  mi  =  minute( ) ; //  0 – 59
int  s  =  second( ) ;    //  0 – 59
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(700, 700);
  for (int i=0; i<bnum; i++) {
    rx=random(width);
    ry=random(height);
    xsp[i]=rx;
    ysp[i]=ry;
    ball[i]=new Ball(rx, ry);
    ball[i].display();
  }

  for (int i2=0; i2<bnum; i2++) {
    solve_r=10000;
    for (int i1=0; i1<bnum; i1++) {
      if (i1!=i2) {
        road=pow((pow(xsp[i1]-xsp[i2], 2)+pow(ysp[i1]-ysp[i2], 2)), 0.5);
      }
      if (solve_r>road) {
        solve_r=road;
        store_mx1=xsp[i1];
        store_mx2=xsp[i2];
        store_my1=ysp[i1];
        store_my2=ysp[i2];
      }
    }
    strokeWeight(0.3);
    line(store_mx1, store_my1, store_mx2, store_my2);
  }
}


void draw() {
}

void keyPressed() {
  if (key==ENTER) saveFrame("Photo"+"/"+y+"_"+m+"_"+d+"_"+h+"_"+mi+"_"+s+"_"+".png");
}
