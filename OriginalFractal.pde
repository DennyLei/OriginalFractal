public void setup(){
  size(1000,1000);

}

public void draw(){
background(0);
myFractal(250,250,480);
}

public void myFractal(int x, int y, int siz){
  stroke(random(255), random(255), random(255));
  noFill();
  circle(x,y,siz/10);

  if(siz > 10){
    myFractal(x-siz/3, y, siz/2);
    myFractal(x+siz/3, y, siz/2);
    myFractal(x, y-siz/3, siz/2);
    myFractal(x, y+siz/3, siz/2);
  }
}







