void setup(){
  size(300,300);
  
  background(255,255,255);
  //!!todo ellipse mode

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

ArrayList<Tama> tamas = new ArrayList<Tama>();

void draw(){
  background(255,255,255);
  
  fill(255,0,0);
  stroke(255,255,0);
  strokeWeight(5);

  for(Tama tama : tamas){
    tama.move();  
  }
  
  for(Tama tama : tamas){
    tama.draw();  
  }

}

