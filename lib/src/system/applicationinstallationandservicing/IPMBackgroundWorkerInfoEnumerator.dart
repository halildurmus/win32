// IPMBackgroundWorkerInfoEnumerator.dart

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
import '../../system/applicationinstallationandservicing/IPMBackgroundWorkerInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPMBackgroundWorkerInfoEnumerator =
    '{87F479F8-90D8-4EC7-92B9-72787E2F636B}';

/// {@category Interface}
/// {@category com}
class IPMBackgroundWorkerInfoEnumerator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPMBackgroundWorkerInfoEnumerator(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Next {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBWInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBWInfo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
