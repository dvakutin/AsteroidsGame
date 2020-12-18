//your variable declarations here
//ArrayList <Bullet> bull = new ArrayList <Bullet>();
Spaceship sal = new Spaceship();
Star[] fred = new Star[300]; //creates array of 300 stars
ArrayList <Asteroid> rick = new ArrayList <Asteroid>(); //defines ArrayList named rick
ArrayList <Bullet> bull = new ArrayList <Bullet>();
PFont Arial;
int healthscore = 100;


public void setup() 
{
  size(700, 700);
  Arial = createFont("Arial", 32);
  
  for(int i = 0; i < fred.length; i++) //creates each star
  {
    if(i % 10 == 0) {
      fred[i] = new BigRedStar();
    }
    else {
    fred[i] = new Star();
    }
  }
  for(int j = 0; j < 75; j++) //15 means 15 Asteroids (aka vasya)
  {
     rick.add(new Asteroid());  
  }
  
}
public void draw() 
{
  background(0);
  int m = millis();
  noStroke();
  int minutes = m / 60000;
  int seconds = m / 1000;
  int milliseconds = m - ((60000 * minutes) + (1000 * seconds));
  if(minutes >= 1)
  {
    seconds = seconds - (60 * minutes);
    milliseconds = m - ((1000 * seconds) + (60000 * minutes));
  }
  //fill(m % 255); // what does this do?
  //rect(450, 50, 200, 50);
  textFont(Arial);
  fill(255, 255, 255);
  text(minutes + ":", 550, 30); //+ seconds + ":" + milliseconds, 550, 30);
  text(seconds + ":", 550, 40);
  text(milliseconds + ":", 550, 50);

  sal.show();
  sal.move();
  for (int i = 0; i < fred.length; i++) //shows each star
  {
  fred[i].show();
  }
  textFont(Arial);
  fill(255, 255, 255);
  text("Health: " + healthscore, 30, 30);
  for (int j =  0; j < rick.size(); j++) //shows each asteroid
  {
  rick.get(j).show();
  rick.get(j).move();
  //float a = (float)sal.getX();
  //float b = (float)sal.getY();
  //float c = (float)rick.get(j).getX();
  //float e = (float)rick.get(j).getY();
  float d = dist((float)sal.getX(), (float)sal.getY(), (float)rick.get(j).getX(), (float)rick.get(j).getY()); 
  //float d = dist(a, b, c, e);
  if(d < 20)
  {
    rick.remove(j);
    healthscore = healthscore - 5;
    textFont(Arial);
    fill(255, 255, 255);
    text("Health: " + healthscore, 30, 30);
  }
  }
  if(bull.size() > 0)
  {
    for(int n = 0; n < bull.size() - 1; n++)
    {
      bull.get(n).show();
      bull.get(n).accelerate(0.1);
      bull.get(n).move();
    if(bull.get(n).getbullX() >= 700 || bull.get(n).getbullX() <= 0)
    {
      bull.remove(n);
    }
    if(bull.get(n).getbullY() >= 700 || bull.get(n).getbullY() <= 0)
    {
      bull.remove(n);
    }
    }
  }
  for(int n = 0; n < bull.size(); n++)
  {
    for(int j = 0; j < rick.size(); j++)
    {
      float dest = dist((float)bull.get(n).getbullX(), (float)bull.get(n).getbullY(), (float)rick.get(j).getX(), (float)rick.get(j).getY());
      if(dest < 20)
      {
        rick.remove(j);
        bull.remove(n);
        healthscore = healthscore + 1;
        text("Health: " + healthscore, 30, 30);
        break;
      }
    }
  }
  if(healthscore <= 0)
  {
    noLoop();
    fill(162, 255, 0);
    text("Game over :(", 225, 325);
  }
  if(rick.size() == 0)
  {
    noLoop();
    fill(162, 255, 0);
    text("Congrats! You won! :)", 225, 325);
  }
}
public void keyPressed() 
{
  if (key == '4') {
    sal.turn(-5);
  }
  else if(key == '6') {
    sal.turn(5);
  }
  else if(key == '5') {
    sal.accelerate(0.4);
  }
  else if(key == 'h') {
    sal.hyperspace();
  }
 // int n = 0;
  if(key == ' ') {       
    bull.add(new Bullet(sal));   
  }
}
