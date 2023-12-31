import processing.svg.*;
boolean record;

PImage[]img = new PImage[8];
int i;
float s;

void setup(){
  size(1920,1080);
  for(int i = 0;i<8;i++){
    img[i]=loadImage(i+".jpg");
  }
}

void draw(){
  if (record){
    beginRecord(SVG,"frame##.svg");
  }
  s = map(mouseX,0,width,1,100);
  for(int y = 0;y<img[0].height;y+=s){
   for(int x = 0;x<img[0].width;x+=s){
     int loc = x+(y*img[0].width);
     float bt = brightness(img[0].pixels[loc]);
     int iter = int(map(bt,0,255,0,7));
     for(int a =1;a<8;a++){
       if(iter==a)
       image(img[iter],x,y,s,s);
   if (record){
     endRecord();
     record=false;
   }
     }
   }
  }
}

void mousePressed(){
  record = true;
}
