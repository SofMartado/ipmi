boolean teclareinicio ( int tecla ) {
  if ( keyCode == tecla) {
    reset();
    return true;
  } else {
    return false;
  }
}

boolean teclacolor2 ( int teclab ) {
  if ( key == teclab ) {
        for (int l = width; l > 0; l -= 3) {
          strokeWeight(4.5);
          stroke(0);
          line(400, l*3, 800+l, l*3);
        }
      
    return true;
  } else {
    return false;
  }
}
boolean teclacolor3 ( int teclam ) {
  if ( key == teclam ) {
        for (int t = width; t > 0; t -= 3) {
          strokeWeight(4.5);
          stroke(0, 0, 255);
          line(400,t+t,800,t+t);
        }
      
    return true;
  } else {
    return false;
  }
}
boolean teclarandom4 ( int teclar ) {
  if ( key == teclar ) {
        for (float s = width; s > 0; s -= 40) {
          s= random(255);
          strokeWeight(4.5);
          stroke(0);
          line(400,s+s,800,s+s);
        }
       
    return true;
  } else {
    return false;
  }
}
