//  Fluid Resistance
//  Frction
//  graviational attraction


Liquid liq;
Mover m1; 
Mover m2; 
Attractor a;

void setup(){
   size(1140,860);
   m1 = new Mover(5);
   m2 = new Mover(2);
   liq = new Liquid(150, 0.3);
   a= new Attractor(50);
}
void draw(){
  background(255);
  liq.display();
  
  PVector g = new PVector(0,9.8);
  PVector w = new PVector(1,0);
  
  float c=0.47;
  PVector wN = new PVector(-1,1);
 

  if (mousePressed && (mouseButton == RIGHT)) {
    m1.applyForce(w);
    m2.applyForce(w);


  } else if (mousePressed && (mouseButton == LEFT)) {
    m1.applyForce(wN);
    m2.applyForce(wN);
  }
  
 // Liquid checking 
 if(isInsideLiq(liq,m1)){
   m1.drag(liq);
 }
 if(isInsideLiq(liq,m2)){
    m2.drag(liq);
 }
  
  // apply friction 
  PVector friction = m1.vel.get();
 
  friction.mult(-1);
  friction.normalize();
  friction.mult(c);
  m1.applyForce(friction);
  
  //m1.applyForce(g);
  //m1.display();
  m1.update();
  m1.edge();
  
  
    PVector fric2 = m2.vel.get();
 
  fric2.mult(-1);
  fric2.normalize();
  fric2.mult(c);
  m1.applyForce(fric2);
  //m2.applyForce(g);
  m2.display();
  m2.update();
  m2.edge();  
  
  
  // attractor
  a.display();
  
  PVector f1 =  a.attract(m1);
  m1.applyForce(f1);
  PVector f2 =  a.attract(m2);
  m2.applyForce(f2);
}

Boolean isInsideLiq(Liquid liq, Mover m){
  if(m.pos.y>= height-liq.y){
    return true;
  }else{
    return false; 
  }
}
