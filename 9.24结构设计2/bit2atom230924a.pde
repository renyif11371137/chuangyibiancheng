float c=0;

void setup()
{  size(600,400);
   frameRate(3);
}
void draw()
{ background(255);
  for(int i=0; i<width; i+=5)
  {
  stroke(0);
  strokeWeight(3);
  line(i,0,i,height*noise(c));
  c+=0.2;
  }
}
