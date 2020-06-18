// IEnumVARIANT.dart

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

import 'IUnknown.dart';

const IID_IEnumVARIANT = '{00020404-0000-0000-C000-000000000046}';

typedef Next_Native = Int32 Function(Pointer obj, Uint32 celt,
    Pointer<VARIANT_POINTER> rgVar, Pointer<Uint32> pCeltFetched);
typedef Next_Dart = int Function(Pointer obj, int celt,
    Pointer<VARIANT_POINTER> rgVar, Pointer<Uint32> pCeltFetched);

typedef Skip_Native = Int32 Function(Pointer obj, Uint32 celt);
typedef Skip_Dart = int Function(Pointer obj, int celt);

typedef Reset_Native = Int32 Function(Pointer obj);
typedef Reset_Dart = int Function(Pointer obj);

typedef Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppEnum);
typedef Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppEnum);

class IEnumVARIANT extends IUnknown {
  // vtable begins at 3, ends at 6

  @override
  Pointer<COMObject> ptr;

  IEnumVARIANT(this.ptr) : super(ptr);

  int Next(int celt, Pointer<VARIANT_POINTER> rgVar,
          Pointer<Uint32> pCeltFetched) =>
      Pointer<NativeFunction<Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<Next_Dart>()(ptr.ref.lpVtbl, celt, rgVar, pCeltFetched);

  int Skip(int celt) => Pointer<NativeFunction<Skip_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(4).value)
      .asFunction<Skip_Dart>()(ptr.ref.lpVtbl, celt);

  int Reset() => Pointer<NativeFunction<Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(5).value)
      .asFunction<Reset_Dart>()(ptr.ref.lpVtbl);

  int Clone(Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<Clone_Dart>()(ptr.ref.lpVtbl, ppEnum);
}
