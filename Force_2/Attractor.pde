class Attractor{
  float mass;
  PVector pos;
  float G;
  Attractor(float m){
    this.mass=m;
    this.pos=new PVector(width/3,height/3);
    this.G = 0.4;
  }
  
  PVector attract(Mover m){
    
 PVector force = PVector.sub(pos,m.pos);
    float distance = force.mag();

    distance = constrain(distance,5.0,25.0);
    force.normalize();
    float strength = (G * mass * m.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
  void display(){
      stroke(0);
      fill(175,200);
      ellipse(pos.x, pos.y,mass*2, mass*2);
  }

}
