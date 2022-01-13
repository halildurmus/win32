// IMFByteStreamProxyClassFactory.dart

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
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFByteStreamProxyClassFactory =
    '{A6B43F84-5C0A-42E8-A44D-B1857A76992F}';

/// {@category Interface}
/// {@category com}
class IMFByteStreamProxyClassFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFByteStreamProxyClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateByteStreamProxy(
    Pointer<COMObject> pByteStream,
    Pointer<COMObject> pAttributes,
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
            Pointer<COMObject> pByteStream,
            Pointer<COMObject> pAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<COMObject> pAttributes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
        pAttributes,
        riid,
        ppvObject,
      );
}
