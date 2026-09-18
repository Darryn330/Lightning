int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0,0,0);
}
void draw()
{
  fill(0, 0, 0, 20);
  rect(0, 0, width, height);
  
  stroke(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
  line(((int)(Math.random()*20)),((int)(Math.random()*300)),((int)(Math.random()*20)),((int)(Math.random()*255)));
  
  while (endX<300){
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*19) - 9;
    
    line(startX,startY,endX,endY);
    
    startX = endX;
    startY = endY;
  }
}
  
void mousePressed()
{
   startX = mouseX;
   startY = mouseY;
   endX = mouseX;
   endY = mouseY;
   
   ellipse (mouseX, mouseY, (int)(Math.random()*100),(int)(Math.random()*100));
}
