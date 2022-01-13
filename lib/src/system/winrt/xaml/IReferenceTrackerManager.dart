// IReferenceTrackerManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/winrt/xaml/IReferenceTrackerHost.dart';

/// @nodoc
const IID_IReferenceTrackerManager = '{3CF184B4-7CCB-4DDA-8455-7E6CE99A3298}';

/// {@category Interface}
/// {@category com}
class IReferenceTrackerManager extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IReferenceTrackerManager(Pointer<COMObject> ptr) : super(ptr);

  int ReferenceTrackingStarted() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int FindTrackerTargetsCompleted(
    int findFailed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 findFailed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int findFailed,
          )>()(
        ptr.ref.lpVtbl,
        findFailed,
      );

  int ReferenceTrackingCompleted() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetReferenceTrackerHost(
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
