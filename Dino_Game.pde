Cactus c1; //<>//
Dinosaur d1;
float gravity; 
float distance; 


// this function runs once only
void setup() {

  // draw the canvas
  size(800, 200);

  d1 = new Dinosaur(0, 170, 0);

  c1 = new Cactus (900, 175, -0.1, -1);

  gravity = 0.005;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops

  background(255);

  d1.update(gravity);

  // draw the cactus 
  c1.update(gravity);
}


//respond to keypress
void keyPressed() {


  dinoA = -0.1;
}