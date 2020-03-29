import 'piece.dart';
import 'package:win32/win32.dart';

void main() {
  var apt = List<Point>.generate(4, (i) => Point());

  // 4, Z piece, blue
  apt[0].x = 1;
  apt[0].y = 0;
  apt[1].x = 2;
  apt[1].y = 0;
  apt[2].x = 0;
  apt[2].y = 1;
  apt[3].x = 1;
  apt[3].y = 1;

  final piece = Piece(4, 0, RGB(100, 180, 255), apt);
  print(piece);

  assert(false);
}
