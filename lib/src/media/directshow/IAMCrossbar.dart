// IAMCrossbar.dart

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
const IID_IAMCrossbar = '{C6E13380-30AC-11D0-A18C-00A0C9118956}';

/// {@category Interface}
/// {@category com}
class IAMCrossbar extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAMCrossbar(Pointer<COMObject> ptr) : super(ptr);

  int get_PinCounts(
    Pointer<Int32> OutputPinCount,
    Pointer<Int32> InputPinCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> OutputPinCount,
            Pointer<Int32> InputPinCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> OutputPinCount,
            Pointer<Int32> InputPinCount,
          )>()(
        ptr.ref.lpVtbl,
        OutputPinCount,
        InputPinCount,
      );

  int CanRoute(
    int OutputPinIndex,
    int InputPinIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 OutputPinIndex,
            Int32 InputPinIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputPinIndex,
            int InputPinIndex,
          )>()(
        ptr.ref.lpVtbl,
        OutputPinIndex,
        InputPinIndex,
      );

  int Route(
    int OutputPinIndex,
    int InputPinIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 OutputPinIndex,
            Int32 InputPinIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputPinIndex,
            int InputPinIndex,
          )>()(
        ptr.ref.lpVtbl,
        OutputPinIndex,
        InputPinIndex,
      );

  int get_IsRoutedTo(
    int OutputPinIndex,
    Pointer<Int32> InputPinIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 OutputPinIndex,
            Pointer<Int32> InputPinIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputPinIndex,
            Pointer<Int32> InputPinIndex,
          )>()(
        ptr.ref.lpVtbl,
        OutputPinIndex,
        InputPinIndex,
      );

  int get_CrossbarPinInfo(
    int IsInputPin,
    int PinIndex,
    Pointer<Int32> PinIndexRelated,
    Pointer<Int32> PhysicalType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 IsInputPin,
            Int32 PinIndex,
            Pointer<Int32> PinIndexRelated,
            Pointer<Int32> PhysicalType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int IsInputPin,
            int PinIndex,
            Pointer<Int32> PinIndexRelated,
            Pointer<Int32> PhysicalType,
          )>()(
        ptr.ref.lpVtbl,
        IsInputPin,
        PinIndex,
        PinIndexRelated,
        PhysicalType,
      );
}
