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

  //status updates
  //fill(0);
  //textSize(12);
  //text("dinoY is " + dinoY, 150, 25);
  //text("dinoS is " + dinoS, 150, 50);
  //text("dinoA is " + dinoA, 150, 75);
  //text("distance is " + distance, 150, 100);

  ////determind whether there is a hit
  //float a = dinoY - 175;
  //float b = 50 - c1.getX();
  //distance = sqrt( pow(a, 2) + pow(b, 2) );

  //if (distance < (30 + 25) )
  //{  
  // textSize(80);
  // text("HIT. SO BAD", 100, 100);
  //}
}




////respond to keypress
//void keyPressed() {


//  dinoA = -0.1;
//}