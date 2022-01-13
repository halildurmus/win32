// IDirect3DDxgiInterfaceAccess.dart

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

/// @nodoc
const IID_IDirect3DDxgiInterfaceAccess =
    '{A9B3D012-3DF2-4EE3-B8D1-8695F457D3C1}';

/// {@category Interface}
/// {@category com}
class IDirect3DDxgiInterfaceAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirect3DDxgiInterfaceAccess(Pointer<COMObject> ptr) : super(ptr);

  int GetInterface(
    Pointer<GUID> iid,
    Pointer<Pointer> p,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> p,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> p,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        p,
      );
}
