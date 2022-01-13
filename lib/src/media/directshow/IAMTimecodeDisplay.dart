// IAMTimecodeDisplay.dart

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
const IID_IAMTimecodeDisplay = '{9B496CE2-811B-11CF-8C77-00AA006B6814}';

/// {@category Interface}
/// {@category com}
class IAMTimecodeDisplay extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAMTimecodeDisplay(Pointer<COMObject> ptr) : super(ptr);

  int GetTCDisplayEnable(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );

  int SetTCDisplayEnable(
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        State,
      );

  int GetTCDisplay(
    int Param,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        pValue,
      );

  int SetTCDisplay(
    int Param,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        Value,
      );
}
