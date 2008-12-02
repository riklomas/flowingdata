class Pie
{
	int series;
	String date;
	float max_radius = 60.0;
	float conts[] = new float[5];

	Pie (int _series, String _date, float[] _cont)
	{
		series = _series;
		date = _date;
		
		for (int i = 0; i < _cont.length; i++) { 
			conts[i] = sqrt(_cont[i]/4486806.0);
		}
	}

	void draw () 
	{
		int _x = series * 100;

		pushMatrix();
		translate(_x, 0);
		
		stroke(#333333, 30);
		line(0, 0, 0, 550);
		noStroke();
		
		fill(#333333);
		textFont(font, 20); 
		textAlign(LEFT, BASELINE);
		text(date, 5, 550);
		
		for (int i = 0; i < conts.length; i++)
		{
			int _y = i * 100 + 80;
			ellipse(0, _y, max_radius * conts[i], max_radius * conts[i]);
		}
		
		popMatrix();
	}
}
