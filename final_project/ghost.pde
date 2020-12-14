class ghost {
  float x;
  float y;
  PImage ghost1;
  PImage ghost2;
  PImage ghost3;
  PImage ghost_captured;
  PImage ghost_captured1;
  PImage ghost_captured2;
  int imgWidth;
  int imgHeight;
  int min_time = 250; // in ms
  int max_time = 750; // in ms
  int time_frame = (int)random(min_time, max_time);
  int time_stamp = 0;
  boolean reveal_ghost = true;
  boolean buttonpressed = false;
  float x1 = random(200, 600);
  float y1 = random(200, 600);
  float xSpeed = 5;
  float ySpeed = 5;
//constructor

  ghost(float tempX, float tempY, String tempImg, int tempImgWidth, int tempImgHeight) {
    x= tempX;
    y= tempY;
    ghost1= loadImage (tempImg);
    imgWidth = tempImgWidth;
    imgHeight = tempImgHeight;
  }

  //methods
  
  void display() {
    
    image (ghost1, x1+200, y1+200, imgWidth, imgHeight);
    fill(255,255,255,val);
    ellipse(x1+200,y1+200,100,100);
  } 
  
  void gc() {
    
    image (ghost1, 530, 80, imgWidth/2, imgHeight/2);
    
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

 if (val >= 210 && buttonpressed == true) {
 
   state = 2;
 }
   
   
 }
 
 void capture1 () {
  
  if (BUTTONval == 1){
  
  buttonpressed = true; 
  
  }
  
    else {
      
      buttonpressed = false; 
  
  }

 if (val >= 150 && buttonpressed == true) {
 
   state = 3;
 }
   
   
 }
 
  void capture2 () {
  
  if (BUTTONval == 1){
  
  buttonpressed = true; 
  
  }
  
    else {
      
      buttonpressed = false; 
  
  }

 if (val >= 60 && buttonpressed == true) {
 
   state = 4;
 }
   
   
 }
  
}
