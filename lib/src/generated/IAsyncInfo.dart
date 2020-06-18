// IAsyncInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../prototypes.dart';
import '../com/combase.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

const IID_IAsyncInfo = '{00000036-0000-0000-C000-000000000046}';

typedef get_Id_Native = Int32 Function(Pointer obj, Pointer<Uint32> id);
typedef get_Id_Dart = int Function(Pointer obj, Pointer<Uint32> id);

typedef get_Status_Native = Int32 Function(Pointer obj, Pointer<Int32> status);
typedef get_Status_Dart = int Function(Pointer obj, Pointer<Int32> status);

typedef get_ErrorCode_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> errorCode);
typedef get_ErrorCode_Dart = int Function(
    Pointer obj, Pointer<Uint32> errorCode);

typedef Cancel_Native = Int32 Function(Pointer obj);
typedef Cancel_Dart = int Function(Pointer obj);

typedef Close_Native = Int32 Function(Pointer obj);
typedef Close_Dart = int Function(Pointer obj);

class IAsyncInfo extends IInspectable {
  // vtable begins at 6, ends at 10

  @override
  Pointer<COMObject> ptr;

  IAsyncInfo(this.ptr) : super(ptr);

  int get Id {
    final retValuePtr = allocate<Uint32>();

    final hr = Pointer<NativeFunction<get_Id_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<get_Id_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Status {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Status_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<get_Status_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get ErrorCode {
    final retValuePtr = allocate<Uint32>();

    final hr = Pointer<NativeFunction<get_ErrorCode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(8).value)
        .asFunction<get_ErrorCode_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int Cancel() => Pointer<NativeFunction<Cancel_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(9).value)
      .asFunction<Cancel_Dart>()(ptr.ref.lpVtbl);

  int Close() => Pointer<NativeFunction<Close_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(10).value)
      .asFunction<Close_Dart>()(ptr.ref.lpVtbl);
}
