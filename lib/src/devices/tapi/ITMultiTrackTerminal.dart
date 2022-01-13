// ITMultiTrackTerminal.dart

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
import '../../devices/tapi/IEnumTerminal.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITTerminal.dart';

/// @nodoc
const IID_ITMultiTrackTerminal = '{FE040091-ADE8-4072-95C9-BF7DE8C54B44}';

/// {@category Interface}
/// {@category com}
class ITMultiTrackTerminal extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ITMultiTrackTerminal(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get TrackTerminals {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateTrackTerminals(
    Pointer<Pointer<COMObject>> ppEnumTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumTerminal,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumTerminal,
      );

  int CreateTrackTerminal(
    int MediaType,
    int TerminalDirection,
    Pointer<Pointer<COMObject>> ppTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MediaType,
            Int32 TerminalDirection,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MediaType,
            int TerminalDirection,
            Pointer<Pointer<COMObject>> ppTerminal,
          )>()(
        ptr.ref.lpVtbl,
        MediaType,
        TerminalDirection,
        ppTerminal,
      );

  int get MediaTypesInUse {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMediaTypesInUse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMediaTypesInUse,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get DirectionsInUse {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plDirectionsInUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plDirectionsInUsed,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int RemoveTrackTerminal(
    Pointer<COMObject> pTrackTerminalToRemove,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTrackTerminalToRemove,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTrackTerminalToRemove,
          )>()(
        ptr.ref.lpVtbl,
        pTrackTerminalToRemove,
      );
}
