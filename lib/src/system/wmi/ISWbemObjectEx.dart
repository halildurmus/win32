// ISWbemObjectEx.dart

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

import '../../system/wmi/ISWbemObject.dart';
import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/ISWbemPropertySet.dart';
import '../../system/wmi/structs.g.dart';

/// @nodoc
const IID_ISWbemObjectEx = '{269AD56A-8A67-4129-BC8C-0506DCFE9880}';

/// {@category Interface}
/// {@category com}
class ISWbemObjectEx extends ISWbemObject {
  // vtable begins at 32, is 4 entries long.
  ISWbemObjectEx(Pointer<COMObject> ptr) : super(ptr);

  int Refresh_(
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        objWbemNamedValueSet,
      );

  Pointer<COMObject> get SystemProperties_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemPropertySet,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetText_(
    int iObjectTextFormat,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<Utf16>> bsText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iObjectTextFormat,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<Utf16>> bsText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iObjectTextFormat,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<Utf16>> bsText,
          )>()(
        ptr.ref.lpVtbl,
        iObjectTextFormat,
        iFlags,
        objWbemNamedValueSet,
        bsText,
      );

  int SetFromText_(
    Pointer<Utf16> bsText,
    int iObjectTextFormat,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bsText,
            Int32 iObjectTextFormat,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bsText,
            int iObjectTextFormat,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>()(
        ptr.ref.lpVtbl,
        bsText,
        iObjectTextFormat,
        iFlags,
        objWbemNamedValueSet,
      );
}

/// @nodoc
const CLSID_SWbemObjectEx = '{D6BDAFB2-9435-491F-BB87-6AA0F0BC31A2}';

/// {@category com}
class SWbemObjectEx extends ISWbemObjectEx {
  SWbemObjectEx(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemObjectEx.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemObjectEx);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemObjectEx);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemObjectEx(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
