class Point {
  int x;
  int y;

  Point(this.x, this.y);
}

class Size {
  int width;
  int height;

  Size(this.width, this.height);
}

// Scale helper to convert logical scaler values to physical using passed in
// scale factor
int Scale(int source, double scale_factor) => (source * scale_factor).floor();
