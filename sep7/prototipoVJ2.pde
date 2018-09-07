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
  
  boolean colision(Avatar a_){
    float d = dist(this.x,this.y,a_.x,a_.y);
    if(d<this.t/2+a_.t/2){
      return true;
    }
    else{
      return false;
    }
  }
  
}

class Enemigo{
  float x,y;
  float t;
  float dx,dy;
  float v;
  float a;
  
   Enemigo(){
     this.x = random(50,350);
     this.y = random(50,350);
     this.t = 100;
     this.v = 0.3;
     this.a = random(TWO_PI);
     this.dx = cos(a)*this.v;
     this.dy = sin(a)*this.v;
   }
   
   void display(){
     noStroke();
     fill(25,60,255);
     ellipse(this.x,this.y,this.t,this.t);
   }
   
   void mover(){
     this.x+= this.dx;
     this.y+= this.dy;
     rebota();
   }
   
   void rebota(){
     if (this.x<0+this.t/2 || this.x>width-this.t/2){
       dx*= -1;
     }
     if (this.y<0+this.t/2 || this.y>height-this.t/2){
       dy*=-1;
     }
   }
  
   boolean colision(Avatar a_){
     float c1= this.y -a_.y;
     float c2= this.x - a_.x;
     float h = sqrt(sq(c1)+sq(c2));
     if(h<this.t/2+a_.t/2){
       return true;
     }
     else{
       return false;
     }
   }   
}


Avatar personaje;
//Objetivo uno;
ArrayList <Objetivo> objetivos;
ArrayList <Enemigo> enemigos;
int score;
float dt;
void setup(){
  size(400,400);
  personaje = new Avatar();
  //uno = new Objetivo();
  
  
  
  objetivos = new ArrayList<Objetivo>();
  enemigos = new ArrayList <Enemigo>();
  
  for (int i= 0; i<2; i++){
    enemigos.add(new Enemigo());
  }
  
  for (int i=0; i<30;i++){
    objetivos.add(new Objetivo());
  }
}

void draw(){
  dt+=0.01;
  background(255);
  noStroke();
  //ellipse(constrain(mouseX,100,300),mouseY,30,30);
  for(int i= 0;i<width;i+=10){
    for(int j = 0; j<height;j+=10){
      fill(noise(i*0.01+dt,j*0.01,dt)*255,noise(i*0.01+dt*1,j*0.01+1,dt)*255,noise(i*0.01+dt*2,j*0.01*2,dt)*255);
      rect(i,j,10,10);
    }
  }
  
  personaje.limites();
  personaje.display();
  //uno.display();
  
  for (Enemigo e:enemigos){
    e.display(); 
    e.mover();
    if(e.colision(personaje)){
      println("perdiste!!");
    };
  }
  
  for(Objetivo o:objetivos){
    o.display();
  }
  
  for (int i= 0; i<objetivos.size(); i++){
    if(objetivos.get(i).colision(personaje)){
      objetivos.remove(i);
      score++;
      println(score);
    }
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
