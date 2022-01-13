// IDirectDrawColorControl.dart

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
const IID_IDirectDrawColorControl = '{4B9F0EE0-0D7E-11D0-9B06-00A0C903A3B8}';

/// {@category Interface}
/// {@category com}
class IDirectDrawColorControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectDrawColorControl(Pointer<COMObject> ptr) : super(ptr);

  int GetColorControls(
    Pointer<DDCOLORCONTROL> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int SetColorControls(
    Pointer<DDCOLORCONTROL> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );
}
