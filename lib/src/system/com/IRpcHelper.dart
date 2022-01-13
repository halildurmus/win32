// IRpcHelper.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRpcHelper = '{00000149-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IRpcHelper extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRpcHelper(Pointer<COMObject> ptr) : super(ptr);

  int GetDCOMProtocolVersion(
    Pointer<Uint32> pComVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pComVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pComVersion,
          )>()(
        ptr.ref.lpVtbl,
        pComVersion,
      );

  int GetIIDFromOBJREF(
    Pointer pObjRef,
    Pointer<Pointer<GUID>> piid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pObjRef,
            Pointer<Pointer<GUID>> piid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pObjRef,
            Pointer<Pointer<GUID>> piid,
          )>()(
        ptr.ref.lpVtbl,
        pObjRef,
        piid,
      );
}
