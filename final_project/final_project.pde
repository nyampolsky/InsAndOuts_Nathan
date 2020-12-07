//Final Terror in Tarrytown
int state = 0;
float speed = 1.; 
float value = 0.0;
int MAX = 255;
//import processing.serial.*; //imports Serial library from Processing
PImage bg1;
ghost ghost1;


//Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  ghost1 = new ghost(100, 100, "ghost1.png", 100, 175);
  size(1000, 1000);
  textSize(40);
  smooth(); 
  textAlign(CENTER);
  //
  //printArray(Serial.list()); // this line prints the port list to the console
  //String portName = Serial.list()[1]; //change the number in the [] for the port you need
  //myPort = new Serial(this, portName, 9600);
  bg1 = loadImage("asset1.png");
  imageMode(CENTER);
}
 
void draw() {
  background(0);
  println (val); //prints to Processing console 

 //if ( myPort.available() > 0) { // If data is available,
 //val = myPort.read(); // read it and store it in val
 //}
 
 if (state==0) {
  
 fade();
 
 }
else if (state==1) {

image(bg1, width, height);

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
