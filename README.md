midi-playground
===============

Project for the group to mess around with MIDI in Processing

Setup info can be found here: https://github.com/bencentra/processing-midi

Creating a MIDI Sequence
------------------------

**Option 1:** Create a class that implements the "MidiSequence" interface

1) Create a new concrete class "MidiSequence_*" (* being some unique string)    
2) Follow the example "MidiSequence_B1" to set up the instance vars/constructor    
3) Overwrite the `playSequence` function with your own code    

An array of available MIDI buses are passed into the MidiSequence_* object when it is initialized.

**Option 2:** Manually address the box in the `mousePressed()` function

1) Add an if/else statement within `mousePressed()` for the location of your box    
Either...    
2) ...create a separate function for your MIDI sequence and call it within the if/else block    
...or...    
3) ...just put your sequence code right in the if/else block