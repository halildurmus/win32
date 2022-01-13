// IDesktopWindowXamlSourceNative.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDesktopWindowXamlSourceNative =
    '{3CBCF1BF-2F76-4E9C-96AB-E84B37972554}';

/// {@category Interface}
/// {@category com}
class IDesktopWindowXamlSourceNative extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDesktopWindowXamlSourceNative(Pointer<COMObject> ptr) : super(ptr);

  int AttachToWindow(
    int parentWnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr parentWnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int parentWnd,
          )>()(
        ptr.ref.lpVtbl,
        parentWnd,
      );

  int get WindowHandle {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> hWnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> hWnd,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
