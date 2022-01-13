// IShellLinkDual2.dart

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

import '../../ui/shell/IShellLinkDual.dart';
import '../../ui/shell/FolderItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellLinkDual2 = '{317EE249-F12E-11D2-B1E4-00C04F8EEB3E}';

/// {@category Interface}
/// {@category com}
class IShellLinkDual2 extends IShellLinkDual {
  // vtable begins at 23, is 1 entries long.
  IShellLinkDual2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Target {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfi,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
