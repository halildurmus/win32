// IPrintWorkflowObjectModelSourceFileContentNative.dart

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
import '../../../system/winrt/printing/IPrintWorkflowXpsReceiver.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/xps/IXpsOMObjectFactory1.dart';

/// @nodoc
const IID_IPrintWorkflowObjectModelSourceFileContentNative =
    '{68C9E477-993E-4052-8AC6-454EFF58DB9D}';

/// {@category Interface}
/// {@category com}
class IPrintWorkflowObjectModelSourceFileContentNative extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPrintWorkflowObjectModelSourceFileContentNative(Pointer<COMObject> ptr)
      : super(ptr);

  int StartXpsOMGeneration(
    Pointer<COMObject> receiver,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> receiver,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> receiver,
          )>()(
        ptr.ref.lpVtbl,
        receiver,
      );

  Pointer<COMObject> get ObjectFactory {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
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
