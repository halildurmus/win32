// IReferenceClockTimerControl.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IReferenceClockTimerControl =
    '{EBEC459C-2ECA-4D42-A8AF-30DF557614B8}';

/// {@category Interface}
/// {@category com}
class IReferenceClockTimerControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IReferenceClockTimerControl(Pointer<COMObject> ptr) : super(ptr);

  int SetDefaultTimerResolution(
    int timerResolution,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 timerResolution,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int timerResolution,
          )>()(
        ptr.ref.lpVtbl,
        timerResolution,
      );

  int GetDefaultTimerResolution(
    Pointer<Int64> pTimerResolution,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTimerResolution,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTimerResolution,
          )>()(
        ptr.ref.lpVtbl,
        pTimerResolution,
      );
}
