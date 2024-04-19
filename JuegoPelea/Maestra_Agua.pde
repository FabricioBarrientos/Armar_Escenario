class Maestra_Agua{
private float x;
private PImage maestraAgua;
private boolean inicio;
 
  public Maestra_Agua(){
    maestraAgua=loadImage("WaterController.png");
  }
  
  public void dibujar(){
   imageMode(CENTER);
   image(maestraAgua,x,height/6,500,500);
   mover();
   if(inicio){
     x+=30;
   }else{
     x-=30;
   }
  }
  public void mover(){
    if(x<=0){
      inicio=true;
    }
    else if(x>=width){
      inicio=false;
    }
  }
  }
