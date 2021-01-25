// IClassFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../calloc.dart';
import '../constants.dart';
import '../constants_nodoc.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IClassFactory = '{00000001-0000-0000-C000-000000000046}';

typedef _CreateInstance_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pUnkOuter,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppvObject);
typedef _CreateInstance_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pUnkOuter,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppvObject);

typedef _LockServer_Native = Int32 Function(Pointer obj, Int32 fLock);
typedef _LockServer_Dart = int Function(Pointer obj, int fLock);

/// {@category Interface}
/// {@category com}
class IClassFactory extends IUnknown {
  // vtable begins at 3, ends at 4

  IClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(Pointer<COMObject> pUnkOuter, Pointer<GUID> riid,
          Pointer<IntPtr> ppvObject) =>
      Pointer<NativeFunction<_CreateInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_CreateInstance_Dart>()(
          ptr.ref.lpVtbl, pUnkOuter, riid, ppvObject);

  int LockServer(int fLock) =>
      Pointer<NativeFunction<_LockServer_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_LockServer_Dart>()(ptr.ref.lpVtbl, fLock);
}
