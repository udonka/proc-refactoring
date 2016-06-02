class Tama{
  private Vec position = new Vec();
  private Vec velocity = new Vec();
 
  public Tama(Vec position, Vec velocity){
    this.position = position;
    this.velocity = velocity;
  } 

  public Tama(){
    this.velocity = new Vec(5, 1);
  }
  
  public void reflect(Vec position, Vec velocity){
    float[] pos_vel_x = reflect_func(position.x, velocity.x, 0, width);
    position.x = pos_vel_x[0]; 
    velocity.x = pos_vel_x[1];
    
    float[] pos_vel_y = reflect_func(position.y, velocity.y, 0, height);
    position.y = pos_vel_y[0]; 
    velocity.y = pos_vel_y[1];
  }
  
  public void move(){
    this.reflect(this.position,this.velocity);
    position.add(velocity);
    
  }
  
  public void draw(){
    ellipse(position.x, position.y , 30, 30);
  }

}

float[] reflect_func(float pos, float vel, float min, float max){
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