// IOfflineFilesSyncErrorInfo.dart

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

import '../../storage/offlinefiles/IOfflineFilesErrorInfo.dart';
import '../../storage/offlinefiles/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/offlinefiles/IOfflineFilesSyncErrorItemInfo.dart';

/// @nodoc
const IID_IOfflineFilesSyncErrorInfo = '{59F95E46-EB54-49D1-BE76-DE95458D01B0}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesSyncErrorInfo extends IOfflineFilesErrorInfo {
  // vtable begins at 5, is 7 entries long.
  IOfflineFilesSyncErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncOperation(
    Pointer<Int32> pSyncOp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSyncOp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSyncOp,
          )>()(
        ptr.ref.lpVtbl,
        pSyncOp,
      );

  int GetItemChangeFlags(
    Pointer<Uint32> pdwItemChangeFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwItemChangeFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwItemChangeFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwItemChangeFlags,
      );

  int InfoEnumerated(
    Pointer<Int32> pbLocalEnumerated,
    Pointer<Int32> pbRemoteEnumerated,
    Pointer<Int32> pbOriginalEnumerated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbLocalEnumerated,
            Pointer<Int32> pbRemoteEnumerated,
            Pointer<Int32> pbOriginalEnumerated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbLocalEnumerated,
            Pointer<Int32> pbRemoteEnumerated,
            Pointer<Int32> pbOriginalEnumerated,
          )>()(
        ptr.ref.lpVtbl,
        pbLocalEnumerated,
        pbRemoteEnumerated,
        pbOriginalEnumerated,
      );

  int InfoAvailable(
    Pointer<Int32> pbLocalInfo,
    Pointer<Int32> pbRemoteInfo,
    Pointer<Int32> pbOriginalInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbLocalInfo,
            Pointer<Int32> pbRemoteInfo,
            Pointer<Int32> pbOriginalInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbLocalInfo,
            Pointer<Int32> pbRemoteInfo,
            Pointer<Int32> pbOriginalInfo,
          )>()(
        ptr.ref.lpVtbl,
        pbLocalInfo,
        pbRemoteInfo,
        pbOriginalInfo,
      );

  int GetLocalInfo(
    Pointer<Pointer<COMObject>> ppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppInfo,
      );

  int GetRemoteInfo(
    Pointer<Pointer<COMObject>> ppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppInfo,
      );

  int GetOriginalInfo(
    Pointer<Pointer<COMObject>> ppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppInfo,
      );
}
