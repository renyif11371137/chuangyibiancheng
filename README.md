# chuangyibiancheng9.23
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
  #在背景上随机生成白色圆圈，边线颜色随机
  stroke(random(0,255),255,random(0,255));
  strokeWeight(8);
  line(random(0,800),600,0,random(0,600));
  line(random(0,800),0,800,random(0,600));
  #在背景上按一定规律随机生成线条，颜色随机
}
