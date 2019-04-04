#include <sensorShieldLib.h>
SensorShield board;

int sonarPin = 10;  // sonar pin
int ledPin = 11;    // led pin

int minDist = 10; // distance min du capteur
int maxDist = 100; // distance max du capteur

void setup() {
  // initialises and start Serial with 9600 baudrate
  board.init();
  
  // add sonar functions as sensors to sensorShield
  board.addSensor("capteurSONAR", cmValue);

  // LED display
  pinMode(ledPin, OUTPUT);
}

int cmValue() {
  pinMode(sonarPin, INPUT);
  float pulse = pulseIn(sonarPin, HIGH);
  float inches = pulse / 147; // 147 uS per inch
  float cm = inches * 2.54; // 2,54 cm per inch

  return (int) cm;
}

int cmToLum(int cm){
  // on limite la distance aux bornes definies plus haut avec constrain()
  int constrainedCm = constrain(cm, minDist, maxDist);
  // on associe la distance a la luminosite avec map()
  return map(constrainedCm, minDist, maxDist, 255, 0);
}

void loop() {
  // read the value, if there are changes update it and send it through serial
  board.update(); 

  // distance du capteur en cm
  int dist = cmValue();
  // luminosite de la led qui correspond
  int lum = cmToLum(dist);
  analogWrite(ledPin, lum);
}
