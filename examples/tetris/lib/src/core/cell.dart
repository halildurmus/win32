class Cell {
  const Cell([this.x = 0, this.y = 0]);

  final int x;
  final int y;

  @override
  String toString() => 'Cell($x, $y)';
}
