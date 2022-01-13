// IInternetSession.dart

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
import '../../../system/com/IClassFactory.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IBindCtx.dart';
import '../../../specialTypes.dart';
import '../../../system/com/urlmon/IInternetProtocol.dart';

/// @nodoc
const IID_IInternetSession = '{79EAC9E7-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetSession extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IInternetSession(Pointer<COMObject> ptr) : super(ptr);

  int RegisterNameSpace(
    Pointer<COMObject> pCF,
    Pointer<GUID> rclsid,
    Pointer<Utf16> pwzProtocol,
    int cPatterns,
    Pointer<Pointer<Utf16>> ppwzPatterns,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<GUID> rclsid,
            Pointer<Utf16> pwzProtocol,
            Uint32 cPatterns,
            Pointer<Pointer<Utf16>> ppwzPatterns,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<GUID> rclsid,
            Pointer<Utf16> pwzProtocol,
            int cPatterns,
            Pointer<Pointer<Utf16>> ppwzPatterns,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pCF,
        rclsid,
        pwzProtocol,
        cPatterns,
        ppwzPatterns,
        dwReserved,
      );

  int UnregisterNameSpace(
    Pointer<COMObject> pCF,
    Pointer<Utf16> pszProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<Utf16> pszProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<Utf16> pszProtocol,
          )>()(
        ptr.ref.lpVtbl,
        pCF,
        pszProtocol,
      );

  int RegisterMimeFilter(
    Pointer<COMObject> pCF,
    Pointer<GUID> rclsid,
    Pointer<Utf16> pwzType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<GUID> rclsid,
            Pointer<Utf16> pwzType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<GUID> rclsid,
            Pointer<Utf16> pwzType,
          )>()(
        ptr.ref.lpVtbl,
        pCF,
        rclsid,
        pwzType,
      );

  int UnregisterMimeFilter(
    Pointer<COMObject> pCF,
    Pointer<Utf16> pwzType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<Utf16> pwzType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCF,
            Pointer<Utf16> pwzType,
          )>()(
        ptr.ref.lpVtbl,
        pCF,
        pwzType,
      );

  int CreateBinding(
    Pointer<COMObject> pBC,
    Pointer<Utf16> szUrl,
    Pointer<COMObject> pUnkOuter,
    Pointer<Pointer<COMObject>> ppUnk,
    Pointer<Pointer<COMObject>> ppOInetProt,
    int dwOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBC,
            Pointer<Utf16> szUrl,
            Pointer<COMObject> pUnkOuter,
            Pointer<Pointer<COMObject>> ppUnk,
            Pointer<Pointer<COMObject>> ppOInetProt,
            Uint32 dwOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBC,
            Pointer<Utf16> szUrl,
            Pointer<COMObject> pUnkOuter,
            Pointer<Pointer<COMObject>> ppUnk,
            Pointer<Pointer<COMObject>> ppOInetProt,
            int dwOption,
          )>()(
        ptr.ref.lpVtbl,
        pBC,
        szUrl,
        pUnkOuter,
        ppUnk,
        ppOInetProt,
        dwOption,
      );

  int SetSessionOption(
    int dwOption,
    Pointer pBuffer,
    int dwBufferLength,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOption,
            Pointer pBuffer,
            Uint32 dwBufferLength,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOption,
            Pointer pBuffer,
            int dwBufferLength,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwOption,
        pBuffer,
        dwBufferLength,
        dwReserved,
      );

  int GetSessionOption(
    int dwOption,
    Pointer pBuffer,
    Pointer<Uint32> pdwBufferLength,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOption,
            Pointer pBuffer,
            Pointer<Uint32> pdwBufferLength,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOption,
            Pointer pBuffer,
            Pointer<Uint32> pdwBufferLength,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwOption,
        pBuffer,
        pdwBufferLength,
        dwReserved,
      );
}
