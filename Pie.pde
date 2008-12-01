class Pie
{
	int series;
	String date;
	float total, europe, asia, americas, africa, oceania;
	float radius;
	float max_radius = 100;
	int colours[] = { #ff0000, #00ff00, #0000ff, #ffff00, #ff00ff };
	float a_cont[] = new float[5];

	Pie (int _series, String _date, float _total, float _europe, float _asia, float _americas, float _africa, float _oceania)
	{
		series = _series;
		date = _date;
		total = _total;
		europe = _europe;
		asia = _asia;
		americas = _americas;
		africa = _africa;
		oceania = _oceania;
		radius = sqrt(total/9095417);

		a_cont[0] = ang(europe);
		a_cont[1] = ang(asia);
		a_cont[2] = ang(americas);
		a_cont[3] = ang(africa);
		a_cont[4] = ang(oceania);
	}

	void draw () 
	{
		/*
			float a_current = 0;
		int _x = series % 20;
		int _y = series / 20;
		ellipseMode(RADIUS);
		pushMatrix();
		translate(150 + (_x * 2 * max_radius), 150 + (_y * 2 * max_radius));


		stroke(#eeeeee);
		line(0, -max_radius, 0, max_radius+20);

		noFill();
		ellipse(0, 0, max_radius, max_radius);
		noStroke();

		fill(#999999);
		text(date, 2, max_radius+20);

		for (int i = 0; i < 5; i++)
		{
			fill(colours[i]);
			arc(0, 0, max_radius * radius, max_radius * radius, a_current, a_cont[i]+a_current);
			a_current += a_cont[i];
		}

		popMatrix();
		*/

		int _x = series * 100 + 220;

		pushMatrix();
		translate(_x, 20);
		stroke(#333333, 30);
		line(0, 0, 0, 550);
		popMatrix();

		noStroke();

		for (int i = 0; i < 5; i++)
		{
			int _y = i * 100 + 100;
			ellipseMode(RADIUS);
			pushMatrix();
			translate(_x, _y);
			fill(#333333);
			ellipse(0, 0, 60.0*a_cont[i], 60.0*a_cont[i]);
			popMatrix();
		}

		textFont(font, 20); 
		textAlign(LEFT, BASELINE);

		pushMatrix();
		translate(_x+5, 570);
		text(date, 0, 0);
		popMatrix();


	}

	float ang (float cont)
	{
		//return TWO_PI * cont / total;
		return sqrt(cont/4486806);
	}

}
