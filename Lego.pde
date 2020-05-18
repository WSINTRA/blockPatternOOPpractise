class Lego {
  //variables
  color c;

  float blockH;
  float blockW;
  float rot;
  PVector location, velocity, acceleration, mass;
  //constructor
  Lego(float brick, int xpos, int ypos) {
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = new PVector(brick, brick);
    location = new PVector(xpos, ypos);
  }

  void display(Pattern pat) {
    //display recieves a pattern object and then draws based on pattern
    pat.execute(pat.index, location.x, location.y, mass.x, mass.y);
  }
  void display(){
    rect(location.x,location.y,mass.x,mass.y);
  }
  void applyForce(PVector forc) {
    PVector f = PVector.div(forc, 0.1);
    acceleration.add(f);
  }
  void move() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }
}
