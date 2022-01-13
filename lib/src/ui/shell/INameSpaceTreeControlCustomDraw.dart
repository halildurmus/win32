// INameSpaceTreeControlCustomDraw.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_INameSpaceTreeControlCustomDraw =
    '{2D3BA758-33EE-42D5-BB7B-5F3431D86C78}';

/// {@category Interface}
/// {@category com}
class INameSpaceTreeControlCustomDraw extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INameSpaceTreeControlCustomDraw(Pointer<COMObject> ptr) : super(ptr);

  int PrePaint(
    int hdc,
    Pointer<RECT> prc,
    Pointer<IntPtr> plres,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Pointer<RECT> prc,
            Pointer<IntPtr> plres,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            Pointer<RECT> prc,
            Pointer<IntPtr> plres,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        prc,
        plres,
      );

  int PostPaint(
    int hdc,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        prc,
      );

  int ItemPrePaint(
    int hdc,
    Pointer<RECT> prc,
    Pointer<NSTCCUSTOMDRA> pnstccdItem,
    Pointer<Uint32> pclrText,
    Pointer<Uint32> pclrTextBk,
    Pointer<IntPtr> plres,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Pointer<RECT> prc,
            Pointer<NSTCCUSTOMDRA> pnstccdItem,
            Pointer<Uint32> pclrText,
            Pointer<Uint32> pclrTextBk,
            Pointer<IntPtr> plres,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            Pointer<RECT> prc,
            Pointer<NSTCCUSTOMDRA> pnstccdItem,
            Pointer<Uint32> pclrText,
            Pointer<Uint32> pclrTextBk,
            Pointer<IntPtr> plres,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        prc,
        pnstccdItem,
        pclrText,
        pclrTextBk,
        plres,
      );

  int ItemPostPaint(
    int hdc,
    Pointer<RECT> prc,
    Pointer<NSTCCUSTOMDRA> pnstccdItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Pointer<RECT> prc,
            Pointer<NSTCCUSTOMDRA> pnstccdItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            Pointer<RECT> prc,
            Pointer<NSTCCUSTOMDRA> pnstccdItem,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        prc,
        pnstccdItem,
      );
}
