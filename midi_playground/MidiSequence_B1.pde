import themidibus.*;

class MidiSequence_B1 implements MidiSequence {
  // Copy this for every MidiSequence class
  MidiBus[] buses = new MidiBus[3];
  MidiSequence_B1(MidiBus[] b) {
    buses = b;
  }
  // Overwrite this with your cool MIDI sequence
  void playSequence() {
    MidiBus mb1 = null;
    if (buses[0] != null)
      mb1 = buses[0];
    else 
      println("bus 0 null");
    if (mb1 != null)
      mb1.sendNoteOn(1, 60, 127);
    else
      println("mb1 null");
  } 
  
}
