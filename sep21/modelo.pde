class Pantalla{
  int n;
  
  void inicio(){
  }
  void seleccion(){
  }
  void pelea(){
  }
  void fin(){
  }
  
  void display(){
    switch(this.n){
      case 0:
      inicio();
      break;
      case 1:
      seleccion();
      break;
      case 2:
      pelea();
      break;
      case 3:
      fin();
      break;
      
    }
  }
  void teclado(){
  }
}

Pantalla ppal;

void setup(){
  ppal = new Pantalla();
}

void draw(){
  ppal.display();
}

void keyPressed(){
  ppal.teclado();
}
