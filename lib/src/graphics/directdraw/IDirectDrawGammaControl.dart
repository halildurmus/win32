// IDirectDrawGammaControl.dart

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
import '../../graphics/directdraw/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectDrawGammaControl = '{69C11C3E-B46B-11D1-AD7A-00C04FC29B4E}';

/// {@category Interface}
/// {@category com}
class IDirectDrawGammaControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectDrawGammaControl(Pointer<COMObject> ptr) : super(ptr);

  int GetGammaRamp(
    int param0,
    Pointer<DDGAMMARAMP> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDGAMMARAMP> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDGAMMARAMP> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetGammaRamp(
    int param0,
    Pointer<DDGAMMARAMP> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDGAMMARAMP> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDGAMMARAMP> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
