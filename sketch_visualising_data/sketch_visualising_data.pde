int bnum=400; //<>// //<>// //<>// //<>// //<>// //<>//
Ball[] ball=new Ball[bnum];
float[] xsp=new float[bnum];
float[] ysp=new float[bnum];
float[] lx1=new float[bnum];
float[] lx2=new float[bnum];
float[] ly1=new float[bnum];
float[] ly2=new float[bnum];
float[] vx=new float[bnum];
float[] vy=new float[bnum];
float[] vx2=new float[bnum];
float[] vy2=new float[bnum];
float[] vx1=new float[bnum];
float[] vy1=new float[bnum];
float rx, ry;
float solve_r=1000;
float road=0;
float store_mx1, store_my1;
float store_mx2, store_my2;
int  y=year( ) ;          //  2017
int  m=month( ) ;    //  1 – 12
int  d=day( ) ;           //  1 – 31
int  h=hour( ) ;         //  1 – 23
int  mi=minute( ) ; //  0 – 59
int  s=second( ) ;    //  0 – 59
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(700, 700);
  for (int i=0; i<bnum; i++) {
    rx=random(width);
    ry=random(height);
    vx[i]=random(-1, 1);//座標の変化速度
    vy[i]=random(-1, 1);//座標の変化速度
    xsp[i]=rx;//初期位置
    ysp[i]=ry;//初期位置
    ball[i]=new Ball(rx, ry, vx[i], vy[i]);
  }
}


void draw() {
  for (int i2=0; i2<bnum; i2++) {
    solve_r=10000;
    for (int i1=0; i1<bnum; i1++) {
      if (i1!=i2) {
        road=pow((pow(xsp[i1]-xsp[i2], 2)+pow(ysp[i1]-ysp[i2], 2)), 0.5);
      }
      if (solve_r>road) {
        solve_r=road;
        /*内1外2*/
        store_mx1=xsp[i1];
        store_mx2=xsp[i2];
        store_my1=ysp[i1];
        store_my2=ysp[i2];
      }
    }
    lx1[i2]=store_mx1;
    lx2[i2]=store_mx2;
    ly1[i2]=store_my1;
    ly2[i2]=store_my2;
  }

  background(220);
  for (int i=0; i<bnum; i++) {
    ball[i].display();
    ball[i].line_b(lx1[i], ly1[i], lx2[i], ly2[i]);
  }

  for (int i=0; i<bnum; i++) {
    if(xsp[i]<0||xsp[i]>width){
      vx[i]=-vx[i];
    }
      if(ysp[i]<0||ysp[i]>width){
      vy[i]=-vy[i];
    }
    xsp[i]+=vx[i];
    ysp[i]+=vy[i];
  }
}

void keyPressed() {
  if (key==ENTER) saveFrame("Photo"+"/"+y+"_"+m+"_"+d+"_"+h+"_"+mi+"_"+s+"_"+".png");
}
