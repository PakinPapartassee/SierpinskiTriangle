public void setup()
{
size(750,750);
background(0);
noLoop();
}
public void draw()
{
background(0);
sierpinski(30, 500, 700);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
if(len<=15){
 int x1 = x;
 int y1 = y;
 int x3 = x + len;
 int y3 = y;
 int x2 = x + len/2;
 int y2 = y - len/2;
 fill(0);
 stroke(255,0,0);
 triangle(x1,y1,x2,y2,x3,y3);
 }
 else{
  sierpinski(x, y, len/2);
  sierpinski(x + len/2, y, len/2);
  sierpinski(x + len/4, y - len/4, len/2);
 }
}
