class Tama{
  Vec position = new Vec();
  Vec velocity = new Vec();
 
  public Tama(Vec position, Vec velocity){
    this.position = position;
    this.velocity = velocity;
  } 
  
  public void reflect(){
    if(position.x < 0)
    {
      position.x = - position.x;
      velocity.x = - velocity.x;
    }
    else if(position.x > width){
      position.x = width - ( position.x - width );
      velocity.x = - velocity.x;
    }
    
    if(position.y < 0)
    {
      position.y = - position.y;
      velocity.y = - velocity.y;
    }
    else if(position.y > height){
      position.y = height - ( position.y - height );
      velocity.y = - velocity.y;
    }
    
  }
  
  public void move(){
    this.reflect();
    position.add(velocity);
    
  }
  
  public void draw(){
    ellipse(position.x, position.y , 30, 30);
  } 
}

