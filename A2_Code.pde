void setup() {
  size(800, 700);
  background(255);
}
float r = 0;
float angl = 0;
int i;

void draw() {

  float x = r * cos(angl)*40;
  float y = r * sin(angl)*40;

  noFill();
  pushMatrix();
  translate(x*30,y*30);
  draw_elps(x+width/2, y+height/2, i,i);
  popMatrix();
  // Increment the angle
  angl += 0.08;
  // Increment the radius
  r += 0.001;
  
  if (r>0.5)
  {
    noLoop();
  }
 
}
 void draw_elps(float x, float y, float radius1, float radius2) 
  {
      for(i=5;i<100;i=i+5){ 
  ellipse(x, y, radius1, radius2);
      }
      //saveFrame("######.png");
  }
  
