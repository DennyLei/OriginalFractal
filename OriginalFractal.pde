public void setup(){
  size(500,500);
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();
  myFractal(250,250,480);
}

public void mousePressed(){
  background(0);
  myFractal(mouseX, mouseY, 200);
}

public void myFractal(int x, int y, int size){
  stroke(random(255),random(255),random(255));
  ellipse(x,y,size,size);

  if(size > 20){
    myFractal(x-size/3, y, size/2);
    myFractal(x+size/3, y, size/2);
    myFractal(x, y-size/3, size/2);
    myFractal(x, y+size/3, size/2);
  }
}
