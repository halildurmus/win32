// IAsyncInfo.dart

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
const IID_IAsyncInfo = '{00000036-0000-0000-C000-000000000046}';

typedef _get_Id_Native = Int32 Function(Pointer obj, Pointer<Uint32> value);
typedef _get_Id_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _get_Status_Native = Int32 Function(Pointer obj, Pointer<Uint32> value);
typedef _get_Status_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _get_ErrorCode_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> value);
typedef _get_ErrorCode_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _Cancel_Native = Int32 Function(Pointer obj);
typedef _Cancel_Dart = int Function(Pointer obj);

typedef _Close_Native = Int32 Function(Pointer obj);
typedef _Close_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category winrt}
class IAsyncInfo extends IInspectable {
  // vtable begins at 6, ends at 10

  IAsyncInfo(Pointer<COMObject> ptr) : super(ptr);

  int get Id {
    final retValuePtr = calloc<Uint32>();

    final hr = Pointer<NativeFunction<_get_Id_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<_get_Id_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Status {
    final retValuePtr = calloc<Uint32>();

    final hr = Pointer<NativeFunction<_get_Status_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<_get_Status_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get ErrorCode {
    final retValuePtr = calloc<Uint32>();

    final hr = Pointer<NativeFunction<_get_ErrorCode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(8).value)
        .asFunction<_get_ErrorCode_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int Cancel() => Pointer<NativeFunction<_Cancel_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(9).value)
      .asFunction<_Cancel_Dart>()(ptr.ref.lpVtbl);

  int Close() => Pointer<NativeFunction<_Close_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(10).value)
      .asFunction<_Close_Dart>()(ptr.ref.lpVtbl);
}
