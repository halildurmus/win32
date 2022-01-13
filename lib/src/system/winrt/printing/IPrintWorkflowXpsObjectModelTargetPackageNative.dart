// IPrintWorkflowXpsObjectModelTargetPackageNative.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../storage/xps/IXpsDocumentPackageTarget.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintWorkflowXpsObjectModelTargetPackageNative =
    '{7D96BC74-9B54-4CA1-AD3A-979C3D44DDAC}';

/// {@category Interface}
/// {@category com}
class IPrintWorkflowXpsObjectModelTargetPackageNative extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPrintWorkflowXpsObjectModelTargetPackageNative(Pointer<COMObject> ptr)
      : super(ptr);

  Pointer<COMObject> get DocumentPackageTarget {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
