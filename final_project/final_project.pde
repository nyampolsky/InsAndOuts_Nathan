//Final Terror in Tarrytown

float speed = 1.; 
float value = 0.0;
int MAX = 255;
 
 
void setup() {
  size(1000, 1000);
  textSize(40);
  smooth(); 
  textAlign(CENTER);
}
 
void draw() {
  background(0);
 
 fade();
  

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
