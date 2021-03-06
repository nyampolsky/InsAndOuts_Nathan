int y = 0;
int state = 0;
int fade = 1;
int currentTime=0; 
int timer1= 5000; 
int timer2=6000; 
int timer3=7000;
int timer4=10000;
int timer5=15000;
float textSpace = random(100,500);
float textSpace1 = random(100,500);
float xdrop = random(0, 1000);
float xdrop1 = random(0, 1000);
float xdrop2 = random(0, 1000);
float xdrop3 = random(0, 1000);
float xdrop4 = random(0, 1000);
int last = 0;
int n = 0;
decending_boats ship;
decending_boats ship1;
decending_boats ship2;
decending_boats ship3;
decending_boats ship4;

void setup () {
  frameRate(100);
  size (1000,1000);

ship = new decending_boats(xdrop, 100, "ship.png", 100, 175);
ship1 = new decending_boats(xdrop1, 200, "ship1.png", 135, 233);
ship2 = new decending_boats(xdrop2, 600, "ship2.png", 135, 233);
ship3 = new decending_boats(xdrop3, 800, "ship3.png", 135, 233);
ship4 = new decending_boats(xdrop4, 950, "ship4.png", 135, 233);

}



void draw () {
  
//variable for timer

  currentTime=millis();
  
//find_position_on_screen//



  println("x = " + mouseX);
  println("y =" + mouseY);
  
  
//find_position_on_screen//


if (state==0) {
  
 // draws lighthouse body
 
 lighthouse();



//beacon light
  
  drawTarget(width/2, 137, 70, 10);
  
if((mouseX > 470) && (mouseX < 530 && mouseY < 805 && mouseY > 705))

{

fill(0);
strokeWeight(2);
rect(width/2-30,715, 60, 85);  

textSize(40);
text("ENTER?", 440, 850);

}
  else {
    
    fill(255);
strokeWeight(2);
rect(width/2-30,715, 60, 85);


}
  
  

}
else if (state==1) {

// fade effect

blendMode(SUBTRACT);
fill(2);
rect(0, 0, width, height);
blendMode(NORMAL);

 if (currentTime>timer1) {
    background(0);
    fill(255);
    text("*Click-clack*", textSpace, textSpace1);
  } 
  
  if (currentTime>timer2) {
    background(0);
    fill(255);
    text("*Click-clack*", 500, 500);
  } 
  
  if (currentTime>timer3) {
    background(0);
    fill(255);
    text("*Click-clack*", 700, 700);
  } 
  
  if (currentTime>timer4) {
    
    state = 2;
    
  } 
  
  if (currentTime>timer5) {
    
    state = 0;
    
  } 

}

else if (state==2) {
  textMode(CENTER);
  background (255);
  strokeWeight(3);
  fill(0);
  
  fill(0, 0, 180);
  rect(0, 0, 1000, 1000);
  
  
  //spotlight
  fill(235,235,0);
  triangle(mouseX, height, height, height, mouseX, mouseY);
  
  fill(100,100,0);
  drawTarget(mouseX, mouseY, 100, 10);
  
  ship.display(); 
  ship1.display();
  ship2.display();
  ship3.display();
  ship4.display();
  ship.fall();
  ship1.fall();
  ship2.fall();
  ship3.fall();
  ship4.fall();
  ship.guide();
  ship1.guide();
  ship2.guide();
  ship3.guide();
  ship4.guide();
  
  //code to reset timer
  
  n = millis()-last;
  if(millis() > last + 20000) {
   
    last = millis();
    
  }
  

}



  
}

//sampled from https://processing.org/examples/functions.html //

void drawTarget(float xloc, float yloc, int size, int num) {
  float grayvalues = 255/num;
  float steps = size/num;
  for (int i = 0; i < num; i++) {
    fill(i*grayvalues);
    ellipse(xloc, yloc, size - i*steps, size - i*steps);
  }
  
}

void lighthouse() {
  
  // lighthouse  

  beginShape();
  vertex(400,200);
  vertex(600,200);
  vertex(750,800);
  vertex(250,800); 
  endShape(CLOSE);
  
  fill(120,0,0);
  beginShape();
  vertex(400,200);
  vertex(600,200);
  vertex(635,340);
  vertex(355,385); 
  endShape(CLOSE);
  
  
 fill(120,0,0);
  beginShape();
  vertex(288,655);
  vertex(696,588);
  vertex(750,800);
  vertex(250,800); 
  endShape(CLOSE);
  
// lighthouse 

// top window

fill(250);
rect(320,175, 350, 35);

strokeWeight(2);
rect(width/2-30,270, 60, 60);  

// middle window

fill(250);
strokeWeight(2);
rect(width/2-30,470, 60, 60);  

// door

fill(250);
strokeWeight(2);
rect(width/2-30,715, 60, 85);  

// beacon

line(400,175, 400, 100);
line(605,175, 605, 100);

line(465,175, 465, 100);
line(535,175, 535, 100);

//roof

fill (0,0,100);
beginShape();
  vertex(400,30);
  vertex(600,30);
  vertex(670,99);
  vertex(325,99); 
  endShape(CLOSE);
  
}

 void mousePressed() {
  if ((mouseX > 470) && (mouseX < 530 && mouseY < 805 && mouseY > 705)) 
   
  {
    state = 1;
  }
}
