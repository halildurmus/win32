import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/IMetaDataImport2.dart';
import 'constants.dart';

class FieldOffset {
  final int fieldToken;
  final int offset;

  const FieldOffset(this.fieldToken, this.offset);
}

class ClassLayout {
  final IMetaDataImport2 reader;
  final int token;

  int? packingAlignment;
  int? minimumSize;
  List<FieldOffset>? fieldOffsets;

  ClassLayout(this.reader, this.token) {
    final pdwPackSize = calloc<Uint32>();
    final rgFieldOffset = calloc<COR_FIELD_OFFSET>(256);
    final pcFieldOffset = calloc<Uint32>();
    final pulClassSize = calloc<Uint32>();

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
