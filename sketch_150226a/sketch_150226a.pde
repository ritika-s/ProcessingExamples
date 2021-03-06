Mover[] movers = new Mover[10];

void setup() {
  size(500, 300);
  randomSeed(1);
  smooth();
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(color(random(1, 255),random(1, 255),random(1, 255)),random(1, 4), random(width), 0);
  }
}

void draw() {
  background(color(15));

  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(0.01, 0);
    PVector gravity = new PVector(0, 0.1*movers[i].mass);

    float c = 0.05;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(c);

    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}
