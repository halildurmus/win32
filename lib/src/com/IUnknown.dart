// IUnknown.dart

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

/// @nodoc
const IID_IUnknown = '{00000000-0000-0000-C000-000000000046}';

typedef _QueryInterface_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppvObject);
typedef _QueryInterface_Dart = int Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppvObject);

typedef _AddRef_Native = Uint32 Function(Pointer obj);
typedef _AddRef_Dart = int Function(Pointer obj);

typedef _Release_Native = Uint32 Function(Pointer obj);
typedef _Release_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IUnknown {
  // vtable begins at 0, ends at 2

  Pointer<COMObject> ptr;

  IUnknown(this.ptr);

  int QueryInterface(Pointer<GUID> riid, Pointer<Pointer> ppvObject) =>
      Pointer<NativeFunction<_QueryInterface_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(0).value)
          .asFunction<_QueryInterface_Dart>()(ptr.ref.lpVtbl, riid, ppvObject);

  int AddRef() => Pointer<NativeFunction<_AddRef_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(1).value)
      .asFunction<_AddRef_Dart>()(ptr.ref.lpVtbl);

  int Release() => Pointer<NativeFunction<_Release_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(2).value)
      .asFunction<_Release_Dart>()(ptr.ref.lpVtbl);
}
