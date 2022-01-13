// ISWbemNamedValue.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IDispatch.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISWbemNamedValue = '{76A64164-CB41-11D1-8B02-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemNamedValue extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ISWbemNamedValue(Pointer<COMObject> ptr) : super(ptr);

  int get_Value(
    Pointer<VARIANT> varValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> varValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> varValue,
          )>()(
        ptr.ref.lpVtbl,
        varValue,
      );

  int put_Value(
    Pointer<VARIANT> varValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> varValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> varValue,
          )>()(
        ptr.ref.lpVtbl,
        varValue,
      );

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_SWbemNamedValue = '{04B83D60-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemNamedValue extends ISWbemNamedValue {
  SWbemNamedValue(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemNamedValue.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemNamedValue);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemNamedValue);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemNamedValue(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
