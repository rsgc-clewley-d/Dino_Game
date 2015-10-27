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