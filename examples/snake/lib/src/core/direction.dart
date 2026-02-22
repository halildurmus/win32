enum Direction {
  up,
  down,
  left,
  right;

  Direction get opposite => switch (this) {
    Direction.up => Direction.down,
    Direction.down => Direction.up,
    Direction.left => Direction.right,
    Direction.right => Direction.left,
  };

  (int dx, int dy) get delta => switch (this) {
    Direction.up => (0, -1),
    Direction.down => (0, 1),
    Direction.left => (-1, 0),
    Direction.right => (1, 0),
  };
}
