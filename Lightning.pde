int startX = 0;
int startY = 0;
int endX = 0;
int endY = 0;

void setup()
{
  size(300,300);
  strokeWeight(1);
  background(0,0,0);
}
void draw()
{
  stroke(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
  line(((int)(Math.random()*20)),((int)(Math.random()*300)),((int)(Math.random()*20)),((int)(Math.random()*255)));
  
}
void mousePressed()
{
   stroke(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
   while (startX < 300)
   {
     int endX = startX + (int)Math.random()*9; 
     int endY = startY + (int)Math.random()*9; 
     int startX = endX;
     int startY = endY;
     line(startX, startY, endX, endY); 
   }
}
