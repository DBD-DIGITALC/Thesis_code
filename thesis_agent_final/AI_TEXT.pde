class Text_1 {
  int posx1, posy1, posz1, sizeh1;
  Text_1() {
    posx1 = width/2; 
    posy1 = height/2; 
    posz1 = 0; 
    sizeh1 = st1;
  }
  void displaytext_1() {
    PFont font;
    font = createFont("Papyrus Regular", st1);
    textFont(font);
    textSize(st1);
    text(s1, posx1, posy1, posz1);
    textAlign(CENTER);
    fill(255);
  }
  void erasetext_1() {
    fill(0);
  }
}