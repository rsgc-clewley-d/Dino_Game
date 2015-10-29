class Dinosaur {

  // global variables for the dino
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino 
  //constructor

  Dinosaur (float A_, float Y_, float S_) {
    dinoA=A_;
    dinoY=Y_;
    dinoS=S_;
  }


  void update (float gravity) {

    //status updates
    fill(0);
    textSize(12);
    text("dinoY is " + dinoY, 150, 25);
    text("dinoS is " + dinoS, 150, 50);
    text("dinoA is " + dinoA, 150, 75);
    text("distance is " + distance, 150, 100);

    //determind whether there is a hit
    //float a = dinoY - 175;
    //float b = 50 - c1.getX();
    //distance = sqrt( pow(a, 2) + pow(b, 2) );

    //if (distance < (30 + 25) )
    //textSize(80);
    //text("HIT", 100, 100);

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
    dinoY = 170;

    dinoS = 0;

    dinoA = 0;
  }
} // end of class