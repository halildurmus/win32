// IEnumVARIANT.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../specialTypes.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IEnumVARIANT = '{00020404-0000-0000-C000-000000000046}';

typedef _Next_Native = Int32 Function(Pointer obj, Uint32 celt,
    Pointer<VARIANT> rgVar, Pointer<Uint32> pCeltFetched);
typedef _Next_Dart = int Function(Pointer obj, int celt, Pointer<VARIANT> rgVar,
    Pointer<Uint32> pCeltFetched);

typedef _Skip_Native = Int32 Function(Pointer obj, Uint32 celt);
typedef _Skip_Dart = int Function(Pointer obj, int celt);

typedef _Reset_Native = Int32 Function(Pointer obj);
typedef _Reset_Dart = int Function(Pointer obj);

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppEnum);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<Pointer> ppEnum);

/// {@category Interface}
/// {@category com}
class IEnumVARIANT extends IUnknown {
  // vtable begins at 3, ends at 6

  IEnumVARIANT(Pointer<COMObject> ptr) : super(ptr);

  int Next(int celt, Pointer<VARIANT> rgVar, Pointer<Uint32> pCeltFetched) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_Next_Native>>>()
          .value
          .asFunction<_Next_Dart>()(ptr.ref.lpVtbl, celt, rgVar, pCeltFetched);

  int Skip(int celt) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_Skip_Native>>>()
      .value
      .asFunction<_Skip_Dart>()(ptr.ref.lpVtbl, celt);

  int Reset() => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_Reset_Native>>>()
      .value
      .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl);

  int Clone(Pointer<Pointer> ppEnum) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Clone_Native>>>()
      .value
      .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppEnum);
}
