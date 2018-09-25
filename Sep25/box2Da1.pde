// imporar mis librerias de box2d;
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;
Caja una;
Plataforma suelo;
ArrayList <Caja> cajas;

void setup(){
  size(400,400);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0,-10);
  una = new Caja(200,200,30,20);
  cajas = new ArrayList<Caja>();
  suelo = new Plataforma(200,300,300,40);
}

void draw(){
  background(255);
  box2d.step();
  una.display();
  /*
  for(Caja c:cajas){
    c.display();
  }
  */
  
  for(int i = cajas.size()-1; i>=0; i--){
    Caja c = cajas.get(i);
    if(c.estaEnPantalla()){
      c.display();
    }
    else{
      cajas.remove(i);
    }
    
  }
  suelo.display();
 println(cajas.size());
 if(mousePressed){
   Caja c = new Caja(mouseX,mouseY,30,20);
  cajas.add(c);
 }
 
}

void mousePressed(){
  Caja c = new Caja(mouseX,mouseY,30,20);
  cajas.add(c);
}
