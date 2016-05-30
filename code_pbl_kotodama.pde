void setup(){
  //set screen size
  size(300,300);
  
  //set background color white
  background(255,255,255);

  //initialize tamas.
  for(int i = 0; i < 5; i++){
    Tama newtama = new Tama(
      width/2+random(5),
      height/2+random(5),
      random(5),
      random(5)
    );
      
    tamas.add(newtama);
  }
}

// preparation of tamas ArrayList
ArrayList<Tama> tamas = new ArrayList<Tama>();

//
void draw(){
  // reset background to white;
  background(255,255,255);
  
  // set colors
  fill(255,0,0);
  stroke(255,255,0);
  strokeWeight(5);

  //draw each tamas
  for(Tama tama : tamas){
    tama.move();  
    tama.draw();  
  }

}

