// iapplicationdatastatics.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../../combase.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../utils.dart';
import '../../types.dart';
import '../../winrt_callbacks.dart';
import '../../winrt_helpers.dart';

import '../../extensions/hstring_array.dart';

import '../../winrt/storage/applicationdata.dart';
import '../../com/iinspectable.dart';

/// @nodoc
const IID_IApplicationDataStatics = '{5612147B-E843-45E3-94D8-06169E3C8E17}';

/// {@category Interface}
/// {@category winrt}
class IApplicationDataStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IApplicationDataStatics.from(super.ptr);

  Pointer<COMObject> get Current {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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
