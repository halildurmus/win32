// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'md_type.dart';

class WinmdField {
  late String name;
  late int value;
}

/// Represents an enum in the Windows Metadata file
class WinmdEnum extends WinmdType {
  WinmdEnum(WinmdType type)
      : super(type.reader, type.token, type.typeName, type.flags,
            type.baseTypeToken);

  /// Converts an individual field
  WinmdField processFieldToken(int token) {
    final field = WinmdField();

    final ptkTypeDef = allocate<Uint32>();
    final szField = allocate<Uint16>(count: 256).cast<Utf16>();
    final pchField = allocate<Uint32>();
    final pdwAttr = allocate<Uint32>();
    final ppvSigBlob = allocate<Uint8>();
    final pcbSigBlob = allocate<Uint32>();
    final pdwCPlusTypeFlag = allocate<Uint32>();
    final ppValue = allocate<Uint8>();
    final pcchValue = allocate<Uint32>();

    try {
      final hr = reader.GetFieldProps(
          token,
          ptkTypeDef,
          szField,
          256,
          pchField,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pdwCPlusTypeFlag,
          ppValue,
          pcchValue);

      if (SUCCEEDED(hr)) {
        field.name = szField.unpackString(pchField.value);
        print(field.name +
            ppvSigBlob
                .cast<Uint8>()
                .asTypedList(pcbSigBlob.value)
                .map((e) => e.toHexString(8))
                .join(' '));
        field.value = ppValue.cast<Uint32>().value;

        return field;
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptkTypeDef);
      free(szField);
      free(pchField);
      free(pdwAttr);
      free(ppvSigBlob);
      free(pcbSigBlob);
      free(pdwCPlusTypeFlag);
      free(ppValue);
      free(pcchValue);
    }
  }

  /// Get the fields for this enum.
  Map<String?, int?> get fields {
    final fields = <String?, int?>{};
    final fieldTokens = <int>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final rgTypeDefs = allocate<Uint32>();
    final pcTokens = allocate<Uint32>();

    try {
      var hr = reader.EnumFields(phEnum, token, rgTypeDefs, 1, pcTokens);
      while (hr == S_OK) {
        fieldTokens.add(rgTypeDefs.value);
        hr = reader.EnumFields(phEnum, token, rgTypeDefs, 1, pcTokens);
      }

      for (final fieldToken in fieldTokens) {
        final field = processFieldToken(fieldToken);
        fields[field.name] = field.value;
      }

      return fields;
    } finally {
      reader.CloseEnum(phEnum.address);

      free(rgTypeDefs);
      free(pcTokens);

      // dispose phEnum crashes here, so leave it allocated
    }
  }
}
