public void setup()
{
	size(500, 500);
	ellipseMode(CORNER);
}
public void draw()
{
	background(0);
	myFractal(250, 250, 400);
}
public void myFractal(int x, int y, int len)
{
	fill((float)Math.random()*255+1, (float)Math.random()*255+1, (float)Math.random()*255+1);
	ellipse(x, y, len, len);
	ellipse(x,y,-len,-len);
	ellipse(x, y, -len, len);
	ellipse(x, y, len, -len);
	if(len > 10)
	{
		myFractal(x, y, len*120/(125));
	}
}
