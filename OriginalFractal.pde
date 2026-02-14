public void setup(){
  size(500,500);
  background(0);
  myFractal(250,250,480);
}

public void mousePressed(){
  myFractal(mouseX,mouseY.480);
}

public void myFractal(int x, int y, int size){
  int c = (int)(Math.random()*100)+80;
  stroke(c);
  noFill();
  circle(x,y,size);

  if(size>10){
    myFractal(x-size/2,y,size/2);
    myFractal(x+size/2,y,size/2);
    myFractal(x,y-size/2,size/2);
    myFractal(x,y+size/2,size/2);
  }
}


