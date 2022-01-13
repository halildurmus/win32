// IDirectDrawStreamSample.dart

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

import '../../media/directshow/IStreamSample.dart';
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectDrawStreamSample = '{F4104FCF-9A70-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IDirectDrawStreamSample extends IStreamSample {
  // vtable begins at 8, is 2 entries long.
  IDirectDrawStreamSample(Pointer<COMObject> ptr) : super(ptr);

  int GetSurface(
    Pointer<Pointer<COMObject>> ppDirectDrawSurface,
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetRect(
    Pointer<RECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );
}
