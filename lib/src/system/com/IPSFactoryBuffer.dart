// IPSFactoryBuffer.dart

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
import '../../system/com/IRpcProxyBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IRpcStubBuffer.dart';

/// @nodoc
const IID_IPSFactoryBuffer = '{D5F569D0-593B-101A-B569-08002B2DBF7A}';

/// {@category Interface}
/// {@category com}
class IPSFactoryBuffer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPSFactoryBuffer(Pointer<COMObject> ptr) : super(ptr);

  int CreateProxy(
    Pointer<COMObject> pUnkOuter,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppProxy,
    Pointer<Pointer> ppv,
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
            Pointer<Pointer<COMObject>> ppProxy,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkOuter,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppProxy,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pUnkOuter,
        riid,
        ppProxy,
        ppv,
      );

  int CreateStub(
    Pointer<GUID> riid,
    Pointer<COMObject> pUnkServer,
    Pointer<Pointer<COMObject>> ppStub,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pUnkServer,
            Pointer<Pointer<COMObject>> ppStub,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pUnkServer,
            Pointer<Pointer<COMObject>> ppStub,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pUnkServer,
        ppStub,
      );
}
