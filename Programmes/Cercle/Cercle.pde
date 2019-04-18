// Configuration

int window_width = 800;

int window_height = 600;

float speed = 200;

int nbPoints = 1000;

int absorption = 40;

int steps_per_second = 200;

boolean draw_hits = true;


// Variables globales

Point[] points;

int rectX, rectY, rectWidth, rectHeight;

IntList edgePointsX;
IntList edgePointsY;

void reset() {
  points = new Point[nbPoints];

  rectWidth = (int) random(100, window_width/2);
  rectHeight = (int) random(100, window_height/2);
  rectX = (int) random(50, window_width - 50) - rectWidth/2;
  rectY = (int) random(50, window_height - 50) - rectHeight/2;

  edgePointsX = new IntList();
  edgePointsY = new IntList();

  println(rectX);
  println(rectY);
  println(rectWidth);
  println(rectHeight);
}

void setup() {
  size(800, 600);
  background(0);
  frameRate(steps_per_second);

  reset();
}

void draw() {
  background(0);

  for (Point point : points) {
    if (point == null) continue;

    point.step(1.0/steps_per_second);
    point.draw();
  }

  if (draw_hits) {
    for (int i = 0; i < edgePointsX.size(); i++) {
      fill(255, 0, 0);
      circle(edgePointsX.get(i), edgePointsY.get(i), 2.0);
    }
  }
}

// Quand on clique, on enregistre la position de la souris dans les variables startx et starty
void mousePressed() {
  for (int i = 0; i < points.length; i++){
    points[i] = new Point(mouseX, mouseY, speed * cos(float(i)/nbPoints*PI*2), speed * sin(float(i)/nbPoints*PI*2));
  }
}

void keyPressed(){
 if (key == 'r'){
   reset();
 }
}
