class Spaceship extends Floater  
{   
  public Spaceship() {
  corners = 13;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];   
  yCorners = new int[corners];
  xCorners[0] = -12;
  yCorners[0] = -7;
  xCorners[1] = 0;
  yCorners[1] = -7;
  xCorners[2] = 0;
  yCorners[2] = -3;
  xCorners[3] = 8;
  yCorners[3] = -3;
  xCorners[4] = 12;
  yCorners[4] = 0;
  xCorners[5] = 8;
  yCorners[5] = 3;
  xCorners[6] = 0;
  yCorners[6] = 3;
  xCorners[7] = 0;
  yCorners[7] = 7;
  xCorners[8] = -12;
  yCorners[8] = 7;
  xCorners[9] = -12;
  yCorners[9] = 4;
  xCorners[10] = -2;
  yCorners[10] = 4;
  xCorners[11] = -2;
  yCorners[11] = -4;
  xCorners[12] = -12;
  yCorners[12] = -4;
  myColor = color(255, 255, 255);   
  myCenterX = myCenterY = 250; //holds center coordinates   
  myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = (int)(Math.random() * 360);
  }
public void hyperspace () {
  myXspeed = myYspeed = 0;
  myPointDirection = (int)(Math.random() * 360);
  myCenterX = (int)(Math.random() * 500);
  myCenterY = (int)(Math.random() * 500);
}
}
