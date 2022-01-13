// ITForwardInformation.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITForwardInformation = '{449F659E-88A3-11D1-BB5D-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITForwardInformation extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ITForwardInformation(Pointer<COMObject> ptr) : super(ptr);

  set NumRingsNoAnswer(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lNumRings,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lNumRings,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get NumRingsNoAnswer {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plNumRings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plNumRings,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetForwardType(
    int ForwardType,
    Pointer<Utf16> pDestAddress,
    Pointer<Utf16> pCallerAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ForwardType,
            Pointer<Utf16> pDestAddress,
            Pointer<Utf16> pCallerAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ForwardType,
            Pointer<Utf16> pDestAddress,
            Pointer<Utf16> pCallerAddress,
          )>()(
        ptr.ref.lpVtbl,
        ForwardType,
        pDestAddress,
        pCallerAddress,
      );

  int get_ForwardTypeDestination(
    int ForwardType,
    Pointer<Pointer<Utf16>> ppDestAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ForwardType,
            Pointer<Pointer<Utf16>> ppDestAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ForwardType,
            Pointer<Pointer<Utf16>> ppDestAddress,
          )>()(
        ptr.ref.lpVtbl,
        ForwardType,
        ppDestAddress,
      );

  int get_ForwardTypeCaller(
    int Forwardtype,
    Pointer<Pointer<Utf16>> ppCallerAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Forwardtype,
            Pointer<Pointer<Utf16>> ppCallerAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Forwardtype,
            Pointer<Pointer<Utf16>> ppCallerAddress,
          )>()(
        ptr.ref.lpVtbl,
        Forwardtype,
        ppCallerAddress,
      );

  int GetForwardType(
    int ForwardType,
    Pointer<Pointer<Utf16>> ppDestinationAddress,
    Pointer<Pointer<Utf16>> ppCallerAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ForwardType,
            Pointer<Pointer<Utf16>> ppDestinationAddress,
            Pointer<Pointer<Utf16>> ppCallerAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ForwardType,
            Pointer<Pointer<Utf16>> ppDestinationAddress,
            Pointer<Pointer<Utf16>> ppCallerAddress,
          )>()(
        ptr.ref.lpVtbl,
        ForwardType,
        ppDestinationAddress,
        ppCallerAddress,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
