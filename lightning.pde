int targetX;
int startX = 0; 
int startY = 1000; //so that you have to click to start
int endX = 0;
int endY = 1000;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(255,255,255);
  
}
void draw()
{
  stroke(255,0,0);
  while(startY<300)
  {
    endY = startY+(int)(Math.random()*10);
    endX = startX-10+(int)(Math.random()*20);
    
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }

}
void mousePressed()
{
  targetX = 50+(int)(Math.random()*200);
  startX = targetX;
  startY = 0;
  endX = targetX;
  endY = 0;
}

void keyPressed()
{
  size(300,300);
  strokeWeight(5);
  background(255,255,255);
}
