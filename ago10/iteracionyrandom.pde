int foo;
foo = 34;
println(foo);
foo = 56;
println(foo);

char bar;
bar = 'e';
println(bar);

/*
interacion = repetir un proceso un numero de veces
init = la condicion de inicio de mi proceso de iteración 
test = una condición que voy a evaluar para continuar o detener mi proceso iterativo
update = las reglas de actualzación de mi variable init;
*/
size(400,400);
background(255);
for(int i = 0; i<10000; i++){
  float x = random(400);
  float y = random(400);
  float w = random(50);
  float h = random(50);
  float c = random(255);
  noFill();
  stroke(255,c,c);
  strokeWeight(random(5));
  rect(x,y,w,h);
}
