class Cell {
  const Cell([this.x = 0, this.y = 0]);

  final int x;
  final int y;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Cell && x == other.x && y == other.y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  String toString() => 'Cell($x, $y)';
}
