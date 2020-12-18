class Liquid{

  float y;
  float c;
  
  Liquid(float y, float c){
    this.y=y;
    this.c=c;

  }
  
  void display(){
    fill(100);
    rect(0,height-y,width,y);
  }

}
