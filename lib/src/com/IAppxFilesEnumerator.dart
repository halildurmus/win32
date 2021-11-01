// IAppxFilesEnumerator.dart

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
const IID_IAppxFilesEnumerator = '{F007EEAF-9831-411C-9847-917CDC62D1FE}';

typedef _GetCurrent_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<COMObject>> file);
typedef _GetCurrent_Dart = int Function(
    Pointer obj, Pointer<Pointer<COMObject>> file);

typedef _GetHasCurrent_Native = Int32 Function(
    Pointer obj, Pointer<Int32> hasCurrent);
typedef _GetHasCurrent_Dart = int Function(
    Pointer obj, Pointer<Int32> hasCurrent);

typedef _MoveNext_Native = Int32 Function(Pointer obj, Pointer<Int32> hasNext);
typedef _MoveNext_Dart = int Function(Pointer obj, Pointer<Int32> hasNext);

/// {@category Interface}
/// {@category com}
class IAppxFilesEnumerator extends IUnknown {
  // vtable begins at 3, ends at 5

  IAppxFilesEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrent(Pointer<Pointer<COMObject>> file) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetCurrent_Native>>>()
      .value
      .asFunction<_GetCurrent_Dart>()(ptr.ref.lpVtbl, file);

  int GetHasCurrent(Pointer<Int32> hasCurrent) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetHasCurrent_Native>>>()
      .value
      .asFunction<_GetHasCurrent_Dart>()(ptr.ref.lpVtbl, hasCurrent);

  int MoveNext(Pointer<Int32> hasNext) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_MoveNext_Native>>>()
      .value
      .asFunction<_MoveNext_Dart>()(ptr.ref.lpVtbl, hasNext);
}
