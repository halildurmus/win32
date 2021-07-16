// IDirect3DSurface9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../graphics/direct3d9/IDirect3DResource9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDirect3DSurface9 = '{0CFBAF3A-9FF6-429A-99B3-A2796AF8B89B}';

typedef _GetContainer_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppContainer);
typedef _GetContainer_Dart = int Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppContainer);

typedef _GetDesc_Native = Int32 Function(
    Pointer obj, Pointer<D3DSURFACE_DESC> pDesc);
typedef _GetDesc_Dart = int Function(
    Pointer obj, Pointer<D3DSURFACE_DESC> pDesc);

typedef _LockRect_Native = Int32 Function(Pointer obj,
    Pointer<D3DLOCKED_RECT> pLockedRect, Pointer<RECT> pRect, Uint32 Flags);
typedef _LockRect_Dart = int Function(Pointer obj,
    Pointer<D3DLOCKED_RECT> pLockedRect, Pointer<RECT> pRect, int Flags);

typedef _UnlockRect_Native = Int32 Function(Pointer obj);
typedef _UnlockRect_Dart = int Function(Pointer obj);

typedef _GetDC_Native = Int32 Function(Pointer obj, Pointer<IntPtr> phdc);
typedef _GetDC_Dart = int Function(Pointer obj, Pointer<IntPtr> phdc);

typedef _ReleaseDC_Native = Int32 Function(Pointer obj, IntPtr hdc);
typedef _ReleaseDC_Dart = int Function(Pointer obj, int hdc);

/// {@category Interface}
/// {@category com}
class IDirect3DSurface9 extends IDirect3DResource9 {
  // vtable begins at 11, ends at 16

  IDirect3DSurface9(Pointer<COMObject> ptr) : super(ptr);

  int GetContainer(Pointer<GUID> riid, Pointer<Pointer> ppContainer) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_GetContainer_Native>>>()
          .value
          .asFunction<_GetContainer_Dart>()(ptr.ref.lpVtbl, riid, ppContainer);

  int GetDesc(Pointer<D3DSURFACE_DESC> pDesc) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_GetDesc_Native>>>()
      .value
      .asFunction<_GetDesc_Dart>()(ptr.ref.lpVtbl, pDesc);

  int LockRect(Pointer<D3DLOCKED_RECT> pLockedRect, Pointer<RECT> pRect,
          int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(13)
              .cast<Pointer<NativeFunction<_LockRect_Native>>>()
              .value
              .asFunction<_LockRect_Dart>()(
          ptr.ref.lpVtbl, pLockedRect, pRect, Flags);

  int UnlockRect() => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_UnlockRect_Native>>>()
      .value
      .asFunction<_UnlockRect_Dart>()(ptr.ref.lpVtbl);

  int GetDC(Pointer<IntPtr> phdc) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetDC_Native>>>()
      .value
      .asFunction<_GetDC_Dart>()(ptr.ref.lpVtbl, phdc);

  int ReleaseDC(int hdc) => ptr.ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_ReleaseDC_Native>>>()
      .value
      .asFunction<_ReleaseDC_Dart>()(ptr.ref.lpVtbl, hdc);
}
