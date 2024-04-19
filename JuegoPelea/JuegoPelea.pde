public Caballero caballero;
public Maestra_Agua maestra;
public Escenario escenario;
public void setup(){
  size (1600,900);
  
  escenario=new Escenario();
  
  caballero=new Caballero();
  caballero.setPosicion(new PVector(width/2,height/2));
  caballero.setVelocidad(new PVector(10,10));
  
  maestra=new Maestra_Agua();
}

public void draw(){
  escenario.dibujar();
  
  caballero.dibujar();
  actualizarVelocidadCaballero();
  
  maestra.dibujar();
}

public void keyPressed(){
 if(key=='d'){
   caballero.mover(1);
}
if(key=='a'){
  caballero.mover(0);
}
if(key=='w'){
  caballero.mover(2);
}
if(key=='s'){
 caballero.mover(3); 
}

}

public void actualizarVelocidadCaballero(){
  if(caballero.getPosicion().x>(width/2)){
    caballero.getVelocidad().x=20;
  }else{
    caballero.velocidad.x=20;
  }
}  
  
