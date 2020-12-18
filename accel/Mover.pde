class Mover{
  PVector pos; 
  PVector vel;
  PVector accel; 
  
  float topspeed;
  
  Mover(){
    pos = new PVector(width/2,height/2);
    vel = new PVector(0,0);
    topspeed = 4;
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(pos.x, pos.y, 58, 58);
  }
  
  void update(){
    accel = PVector.random2D();
    accel.mult(random(1000));
    
    vel.add(accel);
    vel.limit(topspeed);
    pos.add(vel);
  }
  
  
  void edge(){
    if(pos.x>width){
      pos.x=0;
    }else if(pos.x<0){
      pos.x=width;
    }else if(pos.y<0){
      pos.y=height;
    }else if(pos.y>height){
      pos.y=0;
    }
  }
}
