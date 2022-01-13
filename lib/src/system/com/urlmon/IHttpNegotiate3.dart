// IHttpNegotiate3.dart

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

import '../../../system/com/urlmon/IHttpNegotiate2.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IHttpNegotiate3 = '{57B6C80A-34C2-4602-BC26-66A02FC57153}';

/// {@category Interface}
/// {@category com}
class IHttpNegotiate3 extends IHttpNegotiate2 {
  // vtable begins at 6, is 1 entries long.
  IHttpNegotiate3(Pointer<COMObject> ptr) : super(ptr);

  int GetSerializedClientCertContext(
    Pointer<Pointer<Uint8>> ppbCert,
    Pointer<Uint32> pcbCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbCert,
            Pointer<Uint32> pcbCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbCert,
            Pointer<Uint32> pcbCert,
          )>()(
        ptr.ref.lpVtbl,
        ppbCert,
        pcbCert,
      );
}
