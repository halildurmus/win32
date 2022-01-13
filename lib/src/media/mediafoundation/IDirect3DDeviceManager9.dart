// IDirect3DDeviceManager9.dart

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
import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirect3DDeviceManager9 = '{A0CADE0F-06D5-4CF4-A1C7-F3CDD725AA75}';

/// {@category Interface}
/// {@category com}
class IDirect3DDeviceManager9 extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDirect3DDeviceManager9(Pointer<COMObject> ptr) : super(ptr);

  int ResetDevice(
    Pointer<COMObject> pDevice,
    int resetToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Uint32 resetToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int resetToken,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        resetToken,
      );

  int OpenDeviceHandle(
    Pointer<IntPtr> phDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phDevice,
          )>()(
        ptr.ref.lpVtbl,
        phDevice,
      );

  int CloseDeviceHandle(
    int hDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDevice,
          )>()(
        ptr.ref.lpVtbl,
        hDevice,
      );

  int TestDevice(
    int hDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDevice,
          )>()(
        ptr.ref.lpVtbl,
        hDevice,
      );

  int LockDevice(
    int hDevice,
    Pointer<Pointer<COMObject>> ppDevice,
    int fBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDevice,
            Pointer<Pointer<COMObject>> ppDevice,
            Int32 fBlock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDevice,
            Pointer<Pointer<COMObject>> ppDevice,
            int fBlock,
          )>()(
        ptr.ref.lpVtbl,
        hDevice,
        ppDevice,
        fBlock,
      );

  int UnlockDevice(
    int hDevice,
    int fSaveState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDevice,
            Int32 fSaveState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDevice,
            int fSaveState,
          )>()(
        ptr.ref.lpVtbl,
        hDevice,
        fSaveState,
      );

  int GetVideoService(
    int hDevice,
    Pointer<GUID> riid,
    Pointer<Pointer> ppService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDevice,
            Pointer<GUID> riid,
            Pointer<Pointer> ppService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDevice,
            Pointer<GUID> riid,
            Pointer<Pointer> ppService,
          )>()(
        ptr.ref.lpVtbl,
        hDevice,
        riid,
        ppService,
      );
}
