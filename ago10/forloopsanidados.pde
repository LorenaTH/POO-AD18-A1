size(400,400);
background(255);
for(int i = 0; i<400; i+=10){
 for(int j = 0; j<400; j+=10){
   noStroke();
   fill(random(255),random(255),random(255));
   rect(i,j,10,10);
  } 
}
