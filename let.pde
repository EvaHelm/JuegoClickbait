let m;
let s;
let mouse;

function setup() {
	createCanvas(480, 480);
	colorMode(RGB);
	background(55);
	colorMode(HSB);
	
	mouse = mouseY;
	
	s = new Star();
	
	const num = 3 + ~~random(2);
	m = new Array(num).fill(0).map((m, i) => {
		const mountain = new Mountain(-(i + 1) * (width / num));
		mountain.regen();
		
		return mountain;
	});
}

function draw() {
	colorMode(RGB);
	background(55);
	colorMode(HSB);
	
	s.draw(mouse);
	m.forEach((m) => m.draw());
}

function keyPressed() {
	s = new Star();
	m.forEach((m) => m.regen());
}

function mouseDragged() {
	mouse = mouseY;
}