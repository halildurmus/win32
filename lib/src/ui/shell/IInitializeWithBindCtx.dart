// IInitializeWithBindCtx.dart

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
import '../../system/com/IBindCtx.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInitializeWithBindCtx = '{71C0D2BC-726D-45CC-A6C0-2E31C1DB2159}';

/// {@category Interface}
/// {@category com}
class IInitializeWithBindCtx extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeWithBindCtx(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pbc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pbc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pbc,
          )>()(
        ptr.ref.lpVtbl,
        pbc,
      );
}
