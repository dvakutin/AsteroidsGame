class Asteroid extends Floater
{
  private double rotSpeed;
  
  public Asteroid() 
  {
    rotSpeed = (Math.random() * 2) - 1;
    corners = 6;
    xCorners = new int[corners];   
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(133, 135, 144);
    myCenterX = Math.random() * 500;
    myCenterY = Math.random() * 500;
    myXspeed = myYspeed = (Math.random() *2) - 1;
    rotSpeed = (Math.random() * 15) - 7;
    myPointDirection = (int)(Math.random() * 360);
  } 
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
 public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
   // float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
   // rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    //rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }    
}
