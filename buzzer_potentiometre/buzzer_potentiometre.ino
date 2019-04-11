#define potPin A0
#define buzzPin 8

#define potMin 0
#define potMax 1023
#define freqMin 20
#define freqMax 2000

void setup() {
  Serial.begin(9600);
  pinMode(buzzPin, OUTPUT);
}

void loop() {
  int potValue = analogRead(potPin);
  Serial.println(potValue);

  int pitch = map(potValue, potMin, potMax, freqMin, freqMax);

  tone(buzzPin, pitch, 50);
  //delay(50);
}
