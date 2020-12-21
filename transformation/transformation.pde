float angle=0;
void setup()
{
  size(300, 300);

}

void draw(){
  fill(175);
  stroke(4);
  background(255);
  translate(width/2,height/2);
  rotate(angle);
  line(-50,0,50,0);
  ellipse(50,0,32,32);
  ellipse(-50,0,32,32);
  angle+=0.1;
}
