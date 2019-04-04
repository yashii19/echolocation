
///// SONAR FUNCTION AS SENSOR /////

int cmValue() {
  pinMode(sonarPin, INPUT);
  float pulse = pulseIn(sonarPin, HIGH);
  float inches = pulse / 147; // 147 uS per inch
  float cm = inches * 2.54; // 2,54 cm per inch

  return (int) cm;
}
