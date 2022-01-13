// IDownloadProgressChangedCallback.dart

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
import '../../system/updateagent/IDownloadJob.dart';
import '../../system/updateagent/IDownloadProgressChangedCallbackArgs.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDownloadProgressChangedCallback =
    '{8C3F1CDD-6173-4591-AEBD-A56A53CA77C1}';

/// {@category Interface}
/// {@category com}
class IDownloadProgressChangedCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDownloadProgressChangedCallback(Pointer<COMObject> ptr) : super(ptr);

  int Invoke(
    Pointer<COMObject> downloadJob,
    Pointer<COMObject> callbackArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> downloadJob,
            Pointer<COMObject> callbackArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> downloadJob,
            Pointer<COMObject> callbackArgs,
          )>()(
        ptr.ref.lpVtbl,
        downloadJob,
        callbackArgs,
      );
}
