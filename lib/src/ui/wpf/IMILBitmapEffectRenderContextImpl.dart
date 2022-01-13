// IMILBitmapEffectRenderContextImpl.dart

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
import '../../ui/wpf/structs.g.dart';

/// @nodoc
const IID_IMILBitmapEffectRenderContextImpl =
    '{4D25ACCB-797D-4FD2-B128-DFFEFF84FCC3}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectRenderContextImpl extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMILBitmapEffectRenderContextImpl(Pointer<COMObject> ptr) : super(ptr);

  int GetUseSoftwareRenderer(
    Pointer<Int16> pfSoftware,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfSoftware,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfSoftware,
          )>()(
        ptr.ref.lpVtbl,
        pfSoftware,
      );

  int GetTransform(
    Pointer<MILMatrixF> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        pMatrix,
      );

  int UpdateTransform(
    Pointer<MILMatrixF> pMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MILMatrixF> pMatrix,
          )>()(
        ptr.ref.lpVtbl,
        pMatrix,
      );

  int GetOutputBounds(
    Pointer<MilRectD> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MilRectD> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MilRectD> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );

  int UpdateOutputBounds(
    Pointer<MilRectD> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MilRectD> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MilRectD> pRect,
          )>()(
        ptr.ref.lpVtbl,
        pRect,
      );
}
