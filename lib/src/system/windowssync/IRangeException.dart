// IRangeException.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRangeException = '{75AE8777-6848-49F7-956C-A3A92F5096E8}';

/// {@category Interface}
/// {@category com}
class IRangeException extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRangeException(Pointer<COMObject> ptr) : super(ptr);

  int GetClosedRangeStart(
    Pointer<Uint8> pbClosedRangeStart,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbClosedRangeStart,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbClosedRangeStart,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbClosedRangeStart,
        pcbIdSize,
      );

  int GetClosedRangeEnd(
    Pointer<Uint8> pbClosedRangeEnd,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbClosedRangeEnd,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbClosedRangeEnd,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbClosedRangeEnd,
        pcbIdSize,
      );

  int GetClockVector(
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppUnk,
      );
}
