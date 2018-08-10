size(400,400);
//me permite modificar el fondo de mi pantalla;
// si paso un parametro es escala de grises
//si paso 3 es rgb
background(055,30,255);

fill(240,35,150,125);
stroke(0,255,0);
//noFill();
//noStroke();
//dibuja un rectángulo en x,y, con w y h de tamaño.
rect(100,100,100,100);

//modifica las reglas de construcción
//ellipseMode(CORNER); 

//ellipse me dibuja una elipse en x,y, de tamaño w,h
fill(255,127);
strokeWeight(0.1);
ellipse(100,100,100,100);

//modifica el ancho de la linea
strokeWeight(5);
stroke(255,0,0);

//dibujo una linea
line(0,0,400,400);
noFill();

//dibuja una curva de bezier
bezier(400,0,200,300,200,300,0,400);
