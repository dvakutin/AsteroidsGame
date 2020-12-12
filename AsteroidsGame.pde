//your variable declarations here
Spaceship sal = new Spaceship();
Star[] fred = new Star[300]; //creates array of 300 stars
ArrayList <Asteroid> rick = new ArrayList <Asteroid>(); //defines ArrayList named rick
public void setup() 
{
  size(500, 500);
  
  for(int i = 0; i < fred.length; i++) //creates each star
  {
    if(i % 10 == 0) {
      fred[i] = new BigRedStar();
    }
    else {
    fred[i] = new Star();
    }
  }
}
public void draw() 
{
  background(0);
  sal.show();
  sal.move();
  for (int i = 0; i < fred.length; i++) //shows each star
  {
  fred[i].show();
  }
}
public void keyPressed() 
{
  if (key == '4') {
    sal.turn(-5);
  }
  else if (key == '6') {
    sal.turn(5);
  }
  else if(key == '5') {
    sal.accelerate(0.4);
  }
  else if(key == 'h') {
    sal.hyperspace();
}
}

