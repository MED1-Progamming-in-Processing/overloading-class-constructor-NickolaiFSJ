float girth = width;
float looong = height;
float speedMin = 1;
float speedMax = 3;
float baseDiameter = 50;
float colorBase = 125;

Circle circle;

void setup() {
  size(300, 300);
  background(colorBase, colorBase, colorBase);
  circle = new Circle(random(girth), random(looong), random(speedMin, speedMax), random(speedMin, speedMax), random(baseDiameter));
  
}

void draw() {
  noStroke();
  circle.move();
  circle.display();
 }
 
void mouseClicked(){
circle.switcheroo();
}
