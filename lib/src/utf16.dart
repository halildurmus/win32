// utf16.dart

// Extension methods to fill some gaps in the default Dart FFI implementation
// of Utf16

import 'dart:ffi';

import 'package:ffi/ffi.dart';

extension Utf16Conversion on Pointer<Utf16> {
  String unpackString(int maxLength) {
    final pathData = cast<Uint16>().asTypedList(maxLength);

    var stringLength = pathData.indexOf(0);
    if (stringLength == -1) {
      stringLength = maxLength;
    }

    return String.fromCharCodes(pathData, 0, stringLength);
  }

  // Assumes an array of null-terminated strings, with the final
  // element terminated with a second null.
  List<String> unpackStringArray(int maxLength) {
    final results = <String>[];
    final buf = StringBuffer();
    final ptr = Pointer<Uint16>.fromAddress(address);

    for (var v = 0; v < maxLength; v++) {
      final charCode = ptr.elementAt(v).value;
      if (charCode != 0) {
        buf.write(String.fromCharCode(charCode));
      } else {
        results.add(buf.toString());
        if (ptr.elementAt(v + 1).value == 0) {
          return results;
        } else {
          buf.clear();
        }
      }
    }
    // If array don't terminate before maxLength is are reached,
    // just return the complete results thus far
    return results;
  }
}
