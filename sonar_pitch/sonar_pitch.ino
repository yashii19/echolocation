#define sonarPin 10
#define buzzPin 8

#define distMin 10
#define distMax 200
#define freqMin 20
#define freqMax 2000

void setup() {
  Serial.begin(9600);
  pinMode(buzzPin, OUTPUT);
}

// Distance du sonar en cm
int sonarCm() {
  pinMode(sonarPin, INPUT);
  float pulse = pulseIn(sonarPin, HIGH);
  float inches = pulse / 147; // 147 uS per inch
  float cm = inches * 2.54; // 2,54 cm per inch

  return (int) cm;
}

void loop() {
  int cm = sonarCm();
  Serial.print("cm: ");
  Serial.print(cm);

  int constrainedCm = constrain(cm, distMin, distMax);
  
  int pitch = map(constrainedCm, distMin, distMax, freqMax, freqMin);
  
  Serial.print(" pitch: ");
  Serial.print(pitch);
  Serial.print("\n");
  
  tone(buzzPin, pitch, 50);
}
