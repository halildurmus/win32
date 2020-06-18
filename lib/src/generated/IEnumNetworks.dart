// IEnumNetworks.dart

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

import 'IDispatch.dart';

const IID_IEnumNetworks = '{DCB00003-570F-4A9B-8D69-199FDBA5723B}';

typedef get__NewEnum_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppEnumVar);
typedef get__NewEnum_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppEnumVar);

typedef Next_Native = Int32 Function(Pointer obj, Uint32 celt,
    Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched);
typedef Next_Dart = int Function(
    Pointer obj, int celt, Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched);

typedef Skip_Native = Int32 Function(Pointer obj, Uint32 celt);
typedef Skip_Dart = int Function(Pointer obj, int celt);

typedef Reset_Native = Int32 Function(Pointer obj);
typedef Reset_Dart = int Function(Pointer obj);

typedef Clone_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppEnumNetwork);
typedef Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppEnumNetwork);

class IEnumNetworks extends IDispatch {
  // vtable begins at 7, ends at 11

  @override
  Pointer<COMObject> ptr;

  IEnumNetworks(this.ptr) : super(ptr);

  int get NewEnum {
    final retValuePtr = allocate<IntPtr>();

    final hr = Pointer<NativeFunction<get__NewEnum_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<get__NewEnum_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int Next(int celt, Pointer<IntPtr> rgelt, Pointer<Uint32> pceltFetched) =>
      Pointer<NativeFunction<Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<Next_Dart>()(ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int Skip(int celt) => Pointer<NativeFunction<Skip_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(9).value)
      .asFunction<Skip_Dart>()(ptr.ref.lpVtbl, celt);

  int Reset() => Pointer<NativeFunction<Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(10).value)
      .asFunction<Reset_Dart>()(ptr.ref.lpVtbl);

  int Clone(Pointer<IntPtr> ppEnumNetwork) =>
      Pointer<NativeFunction<Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<Clone_Dart>()(ptr.ref.lpVtbl, ppEnumNetwork);
}
