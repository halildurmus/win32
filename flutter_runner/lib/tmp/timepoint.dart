import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class TimePoint {
  static int _frequency = 0;

  int get frequency {
    if (_frequency == 0) {
      final frequencyPtr = malloc<Int64>();

      try {
        QueryPerformanceFrequency(frequencyPtr);

        return _frequency = frequencyPtr.value;
      } finally {
        free(frequencyPtr);
      }
    } else {
      return _frequency;
    }
  }

  int get now => 0;
}
