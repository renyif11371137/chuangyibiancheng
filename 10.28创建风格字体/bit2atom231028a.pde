import geomerative.*;
RFont f;
RShape grp;
RPoint[] points;

void setup(){
  size(600,400);
  RG.init(this);
  grp = RG.getText("Campus", "FreeSans.ttf", 150, CENTER);
  smooth();
}

void draw(){
  background(0);
  translate(width/2, 3*height/5);
  noFill();
  stroke(0,0,200,150);
  RG.setPolygonizer(RG.ADAPTATIVE);
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseX, 0, width, 1, 300));
  points = grp.getPoints();
  if(points != null){
    noFill();
    stroke(#D84639);
    beginShape();
    for(int i=0; i<points.length; i++){
      vertex(points[i].x, points[i].y);
    }
    endShape();
    noStroke();
    for(int i=0; i<points.length; i++){
      fill(map(i, 0, points.length-1, 10, 255));
      ellipse(points[i].x, points[i].y,10,10);  
    }
  }
}
