#include <Keyboard.h>

/*Schalter Belegung:
Pin 2: Zugschalter
Pin 3: Kippschalter
Pin 4: Doppelwipe1
Pin 5: Doppelwipe2
Pin 6: Taster
Pin 7: Wippe
Pin 8: Sicherheitsschalter

KEY_LEFT_CTRL,KEY_LEFT_SHIFT,KEY_LEFT_ALT,KEY_LEFT_GUI,KEY_RIGHT_CTRL,KEY_RIGHT_SHIFT,KEY_RIGHT_ALT,KEY_RIGHT_GUI,
KEY_UP_ARROW,KEY_DOWN_ARROW,KEY_LEFT_ARROW,KEY_RIGHT_ARROW,KEY_BACKSPACE,KEY_TAB,KEY_RETURN,KEY_ESC,
KEY_INSERT,KEY_DELETE,KEY_PAGE_UP,KEY_PAGE_DOWN,KEY_HOME,KEY_END,KEY_CAPS_LOCK,
KEY_F1,KEY_F2,KEY_F3,KEY_F4,KEY_F5,KEY_F6,KEY_F7,KEY_F8,KEY_F9,KEY_F10,KEY_F11,KEY_F12
*/

//Tasten fuer Elite:Dangerous belegt
const char Sicherheitsschalter = KEY_DELETE; //Silent Running
const char Wippe = KEY_INSERT; //Aussenbeleuchtung
const char Taster = 'j';  //Frameshift
const char Doppelwipe1 = KEY_PAGE_UP;  //Sensor Zoom +
const char Doppelwipe2 = KEY_PAGE_DOWN;  //Sensor Zoom -
const char Kippschalter = KEY_TAB;  //Boost
const char Zugschalter = KEY_ESC;  //Ende Spiel/Chat


void setup() {
pinMode(2, INPUT_PULLUP);
pinMode(3, INPUT_PULLUP);
pinMode(4, INPUT_PULLUP);
pinMode(5, INPUT_PULLUP);
pinMode(6, INPUT_PULLUP);
pinMode(7, INPUT_PULLUP);
pinMode(8, INPUT_PULLUP);
Keyboard.begin();
} //setup

void loop() {
if (digitalRead(2) == LOW) {
Keyboard.print(Zugschalter);
delay(1500);
}

if (digitalRead(3) == LOW) {
Keyboard.print(Kippschalter);
delay(5000);
}

if (digitalRead(4) == LOW) {
Keyboard.print(Doppelwipe1);
delay(500);
}

if (digitalRead(5) == LOW) {
Keyboard.print(Doppelwipe2);
delay(500);
}

if (digitalRead(6) == LOW) {
Keyboard.print(Taster);
delay(500);
}

if (digitalRead(7) == LOW) {
Keyboard.print(Wippe);
delay(500);
}

if (digitalRead(8) == LOW) {
Keyboard.print(Sicherheitsschalter);
delay(500);
}

delay(100); //delay every loop
} //loop
