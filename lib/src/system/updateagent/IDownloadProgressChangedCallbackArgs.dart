// IDownloadProgressChangedCallbackArgs.dart

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
import '../../system/updateagent/IDownloadProgress.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDownloadProgressChangedCallbackArgs =
    '{324FF2C6-4981-4B04-9412-57481745AB24}';

/// {@category Interface}
/// {@category com}
class IDownloadProgressChangedCallbackArgs extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IDownloadProgressChangedCallbackArgs(Pointer<COMObject> ptr) : super(ptr);

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
