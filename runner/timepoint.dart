import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class TimePoint {
  static int _frequency;

  int get frequency {
    if (_frequency == null) {
      final frequencyPtr = allocate<Int64>();

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

  int get now {
    return 0;
  }
}
