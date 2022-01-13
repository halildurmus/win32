// IMFVideoProcessorControl.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoProcessorControl = '{A3F675D5-6119-4F7F-A100-1D8B280F0EFB}';

/// {@category Interface}
/// {@category com}
class IMFVideoProcessorControl extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFVideoProcessorControl(Pointer<COMObject> ptr) : super(ptr);

  int SetBorderColor(
    Pointer<MFARGB> pBorderColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFARGB> pBorderColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFARGB> pBorderColor,
          )>()(
        ptr.ref.lpVtbl,
        pBorderColor,
      );

  int SetSourceRectangle(
    Pointer<RECT> pSrcRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSrcRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSrcRect,
          )>()(
        ptr.ref.lpVtbl,
        pSrcRect,
      );

  int SetDestinationRectangle(
    Pointer<RECT> pDstRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pDstRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pDstRect,
          )>()(
        ptr.ref.lpVtbl,
        pDstRect,
      );

  int SetMirror(
    int eMirror,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eMirror,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eMirror,
          )>()(
        ptr.ref.lpVtbl,
        eMirror,
      );

  int SetRotation(
    int eRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eRotation,
          )>()(
        ptr.ref.lpVtbl,
        eRotation,
      );

  int SetConstrictionSize(
    Pointer<SIZE> pConstrictionSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pConstrictionSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pConstrictionSize,
          )>()(
        ptr.ref.lpVtbl,
        pConstrictionSize,
      );
}
