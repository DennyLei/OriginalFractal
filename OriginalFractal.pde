public void setup(){
  size(500,500);
  background(0);
  myFractal(250,250,480);
}

public void mousePressed(){
  myFractal(mouseX,mouseY,480);
}

public void myFractal(int x, int y, int size){
  stroke(random(255), random(255), random(255));
  noFill();
  circle(x,y,size);

  if(size > 20){
    myFractal(x-size/3, y, size/2);
    myFractal(x+size/3, y, size/2);
    myFractal(x, y-size/3, size/2);
    myFractal(x, y+size/3, size/2);
  }
}




