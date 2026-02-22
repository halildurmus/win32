import 'dart:math';

import 'piece.dart';

class PieceRandomizer {
  PieceRandomizer([Random? rng]) : _rng = rng ?? Random();

  final Random _rng;
  PieceType? _last;

  void reset() => _last = null;

  PieceType next() {
    var roll = _rng.nextInt(8); // 0–7 (7 = dummy)

    if (roll != 7 && (_last == null || roll != _last!.index)) {
      _last = PieceType.values[roll];
      return _last!;
    }

    roll = _rng.nextInt(7);
    _last = PieceType.values[roll];
    return _last!;
  }
}
