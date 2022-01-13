// IVMRVideoStreamControl.dart

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
const IID_IVMRVideoStreamControl = '{058D1F11-2A54-4BEF-BD54-DF706626B727}';

/// {@category Interface}
/// {@category com}
class IVMRVideoStreamControl extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVMRVideoStreamControl(Pointer<COMObject> ptr) : super(ptr);

  int SetColorKey(
    Pointer<DDCOLORKEY> lpClrKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORKEY> lpClrKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORKEY> lpClrKey,
          )>()(
        ptr.ref.lpVtbl,
        lpClrKey,
      );

  int GetColorKey(
    Pointer<DDCOLORKEY> lpClrKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORKEY> lpClrKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORKEY> lpClrKey,
          )>()(
        ptr.ref.lpVtbl,
        lpClrKey,
      );

  int SetStreamActiveState(
    int fActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fActive,
          )>()(
        ptr.ref.lpVtbl,
        fActive,
      );

  int GetStreamActiveState(
    Pointer<Int32> lpfActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpfActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpfActive,
          )>()(
        ptr.ref.lpVtbl,
        lpfActive,
      );
}
