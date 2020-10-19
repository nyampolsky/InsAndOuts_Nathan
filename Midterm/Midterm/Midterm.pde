int y = 0;


void setup () {
  
  size (1000,1000);

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



void draw () {

  
//find_position_on_screen//



  println("x = " + mouseX);
  println("y =" + mouseY);
  
  
//find_position_on_screen//

//beacon light
  
  drawTarget(width/2, 137, 70, 10);
  
if((mouseX > 250) && (mouseX < 300))

{
fill(0);
ellipse(300,350,50,50);
fill(0);
rect(300,375,50,50);

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
