import 'piece.dart';
import 'pieceset.dart';
import 'package:win32/win32.dart';

void main() {
  final ps = PieceSet();

  for (var i = 0; i < ps.pieces.length; i++) {
    for (var j = 0; j < ps.pieces[i].length; j++) {
      print('piece[$i][$j]:\n${ps.pieces[i][j]}');
    }
  }
}
