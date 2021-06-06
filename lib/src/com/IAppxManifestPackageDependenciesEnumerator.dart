// IAppxManifestPackageDependenciesEnumerator.dart

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
const IID_IAppxManifestPackageDependenciesEnumerator =
    '{B43BBCF9-65A6-42DD-BAC0-8C6741E7F5A4}';

typedef _GetCurrent_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> dependency);
typedef _GetCurrent_Dart = int Function(
    Pointer obj, Pointer<Pointer> dependency);

typedef _GetHasCurrent_Native = Int32 Function(
    Pointer obj, Pointer<Int32> hasCurrent);
typedef _GetHasCurrent_Dart = int Function(
    Pointer obj, Pointer<Int32> hasCurrent);

typedef _MoveNext_Native = Int32 Function(Pointer obj, Pointer<Int32> hasNext);
typedef _MoveNext_Dart = int Function(Pointer obj, Pointer<Int32> hasNext);

/// {@category Interface}
/// {@category com}
class IAppxManifestPackageDependenciesEnumerator extends IUnknown {
  // vtable begins at 3, ends at 5

  IAppxManifestPackageDependenciesEnumerator(Pointer<COMObject> ptr)
      : super(ptr);

  int GetCurrent(Pointer<Pointer> dependency) =>
      Pointer<NativeFunction<_GetCurrent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetCurrent_Dart>()(ptr.ref.lpVtbl, dependency);

  int GetHasCurrent(Pointer<Int32> hasCurrent) =>
      Pointer<NativeFunction<_GetHasCurrent_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetHasCurrent_Dart>()(ptr.ref.lpVtbl, hasCurrent);

  int MoveNext(Pointer<Int32> hasNext) =>
      Pointer<NativeFunction<_MoveNext_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_MoveNext_Dart>()(ptr.ref.lpVtbl, hasNext);
}
