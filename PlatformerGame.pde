// dette basale beholder-klasse for spillet
// den har både update-metode og  draw-metode som i Asteroids-projektet

class PlatformerGame {
  Player player;
  
  PlatformerGame() {
  player = new Player(new PVector(100,100), new PVector(0,0));
  }
  void inputHandler(char tast){
    player.inputHandler(tast);
  }

  void updateGame() {
    player.update();
  }

  void drawGame() {
    player.draw();
  }
}
