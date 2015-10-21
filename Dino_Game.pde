Cactus c1;

float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino
float gravity; 
float distance;  // tracj distance betwen dino and and a cactus
// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);
  
  c1 = new Cactus (900, 175, -0.1, -1);
  dinoY = 170;
  
  dinoS = 0;
  
  dinoA = 0;
  
 gravity = 0.005;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);
  
  // draw the cactus 
  c1.update(gravity);

  //status updates
  fill(0);
  textSize(12);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);
  text("distance is " + distance, 150, 100);

  ////determind whether there is a hit
  //float a = dinoY - 175;
  //float b = 50 - x1;
  //distance = sqrt( pow(a, 2) + pow(b, 2) );

  //if (distance < (30 + 25) )
  //{  
  //  textSize(80);
  //  text("HIT", 100, 100);
  //}


  //move the dino
  dinoA = dinoA + gravity;
  dinoS = dinoS + dinoA;
  dinoY = dinoY + dinoS;

  // stop the dino if it hits the ground
  if (dinoY > 170) { // bottom of the screen (200) minus the radius of (30)
    dinoA = 0;
    dinoS = 0;
    dinoY = 170;
  }

  //draw the dino
  ellipse(50, dinoY, 60, 60);
}


//respond to keypress
void keyPressed() {


  dinoA = -0.1;
}