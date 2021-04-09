// IAsyncOperation.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_IAsyncOperation = '{9FC2B0BB-E446-44E2-AA61-9CAB8F636AF2}';

typedef _put_Completed_Native = Int32 Function(Pointer obj, Pointer handler);
typedef _put_Completed_Dart = int Function(Pointer obj, Pointer handler);

typedef _get_Completed_Native = Int32 Function(Pointer obj, Pointer value);
typedef _get_Completed_Dart = int Function(Pointer obj, Pointer value);

typedef _GetResults_Native = Int32 Function(Pointer obj, Pointer result);
typedef _GetResults_Dart = int Function(Pointer obj, Pointer result);

/// {@category Interface}
/// {@category winrt}
class IAsyncOperation extends IInspectable {
  // vtable begins at 6, ends at 8

  IAsyncOperation(Pointer<COMObject> ptr) : super(ptr);

  set Completed(Pointer value) {
    final hr = Pointer<NativeFunction<_put_Completed_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<_put_Completed_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer get Completed {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = Pointer<NativeFunction<_get_Completed_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_get_Completed_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetResults(Pointer result) =>
      Pointer<NativeFunction<_GetResults_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetResults_Dart>()(ptr.ref.lpVtbl, result);
}
