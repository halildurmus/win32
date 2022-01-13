// IOfflineFilesSimpleProgress.dart

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

/// @nodoc
const IID_IOfflineFilesSimpleProgress =
    '{C34F7F9B-C43D-4F9D-A776-C0EB6DE5D401}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesSimpleProgress extends IOfflineFilesProgress {
  // vtable begins at 6, is 2 entries long.
  IOfflineFilesSimpleProgress(Pointer<COMObject> ptr) : super(ptr);

  int ItemBegin(
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

  int ItemResult(
    Pointer<Utf16> pszFile,
    int hrResult,
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
            Pointer<Int32> pResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFile,
            int hrResult,
            Pointer<Int32> pResponse,
          )>()(
        ptr.ref.lpVtbl,
        pszFile,
        hrResult,
        pResponse,
      );
}
