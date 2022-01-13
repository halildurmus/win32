// IMDSPStorageGlobals.dart

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
import '../../media/devicemanager/structs.g.dart';
import '../../media/devicemanager/IWMDMProgress.dart';
import '../../media/devicemanager/IMDSPDevice.dart';
import '../../media/devicemanager/IMDSPStorage.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPStorageGlobals = '{1DCB3A17-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IMDSPStorageGlobals extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IMDSPStorageGlobals(Pointer<COMObject> ptr) : super(ptr);

  int GetCapabilities(
    Pointer<Uint32> pdwCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pdwCapabilities,
      );

  int GetSerialNumber(
    Pointer<WMDMID> pSerialNum,
    Pointer<Uint8> abMac,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WMDMID> pSerialNum,
            Pointer<Uint8> abMac,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WMDMID> pSerialNum,
            Pointer<Uint8> abMac,
          )>()(
        ptr.ref.lpVtbl,
        pSerialNum,
        abMac,
      );

  int GetTotalSize(
    Pointer<Uint32> pdwTotalSizeLow,
    Pointer<Uint32> pdwTotalSizeHigh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwTotalSizeLow,
            Pointer<Uint32> pdwTotalSizeHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwTotalSizeLow,
            Pointer<Uint32> pdwTotalSizeHigh,
          )>()(
        ptr.ref.lpVtbl,
        pdwTotalSizeLow,
        pdwTotalSizeHigh,
      );

  int GetTotalFree(
    Pointer<Uint32> pdwFreeLow,
    Pointer<Uint32> pdwFreeHigh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFreeLow,
            Pointer<Uint32> pdwFreeHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFreeLow,
            Pointer<Uint32> pdwFreeHigh,
          )>()(
        ptr.ref.lpVtbl,
        pdwFreeLow,
        pdwFreeHigh,
      );

  int GetTotalBad(
    Pointer<Uint32> pdwBadLow,
    Pointer<Uint32> pdwBadHigh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBadLow,
            Pointer<Uint32> pdwBadHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBadLow,
            Pointer<Uint32> pdwBadHigh,
          )>()(
        ptr.ref.lpVtbl,
        pdwBadLow,
        pdwBadHigh,
      );

  int GetStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int Initialize(
    int fuMode,
    Pointer<COMObject> pProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Pointer<COMObject> pProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            Pointer<COMObject> pProgress,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        pProgress,
      );

  int GetDevice(
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppDevice,
      );

  int GetRootStorage(
    Pointer<Pointer<COMObject>> ppRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoot,
          )>()(
        ptr.ref.lpVtbl,
        ppRoot,
      );
}
