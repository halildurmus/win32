// IClassFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IClassFactory = '{00000001-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IClassFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    Pointer<COMObject> pUnkOuter,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkOuter,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkOuter,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        pUnkOuter,
        riid,
        ppvObject,
      );

  int LockServer(
    int fLock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fLock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fLock,
          )>()(
        ptr.ref.lpVtbl,
        fLock,
      );
}
