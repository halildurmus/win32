// IVMRMonitorConfig9.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IVMRMonitorConfig9 = '{46C2E457-8BA0-4EEF-B80B-0680F0978749}';

/// {@category Interface}
/// {@category com}
class IVMRMonitorConfig9 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IVMRMonitorConfig9(Pointer<COMObject> ptr) : super(ptr);

  int SetMonitor(
    int uDev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uDev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uDev,
          )>()(
        ptr.ref.lpVtbl,
        uDev,
      );

  int GetMonitor(
    Pointer<Uint32> puDev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puDev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puDev,
          )>()(
        ptr.ref.lpVtbl,
        puDev,
      );

  int SetDefaultMonitor(
    int uDev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uDev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uDev,
          )>()(
        ptr.ref.lpVtbl,
        uDev,
      );

  int GetDefaultMonitor(
    Pointer<Uint32> puDev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puDev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puDev,
          )>()(
        ptr.ref.lpVtbl,
        puDev,
      );

  int GetAvailableMonitors(
    Pointer<VMR9MonitorInfo> pInfo,
    int dwMaxInfoArraySize,
    Pointer<Uint32> pdwNumDevices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMR9MonitorInfo> pInfo,
            Uint32 dwMaxInfoArraySize,
            Pointer<Uint32> pdwNumDevices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMR9MonitorInfo> pInfo,
            int dwMaxInfoArraySize,
            Pointer<Uint32> pdwNumDevices,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        dwMaxInfoArraySize,
        pdwNumDevices,
      );
}
