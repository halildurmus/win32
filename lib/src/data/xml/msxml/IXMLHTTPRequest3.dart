// IXMLHTTPRequest3.dart

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

import '../../../data/xml/msxml/IXMLHTTPRequest2.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXMLHTTPRequest3 = '{A1C9FEEE-0617-4F23-9D58-8961EA43567C}';

/// {@category Interface}
/// {@category com}
class IXMLHTTPRequest3 extends IXMLHTTPRequest2 {
  // vtable begins at 13, is 1 entries long.
  IXMLHTTPRequest3(Pointer<COMObject> ptr) : super(ptr);

  int SetClientCertificate(
    int cbClientCertificateHash,
    Pointer<Uint8> pbClientCertificateHash,
    Pointer<Utf16> pwszPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbClientCertificateHash,
            Pointer<Uint8> pbClientCertificateHash,
            Pointer<Utf16> pwszPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbClientCertificateHash,
            Pointer<Uint8> pbClientCertificateHash,
            Pointer<Utf16> pwszPin,
          )>()(
        ptr.ref.lpVtbl,
        cbClientCertificateHash,
        pbClientCertificateHash,
        pwszPin,
      );
}
