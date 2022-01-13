// IMFSharingEngineClassFactory.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSharingEngineClassFactory =
    '{2BA61F92-8305-413B-9733-FAF15F259384}';

/// {@category Interface}
/// {@category com}
class IMFSharingEngineClassFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFSharingEngineClassFactory(Pointer<COMObject> ptr) : super(ptr);

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
