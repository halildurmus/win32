// IHttpNegotiate2.dart

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

import '../../../system/com/urlmon/IHttpNegotiate.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IHttpNegotiate2 = '{4F9F9FCB-E0F4-48EB-B7AB-FA2EA9365CB4}';

/// {@category Interface}
/// {@category com}
class IHttpNegotiate2 extends IHttpNegotiate {
  // vtable begins at 5, is 1 entries long.
  IHttpNegotiate2(Pointer<COMObject> ptr) : super(ptr);

  int GetRootSecurityId(
    Pointer<Uint8> pbSecurityId,
    Pointer<Uint32> pcbSecurityId,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSecurityId,
            Pointer<Uint32> pcbSecurityId,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pbSecurityId,
        pcbSecurityId,
        dwReserved,
      );
}
