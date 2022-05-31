// igamepad2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import '../types.dart';
import '../winrt_callbacks.dart';
import '../winrt_helpers.dart';

import '../extensions/hstring_array.dart';

import 'igamepad.dart';
import 'igamecontroller.dart';
import '../com/iinspectable.dart';

/// @nodoc
const IID_IGamepad2 = '{3C1689BD-5915-4245-B0C0-C89FAE0308FF}';

/// {@category Interface}
/// {@category winrt}
class IGamepad2 extends IGamepad {
  // vtable begins at 6, is 1 entries long.
  IGamepad2(super.ptr);

  int GetButtonLabel(int button) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, Uint32 button, Pointer<Int32>)>>>()
              .value
              .asFunction<int Function(Pointer, int button, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, button, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
