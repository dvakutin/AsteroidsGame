class Bullet extends Floater{
  public Bullet(Spaceship sal){  //argument is the ship because we want bullets to come from the same place as the spaceship
  myCenterX = sal.getX();
  myCenterY = sal.getY();
  myXspeed = sal.getXspeed();
  myYspeed = sal.getYspeed();
  myPointDirection = sal.getPointDirection();
  }  
  public void show() {
    fill(245, 149, 66);
    stroke(245, 149, 66);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
public double getbullX()
{
  return myCenterX;
}
public double getbullY()
{
  return myCenterY;
}
} 
