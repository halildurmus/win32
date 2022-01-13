// IVssDifferentialSoftwareSnapshotMgmt3.dart

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

import '../../storage/vss/IVssDifferentialSoftwareSnapshotMgmt2.dart';
import '../../storage/vss/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVssDifferentialSoftwareSnapshotMgmt3 =
    '{383F7E71-A4C5-401F-B27F-F826289F8458}';

/// {@category Interface}
/// {@category com}
class IVssDifferentialSoftwareSnapshotMgmt3
    extends IVssDifferentialSoftwareSnapshotMgmt2 {
  // vtable begins at 13, is 5 entries long.
  IVssDifferentialSoftwareSnapshotMgmt3(Pointer<COMObject> ptr) : super(ptr);

  int SetVolumeProtectLevel(
    Pointer<Uint16> pwszVolumeName,
    int protectionLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Int32 protectionLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            int protectionLevel,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        protectionLevel,
      );

  int GetVolumeProtectLevel(
    Pointer<Uint16> pwszVolumeName,
    Pointer<VSS_VOLUME_PROTECTION_INFO> protectionLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<VSS_VOLUME_PROTECTION_INFO> protectionLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<VSS_VOLUME_PROTECTION_INFO> protectionLevel,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        protectionLevel,
      );

  int ClearVolumeProtectFault(
    Pointer<Uint16> pwszVolumeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
      );

  int DeleteUnusedDiffAreas(
    Pointer<Uint16> pwszDiffAreaVolumeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszDiffAreaVolumeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszDiffAreaVolumeName,
          )>()(
        ptr.ref.lpVtbl,
        pwszDiffAreaVolumeName,
      );

  int QuerySnapshotDeltaBitmap(
    GUID idSnapshotOlder,
    GUID idSnapshotYounger,
    Pointer<Uint32> pcBlockSizePerBit,
    Pointer<Uint32> pcBitmapLength,
    Pointer<Pointer<Uint8>> ppbBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID idSnapshotOlder,
            GUID idSnapshotYounger,
            Pointer<Uint32> pcBlockSizePerBit,
            Pointer<Uint32> pcBitmapLength,
            Pointer<Pointer<Uint8>> ppbBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID idSnapshotOlder,
            GUID idSnapshotYounger,
            Pointer<Uint32> pcBlockSizePerBit,
            Pointer<Uint32> pcBitmapLength,
            Pointer<Pointer<Uint8>> ppbBitmap,
          )>()(
        ptr.ref.lpVtbl,
        idSnapshotOlder,
        idSnapshotYounger,
        pcBlockSizePerBit,
        pcBitmapLength,
        ppbBitmap,
      );
}
