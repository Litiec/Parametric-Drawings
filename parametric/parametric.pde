float tA1, tA2, tA3;
float tB1, tB2, tB3;
void setup(){
  size(800,800, P2D);
  background(0);
  smooth(8);
  
}
void draw(){
  noStroke();
  fill(0,0);
  rect(0,0, width,height);
  stroke(255);
  strokeWeight(1);
  float x1 = width/2+(x(tA1, 120)+x(tA2, 50)+x(tA3,70));
  float y1 = height/2+(y(tB1, 70)+y(tB2,50)+y(tB3,70));
  tA1+=1;
  tA2+=0.5;
  tA3+=1.15;
  tB1+=0.5;
  tB2+=1;
  tB3+=2;
  float x2 = width/2+(x(tA1, 120)+x(tA2, 50)+x(tA3,70));
  float y2 = height/2+(y(tB1, 70)+y(tB2,50)+y(tB3,70));
  line(x1 ,y1,x2,y2);
  stroke(0,255,0);
  strokeWeight(0.1);
  line(x1 ,y1,x2,y2);
}
float x(float t, int radious){
  return sin(radians(t))*radious;
}
float y(float t, int radious){
  return cos(radians(t))*radious;
}
