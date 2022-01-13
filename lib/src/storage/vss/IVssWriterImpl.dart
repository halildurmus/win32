// IVssWriterImpl.dart

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
import '../../storage/vss/structs.g.dart';

/// @nodoc
const IID_IVssWriterImpl = 'null';

/// {@category Interface}
/// {@category com}
class IVssWriterImpl extends IUnknown {
  // vtable begins at 3, is 22 entries long.
  IVssWriterImpl(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    GUID writerId,
    Pointer<Utf16> wszWriterName,
    Pointer<Utf16> wszWriterInstanceName,
    int dwMajorVersion,
    int dwMinorVersion,
    int ut,
    int st,
    int nLevel,
    int dwTimeout,
    int aws,
    int bIOThrottlingOnly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID writerId,
            Pointer<Utf16> wszWriterName,
            Pointer<Utf16> wszWriterInstanceName,
            Uint32 dwMajorVersion,
            Uint32 dwMinorVersion,
            Int32 ut,
            Int32 st,
            Int32 nLevel,
            Uint32 dwTimeout,
            Int32 aws,
            Uint8 bIOThrottlingOnly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID writerId,
            Pointer<Utf16> wszWriterName,
            Pointer<Utf16> wszWriterInstanceName,
            int dwMajorVersion,
            int dwMinorVersion,
            int ut,
            int st,
            int nLevel,
            int dwTimeout,
            int aws,
            int bIOThrottlingOnly,
          )>()(
        ptr.ref.lpVtbl,
        writerId,
        wszWriterName,
        wszWriterInstanceName,
        dwMajorVersion,
        dwMinorVersion,
        ut,
        st,
        nLevel,
        dwTimeout,
        aws,
        bIOThrottlingOnly,
      );

  int Subscribe(
    int dwSubscribeTimeout,
    int dwEventFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSubscribeTimeout,
            Uint32 dwEventFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSubscribeTimeout,
            int dwEventFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwSubscribeTimeout,
        dwEventFlags,
      );

  int Unsubscribe() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  void Uninitialize() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<Pointer<Utf16>> GetCurrentVolumeArray() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<Pointer<Utf16>> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<Pointer<Utf16>> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetCurrentVolumeCount() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetSnapshotDeviceName(
    Pointer<Utf16> wszOriginalVolume,
    Pointer<Pointer<Utf16>> ppwszSnapshotDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszOriginalVolume,
            Pointer<Pointer<Utf16>> ppwszSnapshotDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszOriginalVolume,
            Pointer<Pointer<Utf16>> ppwszSnapshotDevice,
          )>()(
        ptr.ref.lpVtbl,
        wszOriginalVolume,
        ppwszSnapshotDevice,
      );

  GUID GetCurrentSnapshotSetId() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      GUID Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              GUID Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetContext() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetCurrentLevel() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  bool IsPathAffected(
    Pointer<Utf16> wszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
            Pointer<Utf16> wszPath,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
            Pointer<Utf16> wszPath,
          )>()(
        ptr.ref.lpVtbl,
        wszPath,
      );

  bool IsBootableSystemStateBackedUp() => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  bool AreComponentsSelected() => ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetBackupType() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetRestoreType() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int SetWriterFailure(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );

  bool IsPartialFileSupportEnabled() => ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int InstallAlternateWriter(
    GUID idWriter,
    GUID clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID idWriter,
            GUID clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID idWriter,
            GUID clsid,
          )>()(
        ptr.ref.lpVtbl,
        idWriter,
        clsid,
      );

  Pointer<IVssExamineWriterMetadata> GetIdentityInformation() =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<IVssExamineWriterMetadata> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<IVssExamineWriterMetadata> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetWriterFailureEx(
    int hr,
    int hrApplication,
    Pointer<Utf16> wszApplicationMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
            Int32 hrApplication,
            Pointer<Utf16> wszApplicationMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            int hrApplication,
            Pointer<Utf16> wszApplicationMessage,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        hrApplication,
        wszApplicationMessage,
      );

  int GetSessionId(
    Pointer<GUID> idSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> idSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> idSession,
          )>()(
        ptr.ref.lpVtbl,
        idSession,
      );

  bool IsWriterShuttingDown() => ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
