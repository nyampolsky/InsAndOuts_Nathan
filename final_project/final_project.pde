//Final Terror in Tarrytown
int state = 0;
float speed = 1.; 
float value = 0.0;
int MAX = 255;
PImage bg1;
int currentTime=0; 
int timer1=10000;
ghost ghost1;
import processing.serial.*; 
Serial myPort;
int val=0; 



void setup() {
  
  size(750, 750);
  textSize(40);
  smooth(); 
  textAlign(CENTER);
  ghost1 = new ghost(100, 100, "ghost1.png", 100, 175);
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  
  bg1 = loadImage("asset1.jpg");
  imageMode(CENTER);
}
 
void draw() {
  if ( myPort.available() > 0) { // If data is available,
  val = myPort.read(); // read it and store it in val
  currentTime=millis();
  println (val); //prints to Processing console 
  image(bg1, width, height);
 
 
 
 }
 
 
if (state == 0) {
 background(0); 
 fade();
 
 }
else if (state == 1) {

image(bg1, width/2, height/2);
if (currentTime>timer1) {
  
  ghost1.display();
  ghost1.stun();
  
  } 

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
