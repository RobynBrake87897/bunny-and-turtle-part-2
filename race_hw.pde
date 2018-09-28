// boolean variables used
boolean messageActivatorT = false;
boolean messageActivatorB = false;

// integers used
int locationTwin = 795;
int locationBwin = 795;
int locationTurtle = 10;
int locationBunny = 10;
int textR = 20;

// images (turtle & hair)
PImage turtleImage, bunnyImage;

void setup()
{
  // set screen size
  size(800, 800);

  // place bunny image
  bunnyImage = loadImage("bunny.jpg");

  // place turtle image
  turtleImage = loadImage("turtle.jpg");
}
void draw()
{
  // set background
  background(0);
  
  // draw reset button
  fill(255);
  rectMode(CENTER);
  rect(400,500,200,50);
  
  // draw text in button
  fill(0);
  textSize(textR);
  text("Reset",375,510);

  // if turtle wins
  if (messageActivatorT == true)
  {
    fill(255);
    textSize(50);
    text("The Turtle Wins!", 220, 400);
  }
  // set message for activation "turtle wins"
  if (locationTurtle >= locationTwin)
  {
    messageActivatorT = true;
  } 
  // if bunny wins
  else if (messageActivatorB == true)
  {
    fill(255);
    textSize(50);
    text("The Hare Wins!", 220, 400);
  }
  
  // set message for activation "hare wins"
  if (locationBunny >= locationBwin)
  {
    messageActivatorB = true;
  }

  // bunny
  image(bunnyImage, 200, locationBunny, 100, 100);

  // turtle
  image(turtleImage, 500, locationTurtle, 100, 100);
}  
void keyPressed()
{
  // make bunny move
  if (key == 'a' || key == 'a')
  {
    locationBunny = locationBunny + 15;
  } 
  // make turtle move
  else if (key == 'l' || key == 'l')
  {
    locationTurtle = locationTurtle + 15;
  }
}

void mousePressed()
{
  // if mouse is clicked in location of reset button, hair and turtle PImage reset
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550)
  {
    locationBunny = 10;
    locationTurtle = 10;
    messageActivatorT = false;
    messageActivatorB = false;
  }
}
