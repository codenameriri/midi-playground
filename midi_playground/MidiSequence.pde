import themidibus.*;

interface MidiSequence {
  MidiBus[] buses = new MidiBus[3];
  void playSequence();
}

