Mover mo; 
void setup(){
   size(840,560);
   mo = new Mover();
}

void draw(){
  background(255);
  mo.display();
  mo.update();
  mo.edge();
}
