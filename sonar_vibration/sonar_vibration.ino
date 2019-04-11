#define sonarPin 10
#define buzzPin 8
#define vibrPin 6

#define distMin 10
#define distMax 200
#define delayMin 0
#define delayMax 2000

int currentDelay = 0;
int lastTime = 0;

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
  
  int del = map(constrainedCm, distMin, distMax, delayMin, delayMax);
  
  Serial.print(" delay: ");
  Serial.print(del);
  Serial.print("\n");

  int currentTime = millis();
  currentDelay += currentTime - lastTime;
  lastTime = currentTime;

  analogWrite(vibrPin, 0);
  if (currentDelay >= del){
    analogWrite(vibrPin, 153);
    tone(buzzPin, 440, 50);
    currentDelay = 0;
  }
}
