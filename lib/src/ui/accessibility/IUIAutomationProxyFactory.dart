// IUIAutomationProxyFactory.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';

/// @nodoc
const IID_IUIAutomationProxyFactory = '{85B94ECD-849D-42B6-B94D-D6DB23FDF5A4}';

/// {@category Interface}
/// {@category com}
class IUIAutomationProxyFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationProxyFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateProvider(
    int hwnd,
    int idObject,
    int idChild,
    Pointer<Pointer<COMObject>> provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Int32 idObject,
            Int32 idChild,
            Pointer<Pointer<COMObject>> provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int idObject,
            int idChild,
            Pointer<Pointer<COMObject>> provider,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        idObject,
        idChild,
        provider,
      );

  Pointer<Utf16> get ProxyFactoryId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> factoryId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> factoryId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
