class Escenario{
int ancho=40;
int alto=20;
PImage fondo;

public Escenario(){
  fondo=loadImage("fondo.png");

}
 void dibujar() {
    imageMode(CENTER);
    image(fondo, width/2, height/2, width, height);
    dibujarSuelo();
    dibujarNubes();
   
  }
  void dibujarSuelo(){
  for(float sueloX=0;sueloX<width;sueloX+=ancho){
 for(float sueloY=((height/2)+200);sueloY<height;sueloY+=alto){
   fill(#0C3350);
   rect(sueloX,sueloY,ancho,alto);
 }
  }
}
 private void dibujarNubes(){
  fill(#073D67);
  for (int nubes=0;nubes<5;nubes++){
   float x=random(width); 
   float y=random(height/4);
    ellipse(x,y,500,30); 
  }
}
}
