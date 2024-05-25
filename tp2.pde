int pantalla = 1;
PImage imagen1; 
PImage imagen2;
PImage imagen3;
String texto1;
String texto2;
String texto3;
PFont fuenteNueva;
float xTexto = 50;
float yTexto = 100;
float velocidadTexto = 0.5;
boolean mostrarBotonReinicio = false;

void setup() {
  size(640, 480);
  imagen1 = loadImage("imagen 1.jpg");
  imagen2 = loadImage("imagen 3.jpg");
  imagen3 = loadImage("imagen 5.jpg");
  fuenteNueva = loadFont("tailue.vlw");
  texto1 = "Piedra papel y tijeras, este juego\n se puede jugar\n de 2 jugadores en adelante";
  texto2 = "los jugadores deben imitar con\n las manos estos objetos,\n la piedra mata a la tijera,\n la tijera mata al papel\n y el papel mata a la piedra";
  texto3 = "para ganar depende del limite puesto,\n por ejemplo si es el mejor de tres,\n gana el que gane 2 partidas";
  textSize(30);
  resetTextPosition();
}

void draw() {
  background(255);
  
  textAlign(LEFT , TOP);
  
  if (pantalla == 1){
    image(imagen1, 0, 0, width, height);
    fill(0);
    text(texto1, xTexto, yTexto);
 
  } else if (pantalla == 2){
    image(imagen2, 0, 0, width, height);
    fill(255);
    text(texto2, yTexto,yTexto);
   
    
  }else if (pantalla == 3){
    image(imagen3,0,0,width,height);
    fill(255);
    text(texto3, yTexto, xTexto);
    
    if (mostrarBotonReinicio) {
      fill(0,102,153);
      rect(220,380,200,50);
      fill(255);
      textAlign(CENTER,CENTER);
      text("Reiniciar",320,405);
  }
} 
 
if (!mostrarBotonReinicio) {
    yTexto += velocidadTexto;
  }
  
  if (pantalla == 3 && yTexto + textWidth(texto3) >= width) {
    mostrarBotonReinicio = true;
  }
  
  // Cambiar de pantalla cuando el texto alcance cierto punto
  if (pantalla == 1 && yTexto > height - 100) {
    cambiarPantalla();
  } else if (pantalla == 2 && yTexto > height - 100) {
    cambiarPantalla();
  }
}





void cambiarPantalla(){
  pantalla++;
  resetTextPosition();
  if (pantalla > 3){
    pantalla = 1;
    mostrarBotonReinicio = false;
  }
}

void resetTextPosition() {
  xTexto = 50;
  yTexto = 100;
}

void mousePressed() {
  if (mostrarBotonReinicio) {
    if (mouseX > 220 && mouseX < 420 && mouseY > 380 && mouseY < 430) {
      // Reiniciar la presentación cuando se hace clic en el botón
      pantalla = 1;
      resetTextPosition();
      mostrarBotonReinicio = false;
    }
  }
}
