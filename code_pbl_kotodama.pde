void setup(){
  //set screen size
  size(300,300);
  
  //set background color white
  background(255,255,255);

  //initialize tamas.
  for(int i = 0; i < 5; i++){
    float newtama[] = new float[4];
    
    newtama[0] = width/2+random(5);
    newtama[1] = height/2+random(5);
    newtama[2] = random(5);
    newtama[3] = random(5);
          
    tamas.add(newtama);
  }
}

// preparation of tamas ArrayList
ArrayList<float[]> tamas = new ArrayList<float[]>();

//
void draw(){
  // reset background to white;
  background(255,255,255);
  
  // set colors
  fill(255,0,0);
  stroke(255,255,0);
  strokeWeight(5);

  //draw each tamas
  for(float[] tama : tamas){
    
    if(tama[0] < 0)
    {
      tama[0] = - tama[0];
      tama[2] = - tama[2];
    }
    else if(tama[0] > width){
      tama[0] = width - ( tama[0] - width );
      tama[2] = - tama[2];
    }
    
    if(tama[1] < 0)
    {
      tama[1] = - tama[1];
      tama[3] = - tama[3];
    }
    else if(tama[1]> height){
      tama[1] = height - ( tama[1] - height );
      tama[3] = - tama[3];
    }
    
    tama[0] += tama[2];
    tama[1] += tama[3];    

    ellipse(tama[0], tama[1] , 30, 30);

  }

}

