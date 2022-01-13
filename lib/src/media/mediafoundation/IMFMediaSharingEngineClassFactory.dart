// IMFMediaSharingEngineClassFactory.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFMediaSharingEngine.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaSharingEngineClassFactory =
    '{524D2BC4-B2B1-4FE5-8FAC-FA4E4512B4E0}';

/// {@category Interface}
/// {@category com}
class IMFMediaSharingEngineClassFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaSharingEngineClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    int dwFlags,
    Pointer<COMObject> pAttr,
    Pointer<Pointer<COMObject>> ppEngine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pAttr,
            Pointer<Pointer<COMObject>> ppEngine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pAttr,
            Pointer<Pointer<COMObject>> ppEngine,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pAttr,
        ppEngine,
      );
}
