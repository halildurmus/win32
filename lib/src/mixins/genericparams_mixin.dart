import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../base.dart';
import '../genericparam.dart';

mixin GenericParamsMixin on TokenObject {
  List<GenericParam> get genericParams {
    final params = <GenericParam>[];

    final phEnum = calloc<IntPtr>();
    final rGenericParams = calloc<Uint32>();
    final pcGenericParams = calloc<Uint32>();

    try {
      var hr = reader.EnumGenericParams(
          phEnum, token, rGenericParams, 1, pcGenericParams);
      while (hr == S_OK) {
        final token = rGenericParams.value;

        params.add(GenericParam.fromToken(reader, token));
        hr = reader.EnumMethods(
            phEnum, token, rGenericParams, 1, pcGenericParams);
      }
      return params;
    } finally {
      reader.CloseEnum(phEnum.value);
      calloc.free(phEnum);
      calloc.free(rGenericParams);
      calloc.free(pcGenericParams);
    }
  }
}
