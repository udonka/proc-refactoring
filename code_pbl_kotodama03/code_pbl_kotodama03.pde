// preparation of tamas ArrayList
ArrayList<Tama> tamas = new ArrayList<Tama>();

//called once on begining of execution.
void setup(){
  //set screen size
  size(300,300);

  //set background color white
  background(255,255,255);

  //initialize tamas.
  for(int i = 0; i < 5; i++){
    Tama newTama = new Tama();

    newTama.pos_x = width/2+random(5);
    newTama.pos_y = height/2+random(5);
    newTama.vel_x = random(5);
    newTama.vel_y = random(5);

    tamas.add(newTama);
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

  //draw each tamas
  for(Tama tama : tamas){
    
    if(tama.pos_x < 0)
    {
      tama.pos_x = - tama.pos_x;
      tama.vel_x = - tama.vel_x;
    }
    else if(tama.pos_x > width){
      tama.pos_x = width - ( tama.pos_x - width );
      tama.vel_x = - tama.vel_x;
    }
    
    if(tama.pos_y < 0)
    {
      tama.pos_y = - tama.pos_y;
      tama.vel_y = - tama.vel_y;
    }
    else if(tama.pos_y> height){
      tama.pos_y = height - ( tama.pos_y - height );
      tama.vel_y = - tama.vel_y;
    }
    
    tama.pos_x += tama.vel_x;
    tama.pos_y += tama.vel_y;    

    ellipse(tama.pos_x, tama.pos_y , 30, 30);

  }
}