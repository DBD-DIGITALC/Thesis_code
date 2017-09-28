// GUI (Graphic User Interface) functions
class Gui {
  String menu;
  PFont font;
  float x, y, w, h;
  int textSize;
  int n;
  Gui(PApplet p5, float x, float y) {
    this.x = x;
    this.y = y;
    w = p5.width;
    h = p5.height;
    textSize = 12;
    n = 10;
    font = createFont("Papyrus Regular", textSize); 
    menu = "MENU \n \n \n R = reset. \n1 to 6 = Show system map \nX = draw path \nL = draw connection \nC = cohFlag \nA = AliFlag \nS = sepFlag \nF = flockingFlag \nE = SpawnEdge \nT = Draw Trails ";
    menu +="\nSPACE BAR = toggle map display";
    menu += "\n\nG = toggle this GUI";
  }
  void draw() {
    fill(255);
    textFont(font);
    textSize(textSize);
    text(menu, x, y);
    textAlign(LEFT);
  }
}