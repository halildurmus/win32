// IAMCameraControl.dart

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
const IID_IAMCameraControl = '{C6E13370-30AC-11D0-A18C-00A0C9118956}';

/// {@category Interface}
/// {@category com}
class IAMCameraControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMCameraControl(Pointer<COMObject> ptr) : super(ptr);

  int GetRange(
    int Property,
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Property,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Property,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlags,
          )>()(
        ptr.ref.lpVtbl,
        Property,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlags,
      );

  int $Set(
    int Property,
    int lValue,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Property,
            Int32 lValue,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Property,
            int lValue,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Property,
        lValue,
        Flags,
      );

  int Get(
    int Property,
    Pointer<Int32> lValue,
    Pointer<Int32> Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Property,
            Pointer<Int32> lValue,
            Pointer<Int32> Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Property,
            Pointer<Int32> lValue,
            Pointer<Int32> Flags,
          )>()(
        ptr.ref.lpVtbl,
        Property,
        lValue,
        Flags,
      );
}
