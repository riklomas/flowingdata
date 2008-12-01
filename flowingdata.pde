int count = 0;
int ax = 5;
int ay = 4;
int edge = 50;
int rad = 200;

PFont font;

Pie[] pies;

void setup ()
{
	int sx = (2 * edge) + (ax * rad);
	int sy = (2 * edge) + (ay * rad);

	font = loadFont("ArnoPro.vlw");
	size(2150, 600);

	String str_pies[] = loadStrings("data/data.txt");
	count = str_pies.length;

	pies = new Pie[count];

	noStroke();
	smooth();

	for (int i = 0; i < count; i++)
	{
		String ln[] = split(str_pies[i], TAB);
		pies[i] = new Pie(i, ln[0], float(ln[1]), float(ln[2]), float(ln[3]), float(ln[4]), float(ln[5]), float(ln[6]));
	}

	background(#ffffff);
	for (int i = 0; i < count; i++)
	{
		pies[i].draw();
	}

	String[] labels = { "Europe", "Asia", "Americas", "Africa", "Oceania" };
	for (int i = 0; i < 5; i++)
	{
		textFont(font, 30); 
		textAlign(RIGHT, CENTER);

		int _y = i * 100 + 100;
		ellipseMode(RADIUS);
		pushMatrix();
		translate(180, _y);
		text(labels[i], 0, 0);
		popMatrix();

	}
	save("image.png");
}
