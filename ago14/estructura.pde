//Variables globales
float x;
float y;
float r,g,b;
int foo;
float delta;
float dr;

//setup: establecer las condiciones iniciales de mi programa
void setup(){
  size(400,400);
  background(255);
  x = 0;
  y = height/2;
  r = random(255);
  g = random(255);
  b = random(255);
  // cambia el frameRate
  //frameRate(1);
  delta = 3;
}


//draw: codigo que se va a ejecutar una  y otra vez mientras mi programa esté en ejecución
void draw(){
  dr+=0.01;
  //foo++;
  //println(foo);
  background(255);
  x+= delta;
  //r = random(255);
  //g = random(255);
  //b = random(255);
  
  particula(x,y,200);

 // el frameRate actual
  //println(frameRate);
  
  //voy a utilizar un if statement para evaluar si la particula esta en la orilla
  if (x>400){
    println("la particula llegó a la orilla");
    delta *= -1;
  }
  else if(x<0){
    delta *= -1;
  }
}

// funcion: un metodo de retorno, un nombre y una serie de parámetros
int suma (int a, int b){
  return a + b;
}

void particula(float x_, float y_, float t_){
  noFill();
  pushMatrix();
  translate(x_,y_);
  
  strokeWeight(3);
  rectMode(CENTER);
  for(int i = 0; i<t_; i+=5){
    pushMatrix();
    if (i/5%2 == 0){
      rotate(dr);
    }
    else{
      rotate(-dr);
    }
    
    stroke(i,0,0);
    rect(0,0,i,i);
    popMatrix();
  }
  popMatrix();
}
