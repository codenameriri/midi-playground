// Include TheMidiBus library
import themidibus.*;

// Create some MidiBus objects
MidiBus mb1, mb2, mb3;

// MIDI notes params
int channel = 1;
int pitch = 60;
int velocity = 127;

// Grid properties
int GRID_WIDTH = 4;
int GRID_HEIGHT = 4;
int BOX_WIDTH = 100;
int BOX_HEIGHT = 100;

// 2D Array to store Box objects
Box[][] boxes = new Box[GRID_HEIGHT][GRID_WIDTH];

// Setup sketch
void setup() {
  size(400, 400);
  background(0,0,0);
  // List available MIDI inputs and outputs
  MidiBus.list();
  // Instantiate the MidiBus
  mb1 = new MidiBus(this, -1, 1);
  mb2 = new MidiBus(this, -1, 2);
  mb3 = new MidiBus(this, -1, 3);
  MidiBus[] buses = {mb1, mb2, mb3};
  // Draw the grid of buttons
  color stroke = color(0,0,100);
  for (int i = 0; i < GRID_WIDTH; i++) {
    for (int j = 0; j < GRID_HEIGHT; j++) {
      color fill;
      if ((i+j) % 2 == 0) 
        fill = color(200,200,255);
      else 
        fill = color(100,100,255);
      Box box = new Box(j*BOX_WIDTH, i*BOX_HEIGHT, BOX_WIDTH, BOX_HEIGHT, fill, stroke);  
      boxes[i][j] = box;
      box.display();
    } 
  }
  // Add your MidiSequence classes here
  boxes[0][0].ms = new MidiSequence_B1(buses);
}

// Draw loop
void draw() {
  
}

// Send a MIDI note on message
void mousePressed() {
  // Play the MidiSequence assigned to a Box
  for (int i = 0; i < GRID_WIDTH; i++) {
    for (int j = 0; j < GRID_HEIGHT; j++) {
      if ((mouseX > BOX_WIDTH * i && mouseX < BOX_WIDTH * (i+1))
        && (mouseY > BOX_HEIGHT * j && mouseY < BOX_HEIGHT * (j+1))) {
          //println("found it!");
          boxes[i][j].play();  
      }
    }
  }
  // Or just manually address the box and put 
  // your sequence code here
  if ((mouseX > 0 && mouseX < BOX_WIDTH )
        && (mouseY > 0 && mouseY < BOX_HEIGHT )) {
     //mb1.sendNoteOn(1, 60, 127);
  }
}

// Send a MIDI note off message
void mouseReleased() {
  
}
