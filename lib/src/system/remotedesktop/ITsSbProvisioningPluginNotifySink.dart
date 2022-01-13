// ITsSbProvisioningPluginNotifySink.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbProvisioningPluginNotifySink =
    '{ACA87A8E-818B-4581-A032-49C3DFB9C701}';

/// {@category Interface}
/// {@category com}
class ITsSbProvisioningPluginNotifySink extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITsSbProvisioningPluginNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnJobCreated(
    Pointer<VM_NOTIFY_INFO> pVmNotifyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VM_NOTIFY_INFO> pVmNotifyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VM_NOTIFY_INFO> pVmNotifyInfo,
          )>()(
        ptr.ref.lpVtbl,
        pVmNotifyInfo,
      );

  int OnVirtualMachineStatusChanged(
    Pointer<VM_NOTIFY_ENTRY> pVmNotifyEntry,
    int VmNotifyStatus,
    int ErrorCode,
    Pointer<Utf16> ErrorDescr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VM_NOTIFY_ENTRY> pVmNotifyEntry,
            Int32 VmNotifyStatus,
            Int32 ErrorCode,
            Pointer<Utf16> ErrorDescr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VM_NOTIFY_ENTRY> pVmNotifyEntry,
            int VmNotifyStatus,
            int ErrorCode,
            Pointer<Utf16> ErrorDescr,
          )>()(
        ptr.ref.lpVtbl,
        pVmNotifyEntry,
        VmNotifyStatus,
        ErrorCode,
        ErrorDescr,
      );

  int OnJobCompleted(
    int ResultCode,
    Pointer<Utf16> ResultDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ResultCode,
            Pointer<Utf16> ResultDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResultCode,
            Pointer<Utf16> ResultDescription,
          )>()(
        ptr.ref.lpVtbl,
        ResultCode,
        ResultDescription,
      );

  int OnJobCancelled() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int LockVirtualMachine(
    Pointer<VM_NOTIFY_ENTRY> pVmNotifyEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VM_NOTIFY_ENTRY> pVmNotifyEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VM_NOTIFY_ENTRY> pVmNotifyEntry,
          )>()(
        ptr.ref.lpVtbl,
        pVmNotifyEntry,
      );

  int OnVirtualMachineHostStatusChanged(
    Pointer<Utf16> VmHost,
    int VmHostNotifyStatus,
    int ErrorCode,
    Pointer<Utf16> ErrorDescr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> VmHost,
            Int32 VmHostNotifyStatus,
            Int32 ErrorCode,
            Pointer<Utf16> ErrorDescr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> VmHost,
            int VmHostNotifyStatus,
            int ErrorCode,
            Pointer<Utf16> ErrorDescr,
          )>()(
        ptr.ref.lpVtbl,
        VmHost,
        VmHostNotifyStatus,
        ErrorCode,
        ErrorDescr,
      );
}
