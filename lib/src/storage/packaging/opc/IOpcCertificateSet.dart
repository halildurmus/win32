// IOpcCertificateSet.dart

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
import '../../../security/cryptography/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/IOpcCertificateEnumerator.dart';

/// @nodoc
const IID_IOpcCertificateSet = '{56EA4325-8E2D-4167-B1A4-E486D24C8FA7}';

/// {@category Interface}
/// {@category com}
class IOpcCertificateSet extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOpcCertificateSet(Pointer<COMObject> ptr) : super(ptr);

  int Add(
    Pointer<CERT_CONTEXT> certificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CERT_CONTEXT> certificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CERT_CONTEXT> certificate,
          )>()(
        ptr.ref.lpVtbl,
        certificate,
      );

  int Remove(
    Pointer<CERT_CONTEXT> certificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CERT_CONTEXT> certificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CERT_CONTEXT> certificate,
          )>()(
        ptr.ref.lpVtbl,
        certificate,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> certificateEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        certificateEnumerator,
      );
}
