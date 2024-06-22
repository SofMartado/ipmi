//link youtube : https://youtu.be/O2RKp1-xUy8?si=TDkQW767i0cigclz
//Sofía Martínez Bogado
//comisión 2
//TP#3 — OpArt con Funciones y Ciclo For.

    
  //Declaración de variables
  PImage F_39;
  
  float lineasBlancas, R, G, B, v, b;
  
  int x, y, relleno, rellenoAzul;
  
  boolean MitadDePant;
  
    void setup() {
      size(800, 400);
    
      relleno=color(255);
      rellenoAzul = color(0, 0, 255);
    
      R = 0;
      G = 0;
      B = 0;
    
      x = 500;
      y = 105;
    
      MitadDePant = mouseX > width/2;
    }
    
    //Funciones mias
    
    void LineasBlancas() {
    
      //Patrón/anidado de líneas blancas + variación de color
      for (int i = width; i > 0; i -= 3) {
    
        strokeWeight(4.5);
        stroke(R+255, G+255, B+255);
        line(400, i*3, 800, i*3);
    
        if ( mouseX > width/2 ) {
          for (int j = width; j > 0; j -= 3) {
            float v = map(mouseX, 0, width, 0, 255);
            float b = map(mouseY, 0, height, 0, 255);
    
            relleno = color(v, G, b);
    
            stroke(relleno);
            line(mouseY*i, j*3, 800, j*3);
          }
        }
      }
    }
    
    
    void cuadradoAzul() {
    
      //Cuadrado azul
      noStroke();
      fill(rellenoAzul);
      rect(x, y, 200, 190);
    }
    
    void degradado() {
    
      //Degradado de fondo
      for ( int f = 0; f < width; f++ ) {
        stroke(0, 0, f-15);
        line( x+100+f, 5, x+100+f, height-5 );
        line( x+100-f, 5, x+100-f, height-5 );
      }
    }
    
    void mouseMoved() {
    
      //Cambia el valor de color a random
      if ( mouseX > width/2 ) {
    
        //le cambia a void líneasBlancas()
        R=random(255);
        G=random(255);
        B=random(255);
    
        //le cambia a void cuadradoAzul()
        rellenoAzul = color(random(250), random(250), random(255));
      }
    }
    
    void mouseClicked() {
    
      //cambia de color las lineas
      if ( mouseX > width/2 ) {
    
        for (int a = width; a > 0; a -= 3) {
    
          strokeWeight(4.5);
          stroke(R, G, B+255);
          line(400, a*3, 800, a*3);
        }
      }
    }
    
    void draw() {
      background(0, 0, 255);
    
      //Funciones
      degradado();
    
      cuadradoAzul();
    
      LineasBlancas();
    
    
      //imagen op art
      F_39 = loadImage("F_39.jpg");
      image(F_39, 0, 0);
    }
    
    void reset() {
      R = 0;
      G = 0;
      B = 0;
    
      x = 500;
      y = 105;
    
      mouseX = 400;
      mouseY = 400;
    
      relleno = color(255, 255, 255);
    
      rellenoAzul= color(0, 0, 255);
    
      degradado();
    
      cuadradoAzul();
    
      LineasBlancas();
    
      //imagen op art
      F_39 = loadImage("F_39.jpg");
      image(F_39, 0, 0);
    }
    
    void keyPressed() {
    
    //botón de reseteo
      if (key == ' ') {
        reset();
      }
      
      //cambia de color las lineas
    
      if ( key == 'b' ) {
    
        for (int l = width; l > 0; l -= 3) {
    
          strokeWeight(4.5);
          stroke(0);
          line(400, l*3, 800+l, l*3);
        }
      }
      if ( key == 'm' ) {
        for (int i = width; i > 0; i -= 3) {
    
          strokeWeight(4.5);
          stroke(0, 0, 255);
          line(400,i+i,800,i+i);
        }
      }
      if ( key == 'r' ) {
        for (float i = width; i > 0; i -= 40) {
          i= random(255);
          strokeWeight(4.5);
          stroke(0);
          line(400,i+i,800,i+i);
        }
      }
    }
