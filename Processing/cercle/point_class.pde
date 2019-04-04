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

      if (
        draw_hits &&
        nextX >= rectX &&
        nextX <= rectX + rectWidth &&
        position.y >= rectY &&
        position.y <= rectY + rectHeight
        ) {
        edgePointsX.append((int) position.x);
        edgePointsY.append((int) position.y);
      }
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

      if (
        draw_hits &&
        position.x >= rectX &&
        position.x <= rectX + rectWidth &&
        nextY >= rectY &&
        nextY <= rectY + rectHeight
        ) {
        edgePointsX.append((int) position.x);
        edgePointsY.append((int) position.y);
      }
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
