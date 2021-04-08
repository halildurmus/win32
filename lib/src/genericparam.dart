import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'mixins/customattributes_mixin.dart';

class GenericParam extends TokenObject with CustomAttributesMixin {
  final String paramName;
  final int paramSequence;
  final int attributes;
  final int ownerToken;

  GenericParam(IMetaDataImport2 reader, int token, this.paramName,
      this.paramSequence, this.attributes, this.ownerToken)
      : super(reader, token);

  factory GenericParam.fromToken(IMetaDataImport2 reader, int token) {
    final pulParamSeq = calloc<Uint32>();
    final pdwParamFlags = calloc<Uint32>();
    final ptOwner = calloc<Uint32>();
    final reserved = calloc<Uint32>();
    final wzName = calloc<Uint16>(256).cast<Utf16>();
    final pchName = calloc<Uint32>();

    try {
      final hr = reader.GetGenericParamProps(token, pulParamSeq, pdwParamFlags,
          ptOwner, reserved, wzName, 256, pchName);

      if (SUCCEEDED(hr)) {
        return GenericParam(reader, token, wzName.toDartString(),
            pulParamSeq.value, pdwParamFlags.value, ptOwner.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pulParamSeq);
      calloc.free(pdwParamFlags);
      calloc.free(ptOwner);
      calloc.free(reserved);
      calloc.free(wzName);
      calloc.free(pchName);
    }
  }
}
