// IEnumWbemClassObject.dart

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

import 'IUnknown.dart';

/// @nodoc
const IID_IEnumWbemClassObject = '{027947E1-D731-11CE-A357-000000000001}';

typedef _Reset_Native = Int32 Function(Pointer obj);
typedef _Reset_Dart = int Function(Pointer obj);

typedef _Next_Native = Int32 Function(
    Pointer obj,
    Int32 lTimeout,
    Uint32 uCount,
    Pointer<Pointer<COMObject>> apObjects,
    Pointer<Uint32> puReturned);
typedef _Next_Dart = int Function(Pointer obj, int lTimeout, int uCount,
    Pointer<Pointer<COMObject>> apObjects, Pointer<Uint32> puReturned);

typedef _NextAsync_Native = Int32 Function(
    Pointer obj, Uint32 uCount, Pointer<COMObject> pSink);
typedef _NextAsync_Dart = int Function(
    Pointer obj, int uCount, Pointer<COMObject> pSink);

typedef _Clone_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppEnum);
typedef _Clone_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> ppEnum);

typedef _Skip_Native = Int32 Function(
    Pointer obj, Int32 lTimeout, Uint32 nCount);
typedef _Skip_Dart = int Function(Pointer obj, int lTimeout, int nCount);

/// {@category Interface}
/// {@category com}
class IEnumWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 7

  IEnumWbemClassObject(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_Reset_Native>>>()
      .value
      .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl);

  int Next(int lTimeout, int uCount, Pointer<Pointer<COMObject>> apObjects,
          Pointer<Uint32> puReturned) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_Next_Native>>>()
              .value
              .asFunction<_Next_Dart>()(
          ptr.ref.lpVtbl, lTimeout, uCount, apObjects, puReturned);

  int NextAsync(int uCount, Pointer<COMObject> pSink) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_NextAsync_Native>>>()
      .value
      .asFunction<_NextAsync_Dart>()(ptr.ref.lpVtbl, uCount, pSink);

  int Clone(Pointer<Pointer<COMObject>> ppEnum) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Clone_Native>>>()
      .value
      .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppEnum);

  int Skip(int lTimeout, int nCount) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_Skip_Native>>>()
      .value
      .asFunction<_Skip_Dart>()(ptr.ref.lpVtbl, lTimeout, nCount);
}
