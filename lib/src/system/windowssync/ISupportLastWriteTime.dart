// ISupportLastWriteTime.dart

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
const IID_ISupportLastWriteTime = '{EADF816F-D0BD-43CA-8F40-5ACDC6C06F7A}';

/// {@category Interface}
/// {@category com}
class ISupportLastWriteTime extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISupportLastWriteTime(Pointer<COMObject> ptr) : super(ptr);

  int GetItemChangeTime(
    Pointer<Uint8> pbItemId,
    Pointer<Uint64> pullTimestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint64> pullTimestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint64> pullTimestamp,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pullTimestamp,
      );

  int GetChangeUnitChangeTime(
    Pointer<Uint8> pbItemId,
    Pointer<Uint8> pbChangeUnitId,
    Pointer<Uint64> pullTimestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint64> pullTimestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint64> pullTimestamp,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pbChangeUnitId,
        pullTimestamp,
      );
}
