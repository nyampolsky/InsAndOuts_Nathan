class ghost {
  float x;
  int y;
  PImage ghost1;
  int imgWidth;
  int imgHeight;
  int min_time = 3000; // in ms
  int max_time = 8000; // in ms
  int time_frame = (int)random(min_time, max_time);
  int time_stamp = 0;
  boolean reveal_ghost = true;
  boolean buttonpressed = false;
//constructor

  ghost(float tempX, int tempY, String tempImg, int tempImgWidth, int tempImgHeight) {
    x= tempX;
    y= tempY;
    ghost1= loadImage (tempImg);
    imgWidth = tempImgWidth;
    imgHeight = tempImgHeight;
  }

  //methods
  
  void display() {
    
    image (ghost1, x, y, imgWidth, imgHeight);
    fill(0,0,0,val);
    ellipse(x,y,200,200);
    
    
  } 

  void stun() {
    
    if (val >= 210) {
    
    int time_passed = millis() - time_stamp;

  if (time_passed < time_frame && reveal_ghost) {
    display();
  } else if (time_passed >= time_frame) {
    time_stamp = millis();
    time_frame = (int)random(min_time, max_time);
    reveal_ghost = !reveal_ghost;
  }
      
    }
   
  }

void capture () {
  
  if (val >= 210 && buttonpressed==true) {
    
    
    
  }
  
}
    
  }
