// ITfPersistentPropertyLoaderACP.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfPersistentPropertyLoaderACP =
    '{4EF89150-0807-11D3-8DF0-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfPersistentPropertyLoaderACP extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfPersistentPropertyLoaderACP(Pointer<COMObject> ptr) : super(ptr);

  int LoadProperty(
    Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TF_PERSISTENT_PROPERTY_HEADER_ACP> pHdr,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        pHdr,
        ppStream,
      );
}
