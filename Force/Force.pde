//Friction

Mover m1; 
Mover m2; 

void setup(){
   size(840,560);
   m1 = new Mover(20);
   m2 = new Mover(20);

}

void draw(){
    background(255);

  PVector g = new PVector(0,9.8);
  PVector w = new PVector(1,-10);
  
  float c=0.47;
  PVector wN = new PVector(-0.5,-10);
 

  if (mousePressed && (mouseButton == RIGHT)) {
    m1.applyForce(w);
    m2.applyForce(w);


  } else if (mousePressed && (mouseButton == LEFT)) {
    m1.applyForce(wN);
    m2.applyForce(wN);

  }
  
  // apply friction 
  
  PVector friction = m1.vel.get();
  
  friction.mult(-1);
  friction.normalize();
  friction.mult(c);
  m1.applyForce(friction);
  
  m1.applyForce(g);
  m1.display();
  m1.update();
  m1.edge();
  
  m2.applyForce(g);
  m2.display();
  m2.update();
  m2.edge();
}
