import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'mixins/customattributes_mixin.dart';
import 'win32.dart';

class GenericParam extends TokenObject with CustomAttributesMixin {
  final String paramName;
  final int paramSequence;
  final int attributes;
  final int ownerToken;

  GenericParam(IMetaDataImport2 reader, int token, this.paramName,
      this.paramSequence, this.attributes, this.ownerToken)
      : super(reader, token);

  factory GenericParam.fromToken(IMetaDataImport2 reader, int token) {
    final pulParamSeq = calloc<ULONG>();
    final pdwParamFlags = calloc<DWORD>();
    final ptOwner = calloc<mdToken>();
    final reserved = calloc<DWORD>();
    final wzName = stralloc(MAX_STRING_SIZE);
    final pchName = calloc<ULONG>();

    try {
      final hr = reader.GetGenericParamProps(token, pulParamSeq, pdwParamFlags,
          ptOwner, reserved, wzName, MAX_STRING_SIZE, pchName);

      if (SUCCEEDED(hr)) {
        return GenericParam(reader, token, wzName.toDartString(),
            pulParamSeq.value, pdwParamFlags.value, ptOwner.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pulParamSeq);
      free(pdwParamFlags);
      free(ptOwner);
      free(reserved);
      free(wzName);
      free(pchName);
    }
  }
}
