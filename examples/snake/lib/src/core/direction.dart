enum Direction {
  up,
  down,
  left,
  right;

  Direction get opposite => switch (this) {
    .up => .down,
    .down => .up,
    .left => .right,
    .right => .left,
  };

  (int dx, int dy) get delta => switch (this) {
    .up => (0, -1),
    .down => (0, 1),
    .left => (-1, 0),
    .right => (1, 0),
  };
}
