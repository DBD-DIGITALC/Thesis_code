// ALL CLASS
Flock flock;
Gui gui;
Path path;
Text_1 text1; 


PVector center;

//*************ALL BOOLEAN************//
boolean showvalues = true;
boolean drawGui = true;
boolean scrollbar = false;
boolean erasetext = false;
boolean textenable = true;
boolean pause = false;
//*************ALL VARIABLES************///
float swt = 25.0;     //sep.mult(25.0f);
float awt = 4.0;      //ali.mult(4.0f);
float cwt = 5.0;      //coh.mult(5.0f);
float maxspeed = 1;
float maxforce = 0.025;
//**************************************************//
int m = 200; // marge of the width area 
int st1 = 40;
int st2 = 20;
int h_t = 20;// Height of text
int tL = 500;// TIME ELAPSE 
int curentTime = millis();
int timeLapse = tL;  // TIME ELAPSE 
int white = 255;
//**************************************************//
String s1 = "Welcome \n Simulation of the city growth \n Emergent urbanism \n Presented by K.Karbaye Paschy \n  Tutor : ALESSIO Erioli";
//******************************////******************************////******************************//
// Fix image for the screen
PImage img0, img1;
//**************************************************************************************************