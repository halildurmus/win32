// IOfflineFilesSyncProgress.dart

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

import '../../storage/offlinefiles/IOfflineFilesProgress.dart';
import '../../foundation/structs.g.dart';
import '../../storage/offlinefiles/structs.g.dart';
import '../../storage/offlinefiles/IOfflineFilesSyncErrorInfo.dart';

/// @nodoc
const IID_IOfflineFilesSyncProgress = '{6931F49A-6FC7-4C1B-B265-56793FC451B7}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesSyncProgress extends IOfflineFilesProgress {
  // vtable begins at 6, is 2 entries long.
  IOfflineFilesSyncProgress(Pointer<COMObject> ptr) : super(ptr);

  int SyncItemBegin(
    Pointer<Utf16> pszFile,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        pResponse,
      );

  int SyncItemResult(
    Pointer<Utf16> pszFile,
    int hrResult,
    Pointer<COMObject> pErrorInfo,
    Pointer<Int32> pResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFile,
            Int32 hrResult,
            Pointer<COMObject> pErrorInfo,
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            int hrResult,
            Pointer<COMObject> pErrorInfo,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        hrResult,
        pErrorInfo,
        pResponse,
      );
}
