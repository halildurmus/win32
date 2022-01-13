// ITsSbProvisioning.dart

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

import '../../system/remotedesktop/ITsSbPlugin.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/ITsSbProvisioningPluginNotifySink.dart';
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ITsSbProvisioning = '{2F6F0DBB-9E4F-462B-9C3F-FCCC3DCB6232}';

/// {@category Interface}
/// {@category com}
class ITsSbProvisioning extends ITsSbPlugin {
  // vtable begins at 5, is 4 entries long.
  ITsSbProvisioning(Pointer<COMObject> ptr) : super(ptr);

  int CreateVirtualMachines(
    Pointer<Utf16> JobXmlString,
    Pointer<Utf16> JobGuid,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> JobXmlString,
            Pointer<Utf16> JobGuid,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> JobXmlString,
            Pointer<Utf16> JobGuid,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        JobXmlString,
        JobGuid,
        pSink,
      );

  int PatchVirtualMachines(
    Pointer<Utf16> JobXmlString,
    Pointer<Utf16> JobGuid,
    Pointer<COMObject> pSink,
    Pointer<VM_PATCH_INFO> pVMPatchInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> JobXmlString,
            Pointer<Utf16> JobGuid,
            Pointer<COMObject> pSink,
            Pointer<VM_PATCH_INFO> pVMPatchInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> JobXmlString,
            Pointer<Utf16> JobGuid,
            Pointer<COMObject> pSink,
            Pointer<VM_PATCH_INFO> pVMPatchInfo,
          )>()(
        ptr.ref.lpVtbl,
        JobXmlString,
        JobGuid,
        pSink,
        pVMPatchInfo,
      );

  int DeleteVirtualMachines(
    Pointer<Utf16> JobXmlString,
    Pointer<Utf16> JobGuid,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> JobXmlString,
            Pointer<Utf16> JobGuid,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> JobXmlString,
            Pointer<Utf16> JobGuid,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        JobXmlString,
        JobGuid,
        pSink,
      );

  int CancelJob(
    Pointer<Utf16> JobGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> JobGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> JobGuid,
          )>()(
        ptr.ref.lpVtbl,
        JobGuid,
      );
}
