//Sofía Martínez Bogado
//Comisión 2

PImage miPaisaje;

void setup(){
  size(800,400);
  miPaisaje=loadImage("miPaisaje.jpg");
}
void draw(){
 background(200);
 image(miPaisaje,0,0);
 println(mouseX+"/"+mouseY);
 noStroke();
  
//cielo
  fill(0,45,95,145);
  rect(400,0,400,213);

//agua
  fill(0,25,55,200);
  rect(400,213,400,400);
  
//sol
  fill(240,220,100);
  circle(719,165,17);
  fill(220,190,20);
  circle(719,165,10);
    //lineas del sol
    stroke(20,55,105,150);
    strokeWeight(4);
    line(713,159,724,159);
    //otras lineas sobre el sol
    stroke(100,55,0,70);
    strokeWeight(2);
    line(714,166,723,166);
    
noStroke();

//olas
  fill(200,145);
  beginShape();
      //1ra
      vertex(460,317);
      vertex(518,325);
      //2da
      vertex(564,342);
      vertex(590,333);
      //3ra
      vertex(605,321);
      vertex(615,325);
      //4ta
      vertex(618,326);
      vertex(626,312);
      //5ta
      vertex(638,312);
      vertex(657,330);
      //6ta
      vertex(666,322);
      vertex(683,337);
      //7ma
      vertex(706,335);
      vertex(710,334);
      //8va
      vertex(711,342);
      vertex(728,347);
      //9na
      vertex(740,358);
      vertex(777,347);
      //10ma
      vertex(788,355);
      vertex(800,345);
      //11va
      vertex(800,800);
      vertex(460,800);
  endShape(CLOSE);
  
//primeras piedras
  fill(26,16,15);
  beginShape();
      //1ra
      vertex(400,300);
      vertex(421,310);
      //2da
      vertex(428,316);
      vertex(432,311);
      //3ra
      vertex(471,323);
      vertex(472,326);
      //4ta
      vertex(478,331);
      vertex(480,337);
      //5ta
      vertex(480,346);
      vertex(496,337);
      //6ta
      vertex(512,334);
      vertex(536,352);
      //7ma
      vertex(535,356);
      vertex(543,362);
      //8va
      vertex(554,361);
      vertex(580,372);
      //9na
      vertex(580,378);
      vertex(590,376);
      //10ma
      vertex(598,381);
      vertex(617,377);
      //11va
      vertex(620,370);
      vertex(626,377);
      //12da
      vertex(624,382);
      vertex(631,384);
      //13ra
      vertex(631,800);
      vertex(400,400);
  endShape(CLOSE);
           //segunda piedra
            fill(26,16,15);
            beginShape();
                //1ra
                vertex(673,400);
                vertex(674,393);
                //2da
                vertex(674,394);
                vertex(686,384);
                //3ra
                vertex(700,381);
                vertex(702,378);
                //4ta  
                vertex(714,378);
                vertex(730,390);
                //5ta
                vertex(734,390);
                vertex(741,400);
                //6ta
                vertex(745,394);
                vertex(758,400);
            endShape(CLOSE);
}
