void setup() {

  size(displayWidth, displayHeight, P3D); // display the screen
  //GUI
  gui = new Gui(this, width-m+10, 80);
  // SCROLLBAR
  setupScrollbars();
  //*****************************************//
  center = new PVector(width/2, height/2);
  colorMode(RGB, white, white, white, 100);
  //*****************************************//
  //______________LOAD FIX IMAGE___________// 
  img0 = loadImage("enpc.jpg"); // SCHOOL LOGO
  img1 = loadImage("design_by_data.png"); // DESIGN BY DATA LOGO
  //**************************** WELCOME SCREEN************************* 
  text1 = new Text_1();//__welcome text and name of the project___________
  //Initiate flock
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 120; i++) {
    flock.addAgent(new Agent(width/2,height/2));
  }
  smooth(10);
  // Call a function to generate new Path object
  newPath();
}

void draw() {
  background(0); // dark backgroung
  //*********************SHOW FIX IMAGE***********************//
  image(img0, 0, height-img0.height*1.5);
  image(img1, width -img1.width, height -img1.height*2.5);
  //******************** DISPLAY all initial THE TEXT***********// //******************** DISPLAY all initial THE TEXT***********//
  int curentTime = millis();
  int timeLapse = tL;  // TIME ELAPSE 
  if (curentTime < timeLapse) {// DISPLAY TEXT FOR XTime****************************************************************µ
    text1.displaytext_1();
  } else {
    text1.erasetext_1();// ERASE TEXT AFTER SOME SECONDS AND START SIMULATION
    flock.run();// moving 
    // display static elements
    drawScrollbars();// display scroll barr
    path.display();// Display the path
    //***************************************************//

    //***************************************************//
    if (mouseButton == LEFT) {
      flock.addAgent(new Agent(mouseX, mouseY));
    }
    if (showvalues) {
      fill(white);
      textAlign(LEFT);
      text("Total agents: " + flock.agents.size() + "\n" + "Framerate: " + round(frameRate) + "\nPress any key to show/hide sliders and text\nClick mouse to add more agents", 5, 100);
    }
    if (drawGui) { 
      gui.draw();
    }
  }
}

void keyPressed() {
  if (key == 'S') showvalues = !showvalues;
  if (key == 'R') setup();
  if (key == 'G') drawGui = !drawGui;
  if (keyCode == UP) {
    if (pause) {
      loop();
      pause = false;
    }
  } else {
    if (keyCode == DOWN) {
      noLoop();
      pause = true;
    }
  }
}

void mousePressed() {
  // When click set generate new path
  if (mouseButton==RIGHT) {
    newPath();
  }
}

void newPath() {
  // A path is a series of connected points
  // A more sophisticated path might be a curve
  path = new Path();
  path.addPoint(-20, height/2);
  path.addPoint(random(0, width/2), random(0, height));
  path.addPoint(random(width/2, width), random(0, height));
  path.addPoint(width+20, height/2);
}