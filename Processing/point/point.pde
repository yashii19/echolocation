// Configuration

float speed = 150;

int nbPoints = 100;

int rectX = 150, rectY = 120, rectWidth = 400, rectHeight = 180;

int startX = -1, startY = -1;

PVector position = new PVector();
PVector velocity = new PVector();

int startTime;

void setup() {
  size(800, 600);
}

void draw() {
  background(200);

  fill(255);
  rect(rectX, rectY, rectWidth, rectHeight);


  if (position.x > rectX && position.x < rectX + rectWidth && position.y > rectY && position.y < rectY + rectHeight) {
    velocity.y = -velocity.y;
    velocity.x = -velocity.x;
  }

  position.x += velocity.x/60.0;
  position.y += velocity.y/60.0;


  if (dist(position.x, position.y, startX, startY) <= .01) {
    position = new PVector();
    velocity = new PVector();

    int timeDiff = millis() - startTime;
    println("Delai de " + timeDiff + "ms");
    println("Distance de " + timeDiff/1000.0 * speed / 2 + " pixels");
  }

  fill(0, 0, 255);
  circle(startX, startY, 5);

  if (velocity.x != 0 || velocity.y != 0) {
    text((millis()-startTime)/1000.0, startX, startY+20);
  }
}

// Quand on clique, on enregistre la position de la souris dans les variables startx et starty
void mousePressed() {
  startX = mouseX;
  startY = mouseY;
}

void mouseReleased() {
  position = new PVector(startX, startY);

  velocity = new PVector(mouseX - startX, mouseY - startY);
  velocity.setMag(speed);

  startTime = millis();
}
