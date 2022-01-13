// ICertRequestD.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertRequestD = '{D99E6E70-FC88-11D0-B498-00A0C90312F3}';

/// {@category Interface}
/// {@category com}
class ICertRequestD extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ICertRequestD(Pointer<COMObject> ptr) : super(ptr);

  int Request(
    int dwFlags,
    Pointer<Utf16> pwszAuthority,
    Pointer<Uint32> pdwRequestId,
    Pointer<Uint32> pdwDisposition,
    Pointer<Utf16> pwszAttributes,
    Pointer<CERTTRANSBLOB> pctbRequest,
    Pointer<CERTTRANSBLOB> pctbCertChain,
    Pointer<CERTTRANSBLOB> pctbEncodedCert,
    Pointer<CERTTRANSBLOB> pctbDispositionMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pwszAuthority,
            Pointer<Uint32> pdwRequestId,
            Pointer<Uint32> pdwDisposition,
            Pointer<Utf16> pwszAttributes,
            Pointer<CERTTRANSBLOB> pctbRequest,
            Pointer<CERTTRANSBLOB> pctbCertChain,
            Pointer<CERTTRANSBLOB> pctbEncodedCert,
            Pointer<CERTTRANSBLOB> pctbDispositionMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pwszAuthority,
            Pointer<Uint32> pdwRequestId,
            Pointer<Uint32> pdwDisposition,
            Pointer<Utf16> pwszAttributes,
            Pointer<CERTTRANSBLOB> pctbRequest,
            Pointer<CERTTRANSBLOB> pctbCertChain,
            Pointer<CERTTRANSBLOB> pctbEncodedCert,
            Pointer<CERTTRANSBLOB> pctbDispositionMessage,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pwszAuthority,
        pdwRequestId,
        pdwDisposition,
        pwszAttributes,
        pctbRequest,
        pctbCertChain,
        pctbEncodedCert,
        pctbDispositionMessage,
      );

  int GetCACert(
    int fchain,
    Pointer<Utf16> pwszAuthority,
    Pointer<CERTTRANSBLOB> pctbOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fchain,
            Pointer<Utf16> pwszAuthority,
            Pointer<CERTTRANSBLOB> pctbOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fchain,
            Pointer<Utf16> pwszAuthority,
            Pointer<CERTTRANSBLOB> pctbOut,
          )>()(
        ptr.ref.lpVtbl,
        fchain,
        pwszAuthority,
        pctbOut,
      );

  int Ping(
    Pointer<Utf16> pwszAuthority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
          )>()(
        ptr.ref.lpVtbl,
        pwszAuthority,
      );
}
