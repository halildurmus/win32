// IUserDataPathsStatics.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
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
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../winrt_helpers.dart';
import '../types.dart';

import '../extensions/hstring_array.dart';
import 'ivector.dart';
import 'ivectorview.dart';

import '../com/iinspectable.dart';

/// @nodoc
const IID_IUserDataPathsStatics = '{01B29DEF-E062-48A1-8B0C-F2C7A9CA56C0}';

/// {@category Interface}
/// {@category winrt}
class IUserDataPathsStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IUserDataPathsStatics(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> GetForUser(Pointer<COMObject> user) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> user,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> user, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, user.cast<Pointer<COMObject>>().value, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  Pointer<COMObject> GetDefault() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }
}
