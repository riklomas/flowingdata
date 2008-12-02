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
	size(2150, 700);

	ellipseMode(RADIUS);

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
		pushMatrix();
		translate(180, _y);
		text(labels[i], 0, 0);
		popMatrix();
	}
	
	
	pushMatrix();
	translate(225, 640);
	
	textFont(font, 20); 
	textAlign(LEFT, CENTER);
	text("Scale", 0, 0);
	float scale_w = textWidth("Scale");
	
	stroke(#333333, 70);
	noFill();
	float _rad = sqrt(1000000/4486806.0);
	ellipse(90, 0, 60.0 * _rad, 60.0 * _rad);
	float _rad2 = sqrt(100000/4486806.0);
	ellipse(230, 0, 60.0 * _rad2, 60.0 * _rad2);
	
	noStroke();
	fill(#333333);
	text("1,000,000", 125, 0);
	text("100,000", 247, 0);
	
	fill(#333333, 60);
	text("by Rik Lomas\nhttp://rikrikrik.com", 1700, 0);
	
	popMatrix();
	
	stroke(#333333, 30);
	line(220, 595, 2090, 595);
	
	save("image.png");
}
