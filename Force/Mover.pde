class Mover{
  PVector pos; 
  PVector vel;
  PVector accel; 
  
  float topspeed;
  float rad;
  float mass;
  Mover(float m){
    pos = new PVector(width/2,40);
    vel = new PVector(0,0);
    accel = new PVector(0,0);
    topspeed = 4;
    rad= 40;
    mass=m;
  }
  
  void display(){
    stroke(0);
    strokeWeight(3);
    fill(mass,mass);
    ellipse(pos.x, pos.y,rad, rad);
  }
  
  void update(){    
    vel.add(accel);
    pos.add(vel);
    accel.mult(0);

  }
  
  void applyForce(PVector force){
   PVector f = force.get();
   f.div(mass);
    accel.add(f);
  }
  void coollide(){
  
  }
  
  void edge(){
       if (pos.x > width) {
      pos.x = width;
      vel.x *= -1;
    } else if (pos.x < 0) {
      vel.x *= -1;
      pos.x = 0;
    }

    if (pos.y > height) {
      vel.y *= -1;
      pos.y = height;
    }
  }
}
