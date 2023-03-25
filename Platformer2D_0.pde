PlatformerGame spillet;

void setup()
{
   size(500, 500); 
   spillet = new PlatformerGame();

}

void draw() {
   background(0);
   spillet.updateGame();
   spillet.drawGame();
 
}

void keyPressed(){
  spillet.inputHandler(key);
}
void keyReleased(){
  spillet.inputHandler('x');
}
