// Nathan, Dome of the rock (lights off), go ahead and turn the lights off!


float a = random(1, 100);


void setup(){

size (1080, 720);

}


void draw () {

ellipseMode(CENTER);
rectMode(CENTER);

if((mouseX > 250) && (mouseX < 300))

{
fill(0);
ellipse(300,350,50,50);
fill(0);
rect(300,375,50,50);

}

else if
((mouseX > 350) && (mouseX < 400)) {
fill(0);
ellipse(400,350,50,50);
fill(0);
rect(400,375,50,50);

}

else if
((mouseX > 450) && (mouseX < 500)) {
fill(0);
ellipse(500,350,50,50);
fill(0);
rect(500,375,50,50);
}
else if
((mouseX > 550) && (mouseX < 600)) {
fill(0);
ellipse(600,350,50,50);
fill(0);
rect(600,375,50,50);

}
else if
((mouseX > 650) && (mouseX < 700)) {
fill(0);
ellipse(700,350,50,50);
fill(0);
rect(700,375,50,50);

}

else if (mousePressed == true) {
  

fill(0);
ellipse(300,350,50,50);
fill(0);
rect(300,375,50,50);


fill(0);
ellipse(500,350,50,50);
fill(0);
rect(500,375,50,50);

fill(0);
ellipse(400,350,50,50);
fill(0);
rect(400,375,50,50);

fill(0);
ellipse(600,350,50,50);
fill(0);
rect(600,375,50,50);

fill(0);
ellipse(700,350,50,50);
fill(0);
rect(700,375,50,50);

} 






else {
fill(255);
rect(350,350,100,100);

stroke(0);
fill(150,150,0);
ellipse(500,300,300,300);
fill(0);
triangle (505,155,495,155,500,a);
fill(0,150,150);
rect(500,400,540,200);
fill(255);
rect(500,450,540,100);
fill(0);
ellipse(500,450,50,50);
fill(0);
rect(500,475,50,50);

// main doorway

fill(150);
ellipse(300,350,50,50);
fill(150);
rect(300,375,50,50);


fill(150);
ellipse(500,350,50,50);
fill(150);
rect(500,375,50,50);

fill(150);
ellipse(400,350,50,50);
fill(150);
rect(400,375,50,50);

fill(150);
ellipse(600,350,50,50);
fill(150);
rect(600,375,50,50);

fill(150);
ellipse(700,350,50,50);
fill(150);
rect(700,375,50,50);


}

}
