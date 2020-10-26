class decending_boats {
  float x;
  int y;
  int diameter;
  PImage ship;
  PImage ship1;
  PImage ship2;
  PImage ship3;
  PImage ship4;
  int imgWidth;
  int imgHeight;
  
//constructor

  decending_boats(float tempX, int tempY, String tempImg, int tempImgWidth, int tempImgHeight) {
    x= tempX;
    y= tempY;
    ship= loadImage (tempImg);
    imgWidth = tempImgWidth;
    imgHeight = tempImgHeight;
  }

  //methods
  
  void display() {
    image (ship, x, y, imgWidth, imgHeight);
  } 

  void fall() {
    if (y>height+100) {
      y=-100;
    } else {
      y++;
    }
  }

  void guide() {
    
    if (y >= height/3 && mousePressed) {
     
      y--;
      
    }
    
  }
}
