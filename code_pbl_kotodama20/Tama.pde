class Tama implements IDrawable{
  Vec position = new Vec();
  Vec velocity = new Vec();
 
  public Tama(Vec position, Vec velocity){
    this.position = position;
    this.velocity = velocity;
  } 

  public Tama(){
    this.velocity = new Vec(5, 1);
  }
  
  public void reflect(Vec position, Vec velocity){
    float[] x_state = reflect_func(position.x, velocity.x, 0, width);
    position.x = x_state[0]; 
    velocity.x = x_state[1];
    
    float[] y_state = reflect_func(position.y, velocity.y, 0, height);
    position.y = y_state[0]; 
    velocity.y = y_state[1];
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

