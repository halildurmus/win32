// IMFObjectReferenceStream.dart

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
const IID_IMFObjectReferenceStream = '{09EF5BE3-C8A7-469E-8B70-73BF25BB193F}';

/// {@category Interface}
/// {@category com}
class IMFObjectReferenceStream extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFObjectReferenceStream(Pointer<COMObject> ptr) : super(ptr);

  int SaveReference(
    Pointer<GUID> riid,
    Pointer<COMObject> pUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> pUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        pUnk,
      );

  int LoadReference(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );
}
