
const int buttonPin = 2;     
//const int LED =  10;
//const int LED1 =  11;
//const int LED2 =  12;
//const int LED3 =  13;
int ledPins[] = {10,11,12,13};

int buttonState = 0;      


// setup runs once at startup
void setup() {
  int index;
  pinMode(buttonPin, INPUT);
   
   for(index = 0; index <= 3; index++)
  {
    pinMode(ledPins[index],OUTPUT);
   
  } 
}


void loop() {
  buttonState = digitalRead(buttonPin);    
  delay (10); 

  // conditional statement
  if (buttonState == HIGH) { 
    
    back_to_front(); 
    
  } else {   
    digitalWrite(ledPins, LOW);     
  }
}

void back_to_front()
{
  int index;
  int delayTime = 300; 

  for(index = 0; index <= 3; index++)
  {
    digitalWrite(ledPins[index], HIGH);  
    delay(delayTime);                    
    digitalWrite(ledPins[index], LOW);   
  }


  for(index = 3; index >= 0; index--)
  {
    digitalWrite(ledPins[index], HIGH); 
    delay(delayTime);                    
    digitalWrite(ledPins[index], LOW);   
  }
}
