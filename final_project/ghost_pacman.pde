class ghost_pacman {
  float x;
  int y;
  PImage ghost2;
  int imgWidth;
  int imgHeight;
  int min_time = 250; // in ms
  int max_time = 750; // in ms
  int time_frame = (int)random(min_time, max_time);
  int time_stamp = 0;
  boolean reveal_ghost = true;
  boolean buttonpressed = false;
  float x1 = 600;
  float y1 = 300;
  float xSpeed = 5;
  float ySpeed = 5;
//constructor

  ghost_pacman(float tempX, int tempY, String tempImg, int tempImgWidth, int tempImgHeight) {
    x= tempX;
    y= tempY;
    ghost2= loadImage (tempImg);
    imgWidth = tempImgWidth;
    imgHeight = tempImgHeight;
  }

  //methods
  
  void display() {
    fill(val);
    ellipse(x1+200,y1+200,100,100);
    image (ghost2, x1+200, y1+200, imgWidth, imgHeight);
    
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


void floataround () {

x1 += xSpeed;
if (x1 > width || x1 < 0) {
  
  xSpeed *= -1;
}

y += ySpeed;
if (y1 > height || y1 < 0) {
 ySpeed *= -1;
  
}

}


void capture () {
  
  if (BUTTONval == 1){
  
  buttonpressed = true; 
  
  }
    
    else {
      
      buttonpressed = false; 
  
  }

 if (val > 190 && (val < 210) && buttonpressed == true) {
 
   state = 3;
 }
   
   else {
   
     state = 0;
   
   }
   
 }
  
}
