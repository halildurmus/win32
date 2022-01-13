// IMFDXGIDeviceManager.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFDXGIDeviceManager = '{EB533D5D-2DB6-40F8-97A9-494692014F07}';

/// {@category Interface}
/// {@category com}
class IMFDXGIDeviceManager extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFDXGIDeviceManager(Pointer<COMObject> ptr) : super(ptr);

  int CloseDeviceHandle(
    int hDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetVideoService(
    int hDevice,
    Pointer<GUID> riid,
    Pointer<Pointer> ppService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int LockDevice(
    int hDevice,
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnkDevice,
    int fBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDevice,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnkDevice,
            Int32 fBlock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDevice,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnkDevice,
            int fBlock,
          )>()(
        ptr.ref.lpVtbl,
        hDevice,
        riid,
        ppUnkDevice,
        fBlock,
      );

  int OpenDeviceHandle(
    Pointer<IntPtr> phDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int ResetDevice(
    Pointer<COMObject> pUnkDevice,
    int resetToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkDevice,
            Uint32 resetToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkDevice,
            int resetToken,
          )>()(
        ptr.ref.lpVtbl,
        pUnkDevice,
        resetToken,
      );

  int TestDevice(
    int hDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int UnlockDevice(
    int hDevice,
    int fSaveState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
}
