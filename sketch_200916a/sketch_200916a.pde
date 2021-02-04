PImage image_namedaruma;
float step=1;//ピクセルの指定サイズ
void setup() {
  size(711, 573);
  image_namedaruma=loadImage("Namedaruma.png");
  image_namedaruma.resize(711, 573);
}

void draw() {
  for (int x=0; x<width; x+=step) {
    for (int y=0; y<height; y+=step) {
      color col=abs(image_namedaruma.get(x, y));
      // println(col);///////////////////////////////////////////
      //Pixel=B+256*G+pow(256,2)*Rの式で1ピクセルに格納されている
      float colorB=col%256;//col mod 256 = RGBのR
      float colorG=((col-colorB)%pow(256, 2))/256;
      float colorR=(col-(colorB+colorG*256))/pow(256, 2);

      fill(255-colorB, 255-colorG, 255-colorR);
      noStroke();
      rect(x, y, step,step);
    }
  }
}
