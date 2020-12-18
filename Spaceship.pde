class Spaceship extends Floater  
{   
  public Spaceship() {
  corners = 13;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];   
  yCorners = new int[corners];
  xCorners[0] = -16;
  yCorners[0] = -10;
  xCorners[1] = 0;
  yCorners[1] = -10;
  xCorners[2] = 0;
  yCorners[2] = -4;
  xCorners[3] = 12;
  yCorners[3] = -4;
  xCorners[4] = 16;
  yCorners[4] = 0;
  xCorners[5] = 12;
  yCorners[5] = 4;
  xCorners[6] = 0;
  yCorners[6] = 4;
  xCorners[7] = 0;
  yCorners[7] = 10;
  xCorners[8] = -16;
  yCorners[8] = 10;
  xCorners[9] = -16;
  yCorners[9] = 6;
  xCorners[10] = -4;
  yCorners[10] = 6;
  xCorners[11] = -4;
  yCorners[11] = -6;
  xCorners[12] = -16;
  yCorners[12] = -6;
  myColor = color(0, 85, 255); //color of spaceship 
  myCenterX = myCenterY = 350; //holds center coordinates   
  myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = (int)(Math.random() * 360);
  }
public void hyperspace () {
  myXspeed = myYspeed = 0;
  myPointDirection = (int)(Math.random() * 360);
  myCenterX = (int)(Math.random() * 500);
  myCenterY = (int)(Math.random() * 500);
}
public double getX() 
{
  return myCenterX;
}
public double getY()
{
  return myCenterY;
}
public double getXspeed()
{
  return myXspeed;
}
public double getYspeed()
{
  return myYspeed;
}
public double getPointDirection()
{
  return myPointDirection;
}
}
