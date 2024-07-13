//link youtube (viejo): https://youtu.be/O2RKp1-xUy8?si=TDkQW767i0cigclz
//Sofía Martínez Bogado
//comisión 2
//TP#3 — OpArt con Funciones y Ciclo For.

    //TP Rec — TP2 y/ó TP3 [Fecha de entrega: 13 de julio]
    //link youtube (nuevo):https://youtu.be/ennhqLHibuM?si=QEe5cagcArsNap90
    
    /*
    Puntos a resolver: 
    Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor [Me faltaron parámetros]
    Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
    */
    
  //Declaración de variables
  PImage F_39;
  
  float R, G, B;
  
  int rellenoAzul;
  
    void setup() {
      size(800, 400);
    
      rellenoAzul = color(0, 0, 255);
    
      R = 0;
      G = 0;
      B = 0;
    
    }
    
    //Funciones mias
    
    boolean mitaddePant (int posx, int posy) {
      if ( mouseX > posx && mouseY > posy ){
       return true;
      }else{
       return false;
      }
    }
     
    void LineasBlancas(float v, float b, int relleno) {
      //Patrón/anidado de líneas blancas + variación de color
      for (int i = width; i > 0; i -= 3) {
    
        strokeWeight(4.5);
        stroke(R+255, G+255, B+255);
        line(400, i*3, 800, i*3);
    
        if ( mitaddePant (400, 0) ) { 
        
          for (int j = width; j > 0; j -= 3) {
    
            relleno = color(v, G, b);
    
            stroke(relleno);
            line(mouseY*i, j*3, 800, j*3);
          }
         }
        }
    }
    
    void cuadradoAzul(int x, int y) {
      //Cuadrado azul
      noStroke();
      fill(rellenoAzul);
      rect(x, y, 200, 190);
    }
    
    void degradado(int psx) {
      //Degradado de fondo
      for ( int f = 0; f < width; f++ ) {
        stroke(0, 0, f-15);
        line( psx+f, 5, psx+f, height-5 );
        line( psx-f, 5, psx-f, height-5 );
      }
    }
    
    void mouseMoved() {
      //Cambia el valor de color a random
      if (  mitaddePant (400, 0) ) {
    
        //le cambia a void líneasBlancas()
        R=random(255);
        G=random(255);
        B=random(255);
    
        //le cambia a void cuadradoAzul()
        rellenoAzul = color(random(250), random(250), random(255));
      }
    }
    
    void mousePressed() {
      //cambia de color las lineas
      if ( mitaddePant (400, 0)) {
    
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
      degradado(600);
    
      cuadradoAzul(500,105);
    
      LineasBlancas(map(mouseX, 0, width, 0, 255),map(mouseY, 0, height, 0, 255),color(255));
    
    
      //imagen op art
      F_39 = loadImage("F_39.jpg");
      image(F_39, 0, 0);
    }
  
    
    void reset() {
    
      mouseX = 400;
      mouseY = 400;
    
      rellenoAzul= color(0, 0, 255);
      
      //imagen op art
      F_39 = loadImage("F_39.jpg");
      image(F_39, 0, 0);
    }
    
    void keyPressed() {
      
    //botón de reseteo
    teclareinicio  (' ');
    teclacolor2 ('b');
    teclacolor3 ('m');
    teclarandom4 ('r');
    
    }
