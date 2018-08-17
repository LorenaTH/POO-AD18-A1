//variables globales
float x;
float y;
float dx;
float r,g,b;
float t;

void setup(){
  size(400,400);
  background(255);
  x = width/2;
  y = height/2;
  dx = 1;
  r = random(255);
  g = random(255);
  b = random(255);
  t = 100;
}

void draw(){
  background(255);  
  dibuja(x,y,t);
  movimiento();  
}

void dibuja(float x_, float y_, float t_){
  noStroke();
  fill(r,g,b);
  ellipse(x_,y_,t_,t_); 
}

void movimiento(){
  x+= dx;
  if (x>400){
    dx *= -1;
  }
  else if (x<0){
    dx *=-1;
  }
}
