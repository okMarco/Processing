int numFrames = 50;

void setup(){
 size(500,500);
}

void draw(){
  background(0);

  float t = 1.0*(frameCount-1)/numFrames;
  println(t);

  stroke(255);
  strokeWeight(10);

  point(250+50*cos(TWO_PI*t),250+50*sin(TWO_PI*t));

  if(frameCount<=numFrames){
    saveFrame("fr###.png");
  }
}
