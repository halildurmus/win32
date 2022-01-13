// IBindProtocol.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IBindCtx.dart';
import '../../../system/com/IBinding.dart';

/// @nodoc
const IID_IBindProtocol = '{79EAC9CD-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IBindProtocol extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBindProtocol(Pointer<COMObject> ptr) : super(ptr);

  int CreateBinding(
    Pointer<Utf16> szUrl,
    Pointer<COMObject> pbc,
    Pointer<Pointer<COMObject>> ppb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szUrl,
            Pointer<COMObject> pbc,
            Pointer<Pointer<COMObject>> ppb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szUrl,
            Pointer<COMObject> pbc,
            Pointer<Pointer<COMObject>> ppb,
          )>()(
        ptr.ref.lpVtbl,
        szUrl,
        pbc,
        ppb,
      );
}
