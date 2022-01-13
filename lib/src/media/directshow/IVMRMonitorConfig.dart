// IVMRMonitorConfig.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVMRMonitorConfig = '{9CF0B1B6-FBAA-4B7F-88CF-CF1F130A0DCE}';

/// {@category Interface}
/// {@category com}
class IVMRMonitorConfig extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IVMRMonitorConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetMonitor(
    Pointer<VMRGUID> pGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>()(
        ptr.ref.lpVtbl,
        pGUID,
      );

  int GetMonitor(
    Pointer<VMRGUID> pGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>()(
        ptr.ref.lpVtbl,
        pGUID,
      );

  int SetDefaultMonitor(
    Pointer<VMRGUID> pGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>()(
        ptr.ref.lpVtbl,
        pGUID,
      );

  int GetDefaultMonitor(
    Pointer<VMRGUID> pGUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRGUID> pGUID,
          )>()(
        ptr.ref.lpVtbl,
        pGUID,
      );

  int GetAvailableMonitors(
    Pointer<VMRMONITORINFO> pInfo,
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
            Pointer<VMRMONITORINFO> pInfo,
            Uint32 dwMaxInfoArraySize,
            Pointer<Uint32> pdwNumDevices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRMONITORINFO> pInfo,
            int dwMaxInfoArraySize,
            Pointer<Uint32> pdwNumDevices,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        dwMaxInfoArraySize,
        pdwNumDevices,
      );
}
