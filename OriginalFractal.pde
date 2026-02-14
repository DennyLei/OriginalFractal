public void setup(){
  size(500,500);
}

public void draw(){
  background(0);
myFractal(250,250,480);
}

public void myFractal(int x, int y, int size){
  circle(x,y,size);
if(size>10){
  myFractal(x-size/2,y,size/2);
  myFractal(x+size/2,y,size/2);
  myFractal(x,y-size/2,size/2);
  myFractal(x,y+size/2,size/2);
}
]
