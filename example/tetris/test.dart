import 'dart:io';

import 'piece.dart';
import 'pieceset.dart';
import 'package:win32/win32.dart';

void main() {
  final ps = PieceSet();
  var hashes = [];
  // print('constructed: ${ps.pieces[0][0]}');

  for (var i = 0; i < ps.pieces.length; i++) {
    for (var j = 0; j < ps.pieces[i].length; j++) {
      if (hashes.contains(ps.pieces[i][j].hashCode)) {
        print('duplicate');
        exit(1);
      } else {
        hashes.add(ps.pieces[i][j].hashCode);
      }

      print(ps.pieces[i][j]);
    }
  }
  print(hashes.length);
}
