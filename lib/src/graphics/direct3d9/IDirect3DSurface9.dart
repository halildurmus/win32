// IDirect3DSurface9.dart

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

import '../../graphics/direct3d9/IDirect3DResource9.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDirect3DSurface9 = '{0CFBAF3A-9FF6-429A-99B3-A2796AF8B89B}';

/// {@category Interface}
/// {@category com}
class IDirect3DSurface9 extends IDirect3DResource9 {
  // vtable begins at 11, is 6 entries long.
  IDirect3DSurface9(Pointer<COMObject> ptr) : super(ptr);

  int GetContainer(
    Pointer<GUID> riid,
    Pointer<Pointer> ppContainer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppContainer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppContainer,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppContainer,
      );

  int GetDesc(
    Pointer<D3DSURFACE_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DSURFACE_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DSURFACE_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int LockRect(
    Pointer<D3DLOCKED_RECT> pLockedRect,
    Pointer<RECT> pRect,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DLOCKED_RECT> pLockedRect,
            Pointer<RECT> pRect,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DLOCKED_RECT> pLockedRect,
            Pointer<RECT> pRect,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pLockedRect,
        pRect,
        Flags,
      );

  int UnlockRect() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetDC(
    Pointer<IntPtr> phdc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phdc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phdc,
          )>()(
        ptr.ref.lpVtbl,
        phdc,
      );

  int ReleaseDC(
    int hdc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
      );
}
