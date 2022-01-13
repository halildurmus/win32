// IWSDSSLClientCertificate.dart

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
import '../../security/cryptography/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDSSLClientCertificate = '{DE105E87-A0DA-418E-98AD-27B9EED87BDC}';

/// {@category Interface}
/// {@category com}
class IWSDSSLClientCertificate extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWSDSSLClientCertificate(Pointer<COMObject> ptr) : super(ptr);

  int GetClientCertificate(
    Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
          )>()(
        ptr.ref.lpVtbl,
        ppCertContext,
      );

  int GetMappedAccessToken(
    Pointer<IntPtr> phToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phToken,
          )>()(
        ptr.ref.lpVtbl,
        phToken,
      );
}
