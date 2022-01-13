// IVssSnapshotMgmt.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../storage/vss/IVssEnumMgmtObject.dart';
import '../../storage/vss/IVssEnumObject.dart';

/// @nodoc
const IID_IVssSnapshotMgmt = '{FA7DF749-66E7-4986-A27F-E2F04AE53772}';

/// {@category Interface}
/// {@category com}
class IVssSnapshotMgmt extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVssSnapshotMgmt(Pointer<COMObject> ptr) : super(ptr);

  int GetProviderMgmtInterface(
    GUID ProviderId,
    Pointer<GUID> InterfaceId,
    Pointer<Pointer<COMObject>> ppItf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProviderId,
            Pointer<GUID> InterfaceId,
            Pointer<Pointer<COMObject>> ppItf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProviderId,
            Pointer<GUID> InterfaceId,
            Pointer<Pointer<COMObject>> ppItf,
          )>()(
        ptr.ref.lpVtbl,
        ProviderId,
        InterfaceId,
        ppItf,
      );

  int QueryVolumesSupportedForSnapshots(
    GUID ProviderId,
    int lContext,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProviderId,
            Int32 lContext,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProviderId,
            int lContext,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ProviderId,
        lContext,
        ppEnum,
      );

  int QuerySnapshotsByVolume(
    Pointer<Uint16> pwszVolumeName,
    GUID ProviderId,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            GUID ProviderId,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            GUID ProviderId,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        ProviderId,
        ppEnum,
      );
}

/// @nodoc
const CLSID_VssSnapshotMgmt = '{0B5A2C52-3EB9-470A-96E2-6C6D4570E40F}';

/// {@category com}
class VssSnapshotMgmt extends IVssSnapshotMgmt {
  VssSnapshotMgmt(Pointer<COMObject> ptr) : super(ptr);

  factory VssSnapshotMgmt.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_VssSnapshotMgmt);
    final iid = calloc<GUID>()..ref.setGUID(IID_IVssSnapshotMgmt);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return VssSnapshotMgmt(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
