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

typedef _Next_Native = Int32 Function(Pointer obj, Int32 lTimeout,
    Uint32 uCount, Pointer<Pointer> apObjects, Pointer<Uint32> puReturned);
typedef _Next_Dart = int Function(Pointer obj, int lTimeout, int uCount,
    Pointer<Pointer> apObjects, Pointer<Uint32> puReturned);

typedef _NextAsync_Native = Int32 Function(
    Pointer obj, Uint32 uCount, Pointer pSink);
typedef _NextAsync_Dart = int Function(Pointer obj, int uCount, Pointer pSink);

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppEnum);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<Pointer> ppEnum);

typedef _Skip_Native = Int32 Function(
    Pointer obj, Int32 lTimeout, Uint32 nCount);
typedef _Skip_Dart = int Function(Pointer obj, int lTimeout, int nCount);

/// {@category Interface}
/// {@category com}
class IEnumWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 7

  IEnumWbemClassObject(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => Pointer<NativeFunction<_Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl);

  int Next(int lTimeout, int uCount, Pointer<Pointer> apObjects,
          Pointer<Uint32> puReturned) =>
      Pointer<NativeFunction<_Next_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_Next_Dart>()(
          ptr.ref.lpVtbl, lTimeout, uCount, apObjects, puReturned);

  int NextAsync(int uCount, Pointer pSink) =>
      Pointer<NativeFunction<_NextAsync_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_NextAsync_Dart>()(ptr.ref.lpVtbl, uCount, pSink);

  int Clone(Pointer<Pointer> ppEnum) =>
      Pointer<NativeFunction<_Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppEnum);

  int Skip(int lTimeout, int nCount) =>
      Pointer<NativeFunction<_Skip_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_Skip_Dart>()(ptr.ref.lpVtbl, lTimeout, nCount);
}
