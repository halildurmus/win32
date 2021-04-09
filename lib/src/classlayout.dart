import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'win32.dart';

class FieldOffset {
  final int fieldToken;
  final int offset;

  const FieldOffset(this.fieldToken, this.offset);
}

/// Layout information for the class referenced by a specified token.
class ClassLayout {
  final IMetaDataImport2 reader;
  final int token;

  /// The pack size of the class.
  ///
  /// If specified, this contains one of the values 1, 2, 4, 8, or 16,
  /// representing the packing alignment of the class. If null, no packing
  /// alignment is specified.
  int? packingAlignment;

  /// The size in bytes of the class represented.
  int? minimumSize;

  /// The array of field offsets, for manually-aligned structs.
  List<FieldOffset>? fieldOffsets;

  ClassLayout(this.reader, this.token) {
    final pdwPackSize = calloc<DWORD>();
    final rgFieldOffset = calloc<COR_FIELD_OFFSET>(256);
    final pcFieldOffset = calloc<ULONG>();
    final pulClassSize = calloc<ULONG>();

    try {
      final hr = reader.GetClassLayout(
          token, pdwPackSize, rgFieldOffset, 256, pcFieldOffset, pulClassSize);
      if (SUCCEEDED(hr)) {
        packingAlignment = pdwPackSize.value;
        minimumSize = pulClassSize.value;
        fieldOffsets = <FieldOffset>[];

        final offsetCount = pcFieldOffset.value;
        for (var i = 0; i < offsetCount; i++) {
          final offset = rgFieldOffset.elementAt(i).ref;
          fieldOffsets?.add(FieldOffset(offset.ridOfField, offset.ulOffset));
        }
      } else if (hr == CLDB_E_RECORD_NOTFOUND) {
        // No class layout record, so leave the fields null
        return;
      } else {
        // Some other failure
        throw WindowsException(hr);
      }
    } finally {
      free(pulClassSize);
      free(pcFieldOffset);
      free(rgFieldOffset);
      free(pdwPackSize);
    }
  }
}
