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
    float[] x_state = reflect_func(pos_x,vel_x,0,width);
    pos_x = x_state[0]; vel_x = x_state[1];
    
    float[] y_state = reflect_func(pos_y,vel_y,0,height);
    pos_y = y_state[0]; vel_y = y_state[1];
    
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
  if(pos < min)
  {
    pos = min - ( pos - min );
    vel = - vel;
  }
  else if(pos > max){
    pos = max - ( pos - max );
    vel = - vel;
  }
  return new float[]{pos,vel};
}

