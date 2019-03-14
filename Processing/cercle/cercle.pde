class Point {
  private PVector position;
  private PVector velocity;

  public Point(int positionX, int positionY, float velocityX, float velocityY) {
    position = new PVector(positionX, positionY);
    velocity = new PVector(velocityX, velocityY);
  }

  public void step(float seconds) {
    if (position.x > rectX && position.x < rectX + rectWidth) {
      velocity.x = -velocity.x;
    }
    
    if (position.y > rectY && position.y < rectY + rectHeight) {
      velocity.y = -velocity.y;
    }

    position.x += velocity.x * seconds;
    position.y += velocity.y * seconds;
  }

  public void draw() {
    fill(255, 0, 0);
    circle(position.x, position.y, 2);
  }
}

// Configuration

float speed = 150;

int nbPoints = 100;


int rectX = 150, rectY = 120, rectWidth = 400, rectHeight = 180;

int startX = -1, startY = -1;

int startTime;

Point[] points = new Point[nbPoints];

void setup() {
  size(800, 600);
}

void draw() {
  background(200);

  fill(255);
  rect(rectX, rectY, rectWidth, rectHeight);

  for (Point point : points) {
    if (point == null) continue;

    point.step(1.0/frameRate);
    point.draw();
  }



  /*
  if (dist(position.x, position.y, startX, startY) <= .01) {
   position = new PVector();
   velocity = new PVector();
   
   int timeDiff = millis() - startTime;
   println("Delai de " + timeDiff + "ms");
   println("Distance de " + timeDiff/1000.0 * speed / 2 + " pixels");
   }
   */

  fill(0, 0, 255);
  circle(startX, startY, 5);
}

// Quand on clique, on enregistre la position de la souris dans les variables startx et starty
void mousePressed() {  
  for (int i = 0; i < nbPoints; i++) {
    points[i] = new Point(mouseX, mouseY, speed * cos(float(i)/nbPoints*PI/2), speed * sin(float(i)/nbPoints*PI/2));
  }

  startX = mouseX;
  startY = mouseY;
  startTime = millis();
}
