// IInstallationProgressChangedCallbackArgs.dart

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

import '../../system/com/IDispatch.dart';
import '../../system/updateagent/IInstallationProgress.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInstallationProgressChangedCallbackArgs =
    '{E4F14E1E-689D-4218-A0B9-BC189C484A01}';

/// {@category Interface}
/// {@category com}
class IInstallationProgressChangedCallbackArgs extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IInstallationProgressChangedCallbackArgs(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Progress {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
