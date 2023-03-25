class Player extends GameObject {
 float x = 150;
 float y = 150;
 float speed = 9;
 float jumpspeed = 10;
 float gravity = 0.9;
  
  Player(PVector p, PVector v){
    super(p, v); 
  }

  void draw(){
      display();
      
  }

  void inputHandler(char k) {
    if(k == 'a'){
      velocity.x = -10;
    }
    
    else if(k== 'd'){
      velocity.x = 10;
    } else{
      velocity.x = 0;
    }
    
    if(k == 'w'){
      velocity.y = -10;
      jumpspeed = 10;
      gravity = 0.9;
      
    } else{
      velocity.y = 0;
    }
    if(k == 's'){
      velocity.y = 10;
    } 
  }
  
  void update() {
    super.update();
     if(jumpspeed > 1){
        jumpspeed = jumpspeed * gravity;
        position.y = position.y - jumpspeed;
     }
     else if(gravity<10){
       gravity *= 1.06;
      }
     
     position.y += gravity;
        
  }

void display(){
  fill(0,255,0);
  rect(position.x,position.y,50,50);
}

void keyPressed() {
    spillet.inputHandler(key);
 
  if (key == 'w'){
    y = y - 10;
  }
  
  if(key == 's'){
  y = y + 10;
  }
  
  if(key == 'a'){
  x = x - 10;
  }
  
  if(key == 'd'){
    x = x + 10;
  }
 }
}
