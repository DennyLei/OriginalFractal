public void setup(){
  size(1000,1000);

}

public void draw(){
background(0);
myFractal(250,250,480);
}

public void myFractal(int x, int y, int size){
  stroke(random(255), random(255), random(255));
  noFill();
  circle(x,y,size/10);

  if(size > 20){
    myFractal(x-size/3, y, size/2);
    myFractal(x+size/3, y, size/2);
    myFractal(x, y-size/3, size/2);
    myFractal(x, y+size/3, size/2);
  }
}






