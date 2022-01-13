// ITCallInfo.dart

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
import '../../devices/tapi/ITAddress.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITCallHub.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITCallInfo = '{350F85D1-1227-11D3-83D4-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITCallInfo extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  ITCallInfo(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Address {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAddress,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CallState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCallState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCallState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Privilege {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPrivilege,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPrivilege,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get CallHub {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCallHub,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCallHub,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_CallInfoLong(
    int CallInfoLong,
    Pointer<Int32> plCallInfoLongVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoLong,
            Pointer<Int32> plCallInfoLongVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoLong,
            Pointer<Int32> plCallInfoLongVal,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoLong,
        plCallInfoLongVal,
      );

  int put_CallInfoLong(
    int CallInfoLong,
    int lCallInfoLongVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoLong,
            Int32 lCallInfoLongVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoLong,
            int lCallInfoLongVal,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoLong,
        lCallInfoLongVal,
      );

  int get_CallInfoString(
    int CallInfoString,
    Pointer<Pointer<Utf16>> ppCallInfoString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoString,
            Pointer<Pointer<Utf16>> ppCallInfoString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoString,
            Pointer<Pointer<Utf16>> ppCallInfoString,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoString,
        ppCallInfoString,
      );

  int put_CallInfoString(
    int CallInfoString,
    Pointer<Utf16> pCallInfoString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoString,
            Pointer<Utf16> pCallInfoString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoString,
            Pointer<Utf16> pCallInfoString,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoString,
        pCallInfoString,
      );

  int get_CallInfoBuffer(
    int CallInfoBuffer,
    Pointer<VARIANT> ppCallInfoBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoBuffer,
            Pointer<VARIANT> ppCallInfoBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoBuffer,
            Pointer<VARIANT> ppCallInfoBuffer,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoBuffer,
        ppCallInfoBuffer,
      );

  int put_CallInfoBuffer(
    int CallInfoBuffer,
    VARIANT pCallInfoBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoBuffer,
            VARIANT pCallInfoBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoBuffer,
            VARIANT pCallInfoBuffer,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoBuffer,
        pCallInfoBuffer,
      );

  int GetCallInfoBuffer(
    int CallInfoBuffer,
    Pointer<Uint32> pdwSize,
    Pointer<Pointer<Uint8>> ppCallInfoBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoBuffer,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppCallInfoBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoBuffer,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppCallInfoBuffer,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoBuffer,
        pdwSize,
        ppCallInfoBuffer,
      );

  int SetCallInfoBuffer(
    int CallInfoBuffer,
    int dwSize,
    Pointer<Uint8> pCallInfoBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CallInfoBuffer,
            Uint32 dwSize,
            Pointer<Uint8> pCallInfoBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CallInfoBuffer,
            int dwSize,
            Pointer<Uint8> pCallInfoBuffer,
          )>()(
        ptr.ref.lpVtbl,
        CallInfoBuffer,
        dwSize,
        pCallInfoBuffer,
      );

  int ReleaseUserUserInfo() => ptr.ref.lpVtbl.value
          .elementAt(19)
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
