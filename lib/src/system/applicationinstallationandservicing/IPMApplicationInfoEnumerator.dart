// IPMApplicationInfoEnumerator.dart

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
import '../../system/applicationinstallationandservicing/IPMApplicationInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPMApplicationInfoEnumerator =
    '{0EC42A96-4D46-4DC6-A3D9-A7ACAAC0F5FA}';

/// {@category Interface}
/// {@category com}
class IPMApplicationInfoEnumerator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPMApplicationInfoEnumerator(Pointer<COMObject> ptr) : super(ptr);

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
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
