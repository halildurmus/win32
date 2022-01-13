// IHttpNegotiate.dart

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
const IID_IHttpNegotiate = '{79EAC9D2-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IHttpNegotiate extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IHttpNegotiate(Pointer<COMObject> ptr) : super(ptr);

  int BeginningTransaction(
    Pointer<Utf16> szURL,
    Pointer<Utf16> szHeaders,
    int dwReserved,
    Pointer<Pointer<Utf16>> pszAdditionalHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szURL,
            Pointer<Utf16> szHeaders,
            Uint32 dwReserved,
            Pointer<Pointer<Utf16>> pszAdditionalHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szURL,
            Pointer<Utf16> szHeaders,
            int dwReserved,
            Pointer<Pointer<Utf16>> pszAdditionalHeaders,
          )>()(
        ptr.ref.lpVtbl,
        szURL,
        szHeaders,
        dwReserved,
        pszAdditionalHeaders,
      );

  int OnResponse(
    int dwResponseCode,
    Pointer<Utf16> szResponseHeaders,
    Pointer<Utf16> szRequestHeaders,
    Pointer<Pointer<Utf16>> pszAdditionalRequestHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwResponseCode,
            Pointer<Utf16> szResponseHeaders,
            Pointer<Utf16> szRequestHeaders,
            Pointer<Pointer<Utf16>> pszAdditionalRequestHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwResponseCode,
            Pointer<Utf16> szResponseHeaders,
            Pointer<Utf16> szRequestHeaders,
            Pointer<Pointer<Utf16>> pszAdditionalRequestHeaders,
          )>()(
        ptr.ref.lpVtbl,
        dwResponseCode,
        szResponseHeaders,
        szRequestHeaders,
        pszAdditionalRequestHeaders,
      );
}
