// iuiautomation2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iuiautomation.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation2 = '{34723aff-0c9d-49d0-9896-7ab52df8cd8a}';

/// {@category Interface}
/// {@category com}
class IUIAutomation2 extends IUIAutomation {
  // vtable begins at 58, is 6 entries long.
  IUIAutomation2(super.ptr);

  factory IUIAutomation2.from(IUnknown interface) =>
      IUIAutomation2(interface.toInterface(IID_IUIAutomation2));

  int get autoSetFocus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> autoSetFocus)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> autoSetFocus)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set autoSetFocus(int value) {
    final hr = ptr.ref.vtable
        .elementAt(59)
        .cast<
            Pointer<
                NativeFunction<Int32 Function(Pointer, Int32 autoSetFocus)>>>()
        .value
        .asFunction<
            int Function(Pointer, int autoSetFocus)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get connectionTimeout {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(60)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> timeout)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> timeout)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set connectionTimeout(int value) {
    final hr = ptr.ref.vtable
        .elementAt(61)
        .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, Uint32 timeout)>>>()
        .value
        .asFunction<
            int Function(Pointer, int timeout)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get transactionTimeout {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(62)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> timeout)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> timeout)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set transactionTimeout(int value) {
    final hr = ptr.ref.vtable
        .elementAt(63)
        .cast<
            Pointer<NativeFunction<Int32 Function(Pointer, Uint32 timeout)>>>()
        .value
        .asFunction<
            int Function(Pointer, int timeout)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_CUIAutomation8 = '{e22ad333-b25f-460c-83d0-0581107395c9}';

/// {@category com}
class CUIAutomation8 extends IUIAutomation2 {
  CUIAutomation8(super.ptr);

  factory CUIAutomation8.createInstance() => CUIAutomation8(
      COMObject.createFromID(CLSID_CUIAutomation8, IID_IUIAutomation2));
}
