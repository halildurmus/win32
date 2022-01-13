// IInternetProtocolInfo.dart

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
import '../../../system/com/urlmon/structs.g.dart';

/// @nodoc
const IID_IInternetProtocolInfo = '{79EAC9EC-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetProtocolInfo extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IInternetProtocolInfo(Pointer<COMObject> ptr) : super(ptr);

  int ParseUrl(
    Pointer<Utf16> pwzUrl,
    int ParseAction,
    int dwParseFlags,
    Pointer<Utf16> pwzResult,
    int cchResult,
    Pointer<Uint32> pcchResult,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzUrl,
            Int32 ParseAction,
            Uint32 dwParseFlags,
            Pointer<Utf16> pwzResult,
            Uint32 cchResult,
            Pointer<Uint32> pcchResult,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzUrl,
            int ParseAction,
            int dwParseFlags,
            Pointer<Utf16> pwzResult,
            int cchResult,
            Pointer<Uint32> pcchResult,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwzUrl,
        ParseAction,
        dwParseFlags,
        pwzResult,
        cchResult,
        pcchResult,
        dwReserved,
      );

  int CombineUrl(
    Pointer<Utf16> pwzBaseUrl,
    Pointer<Utf16> pwzRelativeUrl,
    int dwCombineFlags,
    Pointer<Utf16> pwzResult,
    int cchResult,
    Pointer<Uint32> pcchResult,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzBaseUrl,
            Pointer<Utf16> pwzRelativeUrl,
            Uint32 dwCombineFlags,
            Pointer<Utf16> pwzResult,
            Uint32 cchResult,
            Pointer<Uint32> pcchResult,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzBaseUrl,
            Pointer<Utf16> pwzRelativeUrl,
            int dwCombineFlags,
            Pointer<Utf16> pwzResult,
            int cchResult,
            Pointer<Uint32> pcchResult,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwzBaseUrl,
        pwzRelativeUrl,
        dwCombineFlags,
        pwzResult,
        cchResult,
        pcchResult,
        dwReserved,
      );

  int CompareUrl(
    Pointer<Utf16> pwzUrl1,
    Pointer<Utf16> pwzUrl2,
    int dwCompareFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzUrl1,
            Pointer<Utf16> pwzUrl2,
            Uint32 dwCompareFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzUrl1,
            Pointer<Utf16> pwzUrl2,
            int dwCompareFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwzUrl1,
        pwzUrl2,
        dwCompareFlags,
      );

  int QueryInfo(
    Pointer<Utf16> pwzUrl,
    int OueryOption,
    int dwQueryFlags,
    Pointer pBuffer,
    int cbBuffer,
    Pointer<Uint32> pcbBuf,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzUrl,
            Int32 OueryOption,
            Uint32 dwQueryFlags,
            Pointer pBuffer,
            Uint32 cbBuffer,
            Pointer<Uint32> pcbBuf,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzUrl,
            int OueryOption,
            int dwQueryFlags,
            Pointer pBuffer,
            int cbBuffer,
            Pointer<Uint32> pcbBuf,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwzUrl,
        OueryOption,
        dwQueryFlags,
        pBuffer,
        cbBuffer,
        pcbBuf,
        dwReserved,
      );
}
