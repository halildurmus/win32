// ICertRequestD2.dart

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

import '../../../security/cryptography/certificates/ICertRequestD.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertRequestD2 = '{5422FD3A-D4B8-4CEF-A12E-E87D4CA22E90}';

/// {@category Interface}
/// {@category com}
class ICertRequestD2 extends ICertRequestD {
  // vtable begins at 6, is 4 entries long.
  ICertRequestD2(Pointer<COMObject> ptr) : super(ptr);

  int Request2(
    Pointer<Utf16> pwszAuthority,
    int dwFlags,
    Pointer<Utf16> pwszSerialNumber,
    Pointer<Uint32> pdwRequestId,
    Pointer<Uint32> pdwDisposition,
    Pointer<Utf16> pwszAttributes,
    Pointer<CERTTRANSBLOB> pctbRequest,
    Pointer<CERTTRANSBLOB> pctbFullResponse,
    Pointer<CERTTRANSBLOB> pctbEncodedCert,
    Pointer<CERTTRANSBLOB> pctbDispositionMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
            Uint32 dwFlags,
            Pointer<Utf16> pwszSerialNumber,
            Pointer<Uint32> pdwRequestId,
            Pointer<Uint32> pdwDisposition,
            Pointer<Utf16> pwszAttributes,
            Pointer<CERTTRANSBLOB> pctbRequest,
            Pointer<CERTTRANSBLOB> pctbFullResponse,
            Pointer<CERTTRANSBLOB> pctbEncodedCert,
            Pointer<CERTTRANSBLOB> pctbDispositionMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
            int dwFlags,
            Pointer<Utf16> pwszSerialNumber,
            Pointer<Uint32> pdwRequestId,
            Pointer<Uint32> pdwDisposition,
            Pointer<Utf16> pwszAttributes,
            Pointer<CERTTRANSBLOB> pctbRequest,
            Pointer<CERTTRANSBLOB> pctbFullResponse,
            Pointer<CERTTRANSBLOB> pctbEncodedCert,
            Pointer<CERTTRANSBLOB> pctbDispositionMessage,
          )>()(
        ptr.ref.lpVtbl,
        pwszAuthority,
        dwFlags,
        pwszSerialNumber,
        pdwRequestId,
        pdwDisposition,
        pwszAttributes,
        pctbRequest,
        pctbFullResponse,
        pctbEncodedCert,
        pctbDispositionMessage,
      );

  int GetCAProperty(
    Pointer<Utf16> pwszAuthority,
    int PropId,
    int PropIndex,
    int PropType,
    Pointer<CERTTRANSBLOB> pctbPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
            Int32 PropId,
            Int32 PropIndex,
            Int32 PropType,
            Pointer<CERTTRANSBLOB> pctbPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
            int PropId,
            int PropIndex,
            int PropType,
            Pointer<CERTTRANSBLOB> pctbPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszAuthority,
        PropId,
        PropIndex,
        PropType,
        pctbPropertyValue,
      );

  int GetCAPropertyInfo(
    Pointer<Utf16> pwszAuthority,
    Pointer<Int32> pcProperty,
    Pointer<CERTTRANSBLOB> pctbPropInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
            Pointer<Int32> pcProperty,
            Pointer<CERTTRANSBLOB> pctbPropInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszAuthority,
            Pointer<Int32> pcProperty,
            Pointer<CERTTRANSBLOB> pctbPropInfo,
          )>()(
        ptr.ref.lpVtbl,
        pwszAuthority,
        pcProperty,
        pctbPropInfo,
      );

  int Ping2(
    Pointer<Utf16> pwszAuthority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
