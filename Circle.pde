class Circle {
  boolean Round = true;
  float xBoundary = width;
  float yBoundary = height;
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  float randoColRed;
  float randoColGreen;
  float randoColBlue;
  float colorShift = 255;
  
  Circle(float x, float y, float xSpeed, float ySpeed, float diameter) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
  }

  void move() {
    x += xSpeed;
    if (x < 0+diameter/2 || x > xBoundary-diameter/2) {
      xSpeed *= -1;
      randoColRed = random(colorShift);
      randoColGreen = random(colorShift);
      randoColBlue = random(colorShift);
    }

    y += ySpeed;
    if (y < 0+diameter/2 || y > yBoundary-diameter/2) {
      ySpeed *= -1;
      randoColRed = random(colorShift);
      randoColGreen = random(colorShift);
      randoColBlue = random(colorShift);
    }
  }
  
  void display(){
   if(Round == true){
     background(randoColRed-20, randoColGreen-20, randoColBlue-20);
     fill(randoColRed, randoColGreen, randoColBlue);
     ellipse(x, y, diameter, diameter);
   } else if (Round == false){
     background(randoColRed-20, randoColGreen-20, randoColBlue-20);
     fill(randoColRed, randoColGreen, randoColBlue);
     rectMode(CENTER);
     rect(x, y, diameter, diameter);
   } 
 }
  void switcheroo(){
      if((mouseX > 0 && mouseX < width) && (mouseY > 0 && mouseY < height)){
      Round =! Round;
    }
  }
}
