// IClassFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IClassFactory = '{00000001-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IClassFactory extends IUnknown {
  // vtable begins at 3, ends at 4
  IClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(Pointer<COMObject> pUnkOuter, Pointer<GUID> riid,
          Pointer<Pointer> ppvObject) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> pUnkOuter,
                          Pointer<GUID> riid, Pointer<Pointer> ppvObject)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pUnkOuter,
                  Pointer<GUID> riid,
                  Pointer<Pointer>
                      ppvObject)>()(ptr.ref.lpVtbl, pUnkOuter, riid, ppvObject);

  int LockServer(int fLock) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 fLock)>>>()
      .value
      .asFunction<int Function(Pointer, int fLock)>()(ptr.ref.lpVtbl, fLock);
}
