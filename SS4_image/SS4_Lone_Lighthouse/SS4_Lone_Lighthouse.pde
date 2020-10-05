/*
SS4_Lone_Lighthouse
 */



PImage lighthouse;  


void setup() {
  size (1000, 1000);
  background (0);
  imageMode(CENTER); 

 
  lighthouse= loadImage("lighthouse.png");
}  

void draw() {
  background(255);  

  image (lighthouse, width/2, height/2); 
 
  if ((mouseX > 150) && (mouseX < 300))
{  
    strokeWeight(0);
    fill(255,255,0);
    triangle(500,175,0,0,1000,0);
  
  }  

else if
((mouseX > 301) && (mouseX < 550)) {

  strokeWeight(0);
  fill(255,255,0);
    triangle(500,175,0,0,0,1000);
  

} 
  
  else if
((mouseX > 551) && (mouseX < 700)) {

  strokeWeight(0);
  fill(255,255,0);
    triangle(500,175,0,1000,1000,1000);
  

} 
  
else if
((mouseX > 700) && (mouseX < 1000)) {

  strokeWeight(0);
  fill(255,255,0);
    triangle(500,175,1000,0,1000,1000);
  

}   

  
  for (int i = 0; i < height/3; i++);
  
  rect(0,400,20,20);
  
} 
