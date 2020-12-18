class Star //note that this class does NOT extend Floater
{
  protected int myX, myY, mySize, myColor;
  public Star() //initializes member variables
    { 
      myX = (int)(Math.random() * 700);
      myY = (int)(Math.random() * 700);
      mySize = 4;
      myColor = color(245, 253, 15);
    } 
    public void show() //shows stars
    { 
      fill(myColor);
      ellipse(myX, myY, mySize, mySize);
    }
}
class BigRedStar extends Star 
{
  BigRedStar()
  {
    mySize = 6;
    myColor = color(253, 15, 15);
  }    
}
