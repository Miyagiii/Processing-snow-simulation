
class Drop{ // Creates the drop class
  private float x; // Gives the object an xCord
  private float y; // Gives the object an yCord
  private float grav = 3; // allows for gravity to change shape of snow(was removed but is still used to form the initial shape)
  Drop() // Constructor
  {
    x = random(width); //Gives each drop a random xCord
    y = random(height); // Gives each drop a random yCord
  }
  void display()
  {
    strokeWeight(5); // Shows the thickness of the snow
    stroke(255,255,255,200); // Creates the colour of the snow
    line(x,y-grav,x-grav,y-grav); // Draws the actual snow (Could have made this a point due to removing the shape features)
  }
  void move() // Handles movement
  {     
    y = (y+1)+random(1); // Gives snow a swaying motion as well as steady descent
    x = (x+1)+random(-5,5); // Gives snow a swaying motion
    if(y > height){
      y = 0;  // Resets yCord when off screen
    }
    if(x >= width) // Resets xCord when off screen
    {
      x = 0 ;
      
    }else if(x < 0){
      x = width; // Resets xCord going off the other way
      
    }

  
}
}