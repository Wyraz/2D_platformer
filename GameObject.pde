class GameObject {
  PVector position;
  PVector velocity;
  PVector accel = new PVector(0, 0);

  GameObject(PVector pos, PVector vel) {
    position = pos;
    velocity = vel;
  }

  void update() {
    velocity.add(accel);
    position.add(velocity);
  }


  void draw() {
  }
}
