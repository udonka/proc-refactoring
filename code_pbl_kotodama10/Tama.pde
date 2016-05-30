class Tama{
  float pos_x,pos_y;
  float vel_x,vel_y;
 
  public Tama(float pos_x,float pos_y,float vel_x,float vel_y){
    this.pos_x = pos_x;
    this.pos_y = pos_y;
    this.vel_x = vel_x;
    this.vel_y = vel_y;
  } 
  
  public void reflect(){
    if(pos_x < 0)
    {
      pos_x = - pos_x;
      vel_x = - vel_x;
    }
    else if(pos_x > width){
      pos_x = width - ( pos_x - width );
      vel_x = - vel_x;
    }
    
    if(pos_y < 0)
    {
      pos_y = - pos_y;
      vel_y = - vel_y;
    }
    else if(pos_y > height){
      pos_y = height - ( pos_y - height );
      vel_y = - vel_y;
    }
    
  }
  
  public void move(){
    this.reflect();
    pos_x += vel_x;
    pos_y += vel_y;    
  }
  
  public void draw(){
    ellipse(pos_x, pos_y , 30, 30);
  } 
}

