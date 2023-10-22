PImage img;

void settings(){
   img = loadImage("pearl.jpg");
   size(int(img.width*2/3),int(img.height*2/3));
   
}

void setup(){
   background(255);
   image(img,0,0,img.width*2/3,img.height*2/3);
   frameRate(500);
}

void draw(){
   int cx = floor(random(width));
   int cy = floor(random(height));
   color t = get(cx,cy);
   fill(t);
   noStroke();
   rect(cx-5,cy-5,10,10);
 }
