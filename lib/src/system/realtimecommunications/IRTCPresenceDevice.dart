// IRTCPresenceDevice.dart

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

import '../../system/com/IUnknown.dart';
import '../../system/realtimecommunications/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCPresenceDevice = '{BC6A90DD-AD9A-48DA-9B0C-2515E38521AD}';

/// {@category Interface}
/// {@category com}
class IRTCPresenceDevice extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IRTCPresenceDevice(Pointer<COMObject> ptr) : super(ptr);

  int get Status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penStatus,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Notes {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNotes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNotes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_PresenceProperty(
    int enProperty,
    Pointer<Pointer<Utf16>> pbstrProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enProperty,
            Pointer<Pointer<Utf16>> pbstrProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enProperty,
            Pointer<Pointer<Utf16>> pbstrProperty,
          )>()(
        ptr.ref.lpVtbl,
        enProperty,
        pbstrProperty,
      );

  int GetPresenceData(
    Pointer<Pointer<Utf16>> pbstrNamespace,
    Pointer<Pointer<Utf16>> pbstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNamespace,
            Pointer<Pointer<Utf16>> pbstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNamespace,
            Pointer<Pointer<Utf16>> pbstrData,
          )>()(
        ptr.ref.lpVtbl,
        pbstrNamespace,
        pbstrData,
      );
}
