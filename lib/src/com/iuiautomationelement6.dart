// iuiautomationelement6.dart

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
import 'iuiautomationelement5.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement6 = '{4780d450-8bca-4977-afa5-a4a517f555e3}';

/// Extends the IUIAutomationElement5 interface to provide access to current
/// and cached full descriptions.
///
/// {@category com}
class IUIAutomationElement6 extends IUIAutomationElement5 {
  // vtable begins at 108, is 2 entries long.
  IUIAutomationElement6(super.ptr);

  factory IUIAutomationElement6.from(IUnknown interface) =>
      IUIAutomationElement6(interface.toInterface(IID_IUIAutomationElement6));

  Pointer<Utf16> get currentFullDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(108)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedFullDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(109)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
