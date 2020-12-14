//Final Terror in Tarrytown


//turn the potentiometer to stun the ghost and then hit the button to capture it



float x1 = random(100, 200);
float y1 = random(100, 200);
float x2 = random(100, 200);
float y2 = random(100, 200);
float x3 = random(100, 200);
float y3 = random(100, 200);
int state = 0;
float speed = 1.; 
float value = 0.0;
int MAX = 255;
PImage bg1;
int currentTime=0; 
int timer1=5000;
int timer2=10000;
int timer3=15000;
ghost ghost1;
ghost ghost2;
ghost ghost3;
ghost ghost_captured;
ghost ghost_captured1;
ghost ghost_captured2;
import processing.serial.*; 
Serial myPort;
int val=0; 
int POTval=0;
int BUTTONval=0;

void setup() {
  
  size(750, 750);
  textSize(40);
  smooth(); 
  textAlign(CENTER);
  ghost1 = new ghost(x1, y1, "ghost1.png", 100, 175);
  ghost2 = new ghost(x2, y2, "ghost2.png", 100, 175);
  ghost3 = new ghost(x3, y3, "ghost3.png", 100, 175);
  ghost_captured = new ghost(455, 1, "ghost_captured.png", 100, 175);
  ghost_captured1 = new ghost(525, 60, "ghost_captured1.png", 100, 175);
  ghost_captured2 = new ghost(600, 60, "ghost_captured2.png", 100, 175);
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  
  bg1 = loadImage("asset1.jpg");
  imageMode(CENTER);
}
 
void draw() {
  
  println("x = " + mouseX);
  println("y =" + mouseY);

{
  
  
  if ( myPort.available() > 0) { // If data is available,
  val = myPort.read(); // read it and store it in val
  if (val == 0 || val == 1){
  
    BUTTONval = val;
  
  } else {
   POTval = val; 
  }
  
  
  
  }
  
  currentTime=millis();
  println (POTval);
  println (BUTTONval);//prints to Processing console 
  image(bg1, width, height);
 
 }
 
 
if (state == 0) {
 background(0); 
 fade();
 
 }
else if (state == 1) {

  image(bg1, width/2, height/2);
  fill(150,0,0,150);
  rect(430, 40, 400, 150);
  fill(255);
  text("Ghosts Captured:", 590, 30);
if (currentTime>timer1) {
  
  ghost1.display();
  ghost1.stun();
  ghost1.floataround();
  ghost1.capture();
  
  
  
  } 

}

else if (state == 2){
  
  image(bg1, width/2, height/2);
  fill(150,0,0,150);
  rect(430, 40, 400, 150);
  fill(255);
  text("Ghosts Captured:", 590, 30);
  
  if (currentTime>timer2) {
  
  ghost2.display();
  ghost2.stun();
  ghost2.floataround();
  ghost2.capture1();
  ghost_captured.gc();
  }
  
}

else if (state == 3){
  
  image(bg1, width/2, height/2);
  fill(150,0,0,150);
  rect(430, 40, 400, 150);
  fill(255);
  text("Ghosts Captured:", 590, 30);
  
  if (currentTime>timer3) {
  
  ghost3.display();
  ghost3.stun();
  ghost3.floataround();
  ghost3.capture2();
  ghost_captured.gc();
  ghost_captured1.gc();
  }
  
}

else if (state == 4){
  
  background(0);
  fade1();
  
 
  
}

}

void keyPressed() {
  
  state = 1;
}



void fade()

{
 
  value+=speed;
  float fade = ((sin(radians(value))+1)/2)*MAX;
  //float fade = abs(sin(radians(value)))*MAX;
  fill(255, fade); 
 // fade effect https://forum.processing.org/two/discussion/12935/text-fade-in-out-with-millis
 
  text("Press Enter", width/2, height/2);
  
}

void fade1()

{
 
  value+=speed;
  float fade = ((sin(radians(value))+1)/2)*MAX;
  //float fade = abs(sin(radians(value)))*MAX;
  fill(255, fade); 
 // fade effect https://forum.processing.org/two/discussion/12935/text-fade-in-out-with-millis
 
  text("You have captured all the ghosts!", width/2, height/2);
  
}
