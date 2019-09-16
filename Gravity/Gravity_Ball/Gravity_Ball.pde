//Karla Medina
PImage BALL;
PImage FIELD;
float x = 100;
float y = 100;
//speed for the float x
float SX = 5; 
//speed for float y
float SY = 5;

//runs once in the beginning. sets up what is called for.
void setup() {
  size(400, 500);//screen size  
  FIELD = loadImage("field.jpg");//background image
  BALL = loadImage("soccerball.png");//ball bouncing around
}

//runs over and over until stopped
void draw() {
  //call the field image again to keep resetting the back or balls will overlap  
  image(FIELD, 0, 0, width, height);
  //keeps changing the speed of x
  x = x + SX;
  //if x is greater than width OR less than 0, bottom line will happen
  if (x > width || x < 0) {
  //determines where the ball bounces back on width
   SX = SX * -1;
  }
  //keeps changing speed of y
  y = y + SY;
  //y is greater than height OR less than 0, ball bounces back
  if (y > height || y < 0) {
  //ball bounces back on height
  SY = SY * -1;
  }
  image(BALL, x, y, 25, 25);//soccer ball moving around
  
}
void mouseReleased() {
   loop();  // everytime mouse in not being pressed, ball bounces
}
void mousePressed() {
  noLoop();  // every time mouse is pressed down, ball will stop bouncing 
}
