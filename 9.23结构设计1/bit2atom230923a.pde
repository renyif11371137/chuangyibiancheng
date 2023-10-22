void setup()
{
  size(800,600);
  background(255);
  frameRate(7);
}
void draw()
{ 
  fill(255);
  strokeWeight(3);
  circle(random(0,800),random(0,600),25);
  stroke(random(0,255),255,random(0,255));
  strokeWeight(8);
  line(random(0,800),600,0,random(0,600));
  line(random(0,800),0,800,random(0,600));
}
