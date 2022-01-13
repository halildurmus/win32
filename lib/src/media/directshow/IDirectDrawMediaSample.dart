// IDirectDrawMediaSample.dart

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
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectDrawMediaSample = '{AB6B4AFE-F6E4-11D0-900D-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IDirectDrawMediaSample extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectDrawMediaSample(Pointer<COMObject> ptr) : super(ptr);

  int GetSurfaceAndReleaseLock(
    Pointer<Pointer<COMObject>> ppDirectDrawSurface,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirectDrawSurface,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirectDrawSurface,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        ppDirectDrawSurface,
        pRect,
      );

  int LockMediaSamplePointer() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
