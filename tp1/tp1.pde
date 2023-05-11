/* vaccaro candela  93542/7
tp1
tegnologia 
*/

// mis variables
String estado = "inicio";
PImage imagen1;
PImage imagen2;
PImage imagen3;
PFont Mifuente;
int cuentaFotograma = 0;
String parrafo1= "Tv Garden es el paisaje futuro imaginado por \n  Paik donde la tecnologia es una parte  \n integral del mundo natural.";
String parrafo2= "en los monitores muestran el trabajo de \n video musical de Paik Global Gloove,una mezcla \n colorida densa de imagenes de vanguardia,pop, y comerciales.";

void setup(){
 // tamaño pantalla
  size(640,480);
 // variables
 Mifuente= loadFont ("BodoniBT.vlw");
  imagen1= loadImage ("imagen1.jpg");
  imagen2= loadImage ("imagen2.jpg");
  imagen3= loadImage ("imagen3.jpg");
  
}

void draw(){
 // fondo
  background(#EDC4E4);
  textFont(Mifuente);
 
  if(estado.equals("inicio") ) {
 //pantalla de inicio:
 
  fill(0);
  textAlign(CENTER);
  textSize(60);
  text("click para empezar",width/2,height/2); 
  fill(255,0,0);
  ellipse(width/2,300,100,100);

  
} else if(estado.equals("pantalla 1") ) {   
    
 //pantalla 1:
 image(imagen1,0,0,640,480);
  fill(255);
  textAlign(CENTER);
  textSize(35);
  text("TV garden",width/2,cuentaFotograma);
  textSize(25);
  text("Artista: Nam June Paik",width/2,cuentaFotograma+20); 
  textSize(25);
  text("Fecha de creación: 1974–2000",width/2,cuentaFotograma+40);
  
  //incremento de contador:
  cuentaFotograma++;
  
  if(cuentaFotograma>= 500) {
    estado = "pantalla 2";
    cuentaFotograma = 0;
  }
} else if(estado.equals("pantalla 2") ) {
    
 //pantalla 2:
 image(imagen2,0,0,640,480);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  fill(255,map(cuentaFotograma,0,150,0,255) );
  text("TV garden",width/2,height/2-80);
  textSize(30);
  fill(255,map(cuentaFotograma,0,150,0,255) );
  text(parrafo1,width/2,height/2+30);
  
  //incremento de contador:
  cuentaFotograma++;
  
  if(cuentaFotograma>= 500) {
    estado = "pantalla 3";
     cuentaFotograma = 0;
  } 
} else if(estado.equals("pantalla 3") ) {
  
  //pantalla 3
  image(imagen3,0,0,640,480);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("TV garden",cuentaFotograma+20,height/2-80);
  textSize(30);
  text(parrafo2,cuentaFotograma+40,height/2+30);
  fill(255,0,0);
  ellipse(width/2,420,100,100);
  
  
  //incremento de contador:
  cuentaFotograma++;
  
  if(cuentaFotograma>= 900) {
  }  
 }
}

void mousePressed(){
  if(estado.equals("inicio") ) {
    if(dist(mouseX,mouseY,width/2,300)< 50) {
      
    estado = "pantalla 1";
    cuentaFotograma = 0;
    }
  } else if(estado.equals("pantalla 1") ) {
  estado = "pantalla 2";
  cuentaFotograma = 0;
  } else if(estado.equals("pantalla 2") ) {
  estado = "pantalla 3";
  cuentaFotograma = 0;
  } else if(estado.equals("pantalla 3") ) {
     if(dist(mouseX,mouseY,width/2,420)< 50) {
    estado = "inicio";
    }
  }
}
