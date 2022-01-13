// IPMBackgroundServiceAgentInfoEnumerator.dart

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
import '../../system/applicationinstallationandservicing/IPMBackgroundServiceAgentInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPMBackgroundServiceAgentInfoEnumerator =
    '{18EB2072-AB56-43B3-872C-BEAFB7A6B391}';

/// {@category Interface}
/// {@category com}
class IPMBackgroundServiceAgentInfoEnumerator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPMBackgroundServiceAgentInfoEnumerator(Pointer<COMObject> ptr) : super(ptr);

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
            Pointer<Pointer<COMObject>> ppBSAInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBSAInfo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
