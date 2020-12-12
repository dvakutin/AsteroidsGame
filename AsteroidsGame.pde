//your variable declarations here
Spaceship sal = new Spaceship();
Star[] fred = new Star[300]; //creates array of 300 stars
//ArrayList <Asteroid> rick = new ArrayList <Asteroid>(); //defines ArrayList named rick
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
//  for(int j = 0; j < 15; j++) //15 means 15 Asteroids (aka vasya)
//  {
//    Asteroid vasya = new Asteroid(); //creates new object: vasya, type Asteroid
 //   rick.add(vasya); // adds vasya to ArrayList called rick
    
//  }
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
//  for (int j = 0; j < rick.size(); j++) //shows each asteroid
//  {
  //rick.get(j).show();
  //rick.get(j).move();
  float a = (float)sal.getX();
  float b = (float)sal.getY();
  float c = (float)rick.get(j).getX();
  float e = (float)rick.get(j).getY();
  //float d = dist((float)sal.getX(), (float)sal.getY(), (float)rick.get(j).getX(), (float)rick.get(j).getY()); 
  //float d = dist(a, b, c, e);
  //if(d < 20)
  //{
   // rick.remove(j);
  //}
 // }
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

