// preparation of datas ArrayList
ArrayList<float[]> datas = new ArrayList<float[]>();

//called once on begining of execution.
void setup(){
  //set screen size
  size(300,300);

  //set background color white
  background(255,255,255);

  //initialize datas.
  for(int i = 0; i < 5; i++){
    float a[] = new float[4];

    a[0] = width/2+random(5);
    a[1] = height/2+random(5);
    a[2] = random(5);
    a[3] = random(5);

    datas.add(a);
  }
}


//called every frame (1/60 seconds.)
void draw(){
  // reset background to white;
  background(255,255,255);
  
  // set colors and styles.
  fill(255,0,0);
  stroke(255,255,0);
  strokeWeight(5);

  //draw each datas
  for(float[] data : datas){
    
    if(data[0] < 0)
    {
      data[0] = - data[0];
      data[2] = - data[2];
    }
    else if(data[0] > width){
      data[0] = width - ( data[0] - width );
      data[2] = - data[2];
    }
    
    if(data[1] < 0)
    {
      data[1] = - data[1];
      data[3] = - data[3];
    }
    else if(data[1]> height){
      data[1] = height - ( data[1] - height );
      data[3] = - data[3];
    }
    
    data[0] += data[2];
    data[1] += data[3];    

    ellipse(data[0], data[1] , 30, 30);

  }
}

