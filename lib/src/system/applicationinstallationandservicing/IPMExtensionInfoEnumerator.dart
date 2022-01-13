// IPMExtensionInfoEnumerator.dart

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
import '../../system/applicationinstallationandservicing/IPMExtensionInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPMExtensionInfoEnumerator = '{403B9E82-1171-4573-8E6F-6F33F39B83DD}';

/// {@category Interface}
/// {@category com}
class IPMExtensionInfoEnumerator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPMExtensionInfoEnumerator(Pointer<COMObject> ptr) : super(ptr);

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
            Pointer<Pointer<COMObject>> ppExtensionInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppExtensionInfo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
