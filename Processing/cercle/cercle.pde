// Configuration

float speed = 200;

int nbPoints = 1000;

int absorption = 40;

int fps = 100;

int rectX = 150, rectY = 120, rectWidth = 400, rectHeight = 180;

class Point {
  private int strength = 255;
  private PVector position;
  private PVector velocity;

  public Point(int positionX, int positionY, float velocityX, float velocityY) {
    position = new PVector(positionX, positionY);
    velocity = new PVector(velocityX, velocityY);
  }

  public void step(float seconds) {
    float nextX = position.x + velocity.x * seconds;
    float nextY = position.y + velocity.y * seconds;

    if (
      nextX < 0 ||
      nextX >= width ||
      nextX >= rectX &&
      nextX <= rectX + rectWidth &&
      position.y >= rectY &&
      position.y <= rectY + rectHeight
      ) {
      velocity.x = -velocity.x;

      strength -= absorption;
    }

    if (
      nextY < 0 ||
      nextY >= height ||
      position.x >= rectX &&
      position.x <= rectX + rectWidth &&
      nextY >= rectY &&
      nextY <= rectY + rectHeight
      ) {
      velocity.y = -velocity.y;

      strength -= absorption;
    }

    position.x += velocity.x * seconds;
    position.y += velocity.y * seconds;
  }

  public void draw() {
    if (strength > 0) {
      noStroke();
      fill(strength);
      circle(position.x, position.y, 3);
    }
  }
}



int startX = -1, startY = -1;

int startTime;

Point[] points = new Point[nbPoints];

void setup() {
  size(800, 600);
  frameRate(fps);
}

void draw() {
  background(0);

  for (Point point : points) {
    if (point == null) continue;

    point.step(1.0/fps);
    point.draw();
  }
}

// Quand on clique, on enregistre la position de la souris dans les variables startx et starty
void mousePressed() {  
    points[i] = new Point(mouseX, mouseY, speed * cos(float(i)/nbPoints*PI*2), speed * sin(float(i)/nbPoints*PI*2));
  }

  startX = mouseX;
  startY = mouseY;
  startTime = millis();
}
