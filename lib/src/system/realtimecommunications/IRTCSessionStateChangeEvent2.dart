// IRTCSessionStateChangeEvent2.dart

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

import '../../system/realtimecommunications/IRTCSessionStateChangeEvent.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/structs.g.dart';

/// @nodoc
const IID_IRTCSessionStateChangeEvent2 =
    '{4F933171-6F95-4880-80D9-2EC8D495D261}';

/// {@category Interface}
/// {@category com}
class IRTCSessionStateChangeEvent2 extends IRTCSessionStateChangeEvent {
  // vtable begins at 11, is 4 entries long.
  IRTCSessionStateChangeEvent2(Pointer<COMObject> ptr) : super(ptr);

  int get MediaTypes {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMediaTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMediaTypes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_RemotePreferredSecurityLevel(
    int enSecurityType,
    Pointer<Int32> penSecurityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSecurityType,
            Pointer<Int32> penSecurityLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSecurityType,
            Pointer<Int32> penSecurityLevel,
          )>()(
        ptr.ref.lpVtbl,
        enSecurityType,
        penSecurityLevel,
      );

  int get IsForked {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfIsForked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfIsForked,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetRemoteSessionDescription(
    Pointer<Pointer<Utf16>> pbstrContentType,
    Pointer<Pointer<Utf16>> pbstrSessionDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrContentType,
            Pointer<Pointer<Utf16>> pbstrSessionDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrContentType,
            Pointer<Pointer<Utf16>> pbstrSessionDescription,
          )>()(
        ptr.ref.lpVtbl,
        pbstrContentType,
        pbstrSessionDescription,
      );
}
