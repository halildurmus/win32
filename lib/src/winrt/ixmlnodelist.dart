// ixmlnodelist.dart

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

import 'ixmlnode.dart';
import 'jsonarray.dart';
import '../com/iinspectable.dart';

/// @nodoc
const IID_IXmlNodeList = '{8C60AD77-83A4-4EC1-9C54-7BA429E13DA6}';

/// {@category Interface}
/// {@category winrt}
class IXmlNodeList extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IXmlNodeList(super.ptr);

  int get Length {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> Item(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Uint32 index, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int index, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }
}
