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
    float[] pos_vel_x = reflect_func(pos_x,vel_x,0,width);
    pos_x = pos_vel_x[0]; 
    vel_x = pos_vel_x[1];
    
    float[] pos_vel_y = reflect_func(pos_y,vel_y,0,height);
    pos_y = pos_vel_y[0]; 
    vel_y = pos_vel_y[1];
    
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

public float[] reflect_func(float pos, float vel, float min, float max){
  float newPos = pos;
  float newVel = vel;
  if(pos < min)
  {
    newPos = min - ( pos - min );
    newVel = - vel;
  }
  else if(pos > max){
    newPos = max - ( pos - max );
    newVel = - vel;
  }
  return new float[]{newPos,newVel};
}