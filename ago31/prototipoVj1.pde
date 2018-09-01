class Avatar{
  //atributos
  float x,y;
  float v;
  color c;
  int t;
  //constructor
  Avatar(){
    this.x = width/2;
    this.y = height/2;
    this.v = 5;
    this.c = color(255,0,0);
    this.t = 40;
  }
  
  //métodos
  void display(){
    fill(this.c);
    noStroke();
    ellipse(this.x,this.y,this.t,this.t);
  }
  
  void movimiento(int n_){
    switch(n_){
      case 0:
        this.y -= this.v;
      break;
      case 1:
        this.x += this.v;
      break;
      case 2:
        this.x -= this.v;
      break;
      case 3:
        this.y += this.v;
      break;
    }
  }
  
  void limites(){
    this.x = constrain(this.x,0+this.t/2,width-this.t/2);
    this.y = constrain(this.y,0+this.t/2,height-this.t/2);
  }
  
}


class Objetivo{
  //atributos
  int x,y;
  int t;
  color c;
  //métodos
  Objetivo(){
    this.x = floor(random(400));
    this.y = floor(random(400));
    this. t = 10;
    this.c = color(255);
  }
  
  void display(){
    stroke(0);
    fill(c);
    ellipse(this.x,this.y,this.t,this.t);
  }
  
}

class Enemigo{
  //atributos
  //métodos 
}


Avatar personaje;
Objetivo uno;
ArrayList <Objetivo> objetivos;


void setup(){
  size(400,400);
  personaje = new Avatar();
  uno = new Objetivo();
  
  objetivos = new ArrayList<Objetivo>();
  for (int i=0; i<30;i++){
    objetivos.add(new Objetivo());
  }
}

void draw(){
  background(255);
  //ellipse(constrain(mouseX,100,300),mouseY,30,30);
  personaje.limites();
  personaje.display();
  uno.display();
  
  for(Objetivo o:objetivos){
    o.display();
  }
  
  if (mousePressed){
     println("continuo");
  }
  
  if (keyPressed){
    switch(key){
    case 'w':
      personaje.movimiento(0);
    break;
    case 'a':
      personaje.movimiento(2);
    break;
    case 's':
      personaje.movimiento(3);
    break;
    case 'd':
      personaje.movimiento(1);
    break;
  }
  }
}

/*
void keyPressed(){
  switch(key){
    case 'w':
      personaje.movimiento(0);
    break;
    case 'a':
      personaje.movimiento(2);
    break;
    case 's':
      personaje.movimiento(3);
    break;
    case 'd':
      personaje.movimiento(1);
    break;
  }
}
*/
/*
void mousePressed(){
  println("discreto");
}
*/
