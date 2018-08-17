class Particula{
  // atributos
  float px,py;
  float r,g,b;
  float dx;
  float t;
 
  //constructor
  Particula(float px_, float py_, float r_, float g_, float b_, float dx_, float t_){
    px = px_;
    py = py_;
    r = r_;
    g = g_;
    b = b_;
    dx = dx_;
    t = t_;
  }
  
  //metodos
  void display(){
    noStroke();
    fill(r,g,b);
    ellipse(px, py, t, t);
  }
  
  void movimiento(){
    px += dx;
    if (px>400){
      dx*= -1;
    }
    else if(px<0){
      dx *= -1;
    }
  }
}

//variables globales
Particula una;
Particula otra;

void setup(){
  size(400,400);
  una = new Particula(200,200,255,0,0,1,100);
  otra = new Particula(0,300,0,255,100,2,30);
}

void draw(){
  background(255);
  una.display();
  una.movimiento();
  otra.display();
  otra.movimiento();
  println(una);
}
