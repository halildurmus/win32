// IEnumSpellingError.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_EnumSpellingError = '';

/// @nodoc
const IID_IEnumSpellingError = '{803E3BD4-2828-4410-8290-418D1D73C762}';

typedef _Next_Native = Int32 Function(Pointer obj, Pointer<Pointer> value);
typedef _Next_Dart = int Function(Pointer obj, Pointer<Pointer> value);

/// {@category Interface}
/// {@category com}
class IEnumSpellingError extends IUnknown {
  // vtable begins at 3, ends at 3

  IEnumSpellingError(Pointer<COMObject> ptr) : super(ptr);

  int Next(Pointer<Pointer> value) =>
      Pointer<NativeFunction<_Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Next_Dart>()(ptr.ref.lpVtbl, value);
}

/// {@category com}
class EnumSpellingError extends IEnumSpellingError {
  EnumSpellingError(Pointer<COMObject> ptr) : super(ptr);

  factory EnumSpellingError.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EnumSpellingError);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEnumSpellingError);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EnumSpellingError(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
