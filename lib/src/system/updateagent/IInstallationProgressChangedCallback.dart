// IInstallationProgressChangedCallback.dart

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
import '../../system/updateagent/IInstallationJob.dart';
import '../../system/updateagent/IInstallationProgressChangedCallbackArgs.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInstallationProgressChangedCallback =
    '{E01402D5-F8DA-43BA-A012-38894BD048F1}';

/// {@category Interface}
/// {@category com}
class IInstallationProgressChangedCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInstallationProgressChangedCallback(Pointer<COMObject> ptr) : super(ptr);

  int Invoke(
    Pointer<COMObject> installationJob,
    Pointer<COMObject> callbackArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> installationJob,
            Pointer<COMObject> callbackArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> installationJob,
            Pointer<COMObject> callbackArgs,
          )>()(
        ptr.ref.lpVtbl,
        installationJob,
        callbackArgs,
      );
}
