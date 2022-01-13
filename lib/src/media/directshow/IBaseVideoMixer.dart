// IBaseVideoMixer.dart

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
const IID_IBaseVideoMixer = 'null';

/// {@category Interface}
/// {@category com}
class IBaseVideoMixer extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IBaseVideoMixer(Pointer<COMObject> ptr) : super(ptr);

  int SetLeadPin(
    int iPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iPin,
          )>()(
        ptr.ref.lpVtbl,
        iPin,
      );

  int GetLeadPin(
    Pointer<Int32> piPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> piPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> piPin,
          )>()(
        ptr.ref.lpVtbl,
        piPin,
      );

  int GetInputPinCount(
    Pointer<Int32> piPinCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> piPinCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> piPinCount,
          )>()(
        ptr.ref.lpVtbl,
        piPinCount,
      );

  int IsUsingClock(
    Pointer<Int32> pbValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbValue,
          )>()(
        ptr.ref.lpVtbl,
        pbValue,
      );

  int SetUsingClock(
    int bValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bValue,
          )>()(
        ptr.ref.lpVtbl,
        bValue,
      );

  int GetClockPeriod(
    Pointer<Int32> pbValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbValue,
          )>()(
        ptr.ref.lpVtbl,
        pbValue,
      );

  int SetClockPeriod(
    int bValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bValue,
          )>()(
        ptr.ref.lpVtbl,
        bValue,
      );
}
