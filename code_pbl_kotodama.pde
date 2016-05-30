void setup(){
  size(300,300);
  
  background(255,255,255);
  //!!todo ellipse mode

  tama = new Tama(new Vec(0,0), new Vec(5,1));
}

Tama tama;


void draw(){
  background(255,255,255);
  
  fill(255,0,0);
  stroke(255,255,0);
  strokeWeight(5);

  tama.move();  
  tama.draw();  

}

interface IDrawable{
  public void draw();
}

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
    this.reflect(this.position,this.velocity);
    

    position.add(velocity);
    
  }
  
  public void draw(){
    ellipse(position.x, position.y , 30, 30);
  }
 
}


class Vec{
  public float x;
  public float y;
  
  public Vec(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public Vec(){
    this.x = 0;
    this.y = 0;
  }
 
  public void Vec(Vec otherVec){
    this.x = otherVec.x;
    this.y = otherVec.y;
  }
  
  public Vec add(Vec other){
    this.x += other.x; 
    this.y += other.y; 
    return this;
  } 
  
  public Vec sub(Vec other){
    this.add(other.mul(-1));
    return this;
  }
  
  public Vec mul(float k){
    this.x *= k;
    this.y *= k;
    return this;
  }
}
