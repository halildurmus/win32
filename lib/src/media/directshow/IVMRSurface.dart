// IVMRSurface.dart

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
import '../../graphics/directdraw/IDirectDrawSurface7.dart';

/// @nodoc
const IID_IVMRSurface = '{A9849BBE-9EC8-4263-B764-62730F0D15D0}';

/// {@category Interface}
/// {@category com}
class IVMRSurface extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVMRSurface(Pointer<COMObject> ptr) : super(ptr);

  int IsSurfaceLocked() => ptr.ref.lpVtbl.value
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

  int LockSurface(
    Pointer<Pointer<Uint8>> lpSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> lpSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> lpSurface,
          )>()(
        ptr.ref.lpVtbl,
        lpSurface,
      );

  int UnlockSurface() => ptr.ref.lpVtbl.value
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

  int GetSurface(
    Pointer<Pointer<COMObject>> lplpSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>()(
        ptr.ref.lpVtbl,
        lplpSurface,
      );
}
