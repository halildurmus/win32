// IDownloadCompletedCallback.dart

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
import '../../system/updateagent/IDownloadCompletedCallbackArgs.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDownloadCompletedCallback = '{77254866-9F5B-4C8E-B9E2-C77A8530D64B}';

/// {@category Interface}
/// {@category com}
class IDownloadCompletedCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDownloadCompletedCallback(Pointer<COMObject> ptr) : super(ptr);

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
